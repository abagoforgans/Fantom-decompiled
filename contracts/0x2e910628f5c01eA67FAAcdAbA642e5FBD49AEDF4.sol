contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#
const MAXIMUM_REFERRAL_COMMISSION_RATE = 1000

const BONUS_MULTIPLIER = 1

const MAXIMUM_HARVEST_INTERVAL = (336 * 24 * 3600)


address owner;
address stor2;
address stor3;
uint256 stor4; offset 32
uint256 stor4;
array of struct sub_7e1d20cf;
address devAddress;
address feeAddress;
uint256 sub_923966cb;
uint256 stor9;
uint256 stor10;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 totalLockedUpRewards;
address sub_962e6b41Address;
mapping of struct stor17;
uint256 stor18;
uint16 referralCommissionRate;
uint256 stor19; offset 16
uint8 stor21;
array of address stor660301456019777184113296434797620819555017468543624515662331739614079884729;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884730;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884731;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884732;
array of uint16 stor660301456019777184113296434797620819555017468543624515662331739614079884733;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884734;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884735;

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
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280,
           poolInfo[arg1].field_1536
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function devAddress() payable {
    return devAddress
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

function sub_7e1d20cf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_7e1d20cf.length
    return sub_7e1d20cf[arg1].field_0, sub_7e1d20cf[arg1].field_256
}

function owner() payable {
    return owner
}

function sub_923966cb(?) payable {
    return sub_923966cb
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, 
           userInfo[arg1][arg2].field_256,
           userInfo[arg1][arg2].field_512,
           userInfo[arg1][arg2].field_768,
           userInfo[arg1][arg2].field_1024
}

function sub_962e6b41(?) payable {
    return sub_962e6b41Address
}

function referralCommissionRate() payable {
    return referralCommissionRate
}

function _fallback() payable {
    revert
}

function sub_dac12e77(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9 = arg1
}

function sub_f8b45b94(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10 = arg1
}

function sub_19a4dae3(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return block.timestamp >= userInfo[arg1][address(arg2)].field_1024
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function canHarvest(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return block.timestamp >= userInfo[arg1][address(arg2)].field_768
}

function setEnableStaking(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor19 = Mask(240, 0, arg1)
}

function sub_1e341e6c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_962e6b41Address = address(arg1)
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if feeAddress != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    if not arg1:
        revert with 0, 'setFeeAddress: ZERO'
    feeAddress = arg1
}

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devAddress != msg.sender:
        revert with 0, 'setDevAddress: FORBIDDEN'
    if not arg1:
        revert with 0, 'setDevAddress: ZERO'
    devAddress = arg1
}

function sub_e04527c9(?) payable {
    require calldata.size - 4 >= 32
    if uint256(stor4.field_0) > !arg1:
        revert with 0, 17
    uint256(stor4.field_0) += arg1
    stor17[stor18].field_0 = block.timestamp
    stor17[stor18].field_256 = uint256(stor4.field_0)
    if stor18 == -1:
        revert with 0, 17
    stor18++
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

function sub_1256e64e(?) payable {
    stor21 = 1
    startBlock = block.number
    idx = 0
    while idx < poolInfo.length:
        if idx >= poolInfo.length:
            revert with 0, 50
        mem[0] = 11
        if poolInfo[idx].field_512 > startBlock:
        else:
            poolInfo[idx].field_512 = startBlock
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function setReferralCommissionRate(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'setReferralCommissionRate: invalid referral commission rate basis points'
    referralCommissionRate = arg1
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < arg1:
        revert with 0, 17
    if not arg2 - arg1:
        return 0
    if arg2 - arg1 and 1 > -1 / arg2 - arg1:
        revert with 0, 17
    if not arg2 - arg1:
        revert with 0, 18
    if arg2 - arg1 / arg2 - arg1 != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return (arg2 - arg1)
}

function sub_7337bde9(?) payable {
    if 0 == uint256(stor4.field_0):
        return 0
    mem[96] = 0x7777ed4000000000000000000000000000000000000000000000000000000000
    mem[100] = uint256(stor4.field_0)
    mem[132] = stor2
    require ext_code.size(stor3)
    staticcall stor3.0x7777ed40 with:
            gas gas_remaining wei
           args uint256(stor4.field_0), stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96 len 4], Mask(224, 0, stor4.field_32)
    require mem[96 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
    require mem[96 len 4], Mask(224, 0, stor4.field_32) + 127 < return_data.size + 96
    _7 = mem[mem[96 len 4], Mask(224, 0, stor4.field_32) + 96]
    if mem[mem[96 len 4], Mask(224, 0, stor4.field_32) + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 0, stor4.field_32) + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 0, stor4.field_32) + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 0, stor4.field_32) + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _7
    require return_data.size >= _6 + (32 * _7) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _7] = mem[_6 + 128 len 32 * _7]
    if 1 >= _7:
        revert with 0, 50
    mem[mem[64]] = mem[ceil32(return_data.size) + 160]
    return memory
      from mem[64]
       len 32
}

function sub_1c0f28f6(?) payable {
    if block.timestamp < 24 * 3600:
        revert with 0, 17
    if stor18 < 1:
        revert with 0, 17
    s = stor18 - 1
    while block.timestamp - (24 * 3600) <= stor17[stor18].field_0:
        if not s:
            revert with 0, 17
        mem[0] = stor18
        mem[32] = 17
        s = s - 1
        continue 
    if uint256(stor4.field_0) < stor17[stor18].field_256:
        revert with 0, 17
    mem[96] = 0x7777ed4000000000000000000000000000000000000000000000000000000000
    mem[100] = uint256(stor4.field_0) - stor17[stor18].field_256
    mem[132] = stor2
    require ext_code.size(stor3)
    staticcall stor3.0x7777ed40 with:
            gas gas_remaining wei
           args uint256(stor4.field_0) - stor17[stor18].field_256, stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _19 = mem[96 len 4], Mask(224, 32, uint256(stor4.field_0) - stor17[stor18].field_256) >> 32
    require mem[96 len 4], Mask(224, 32, uint256(stor4.field_0) - stor17[stor18].field_256) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, uint256(stor4.field_0) - stor17[stor18].field_256) >> 32 + 127 < return_data.size + 96
    _20 = mem[mem[96 len 4], Mask(224, 32, uint256(stor4.field_0) - stor17[stor18].field_256) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, uint256(stor4.field_0) - stor17[stor18].field_256) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, uint256(stor4.field_0) - stor17[stor18].field_256) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, uint256(stor4.field_0) - stor17[stor18].field_256) >> 32 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, uint256(stor4.field_0) - stor17[stor18].field_256) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _20
    require return_data.size >= _19 + (32 * _20) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _20] = mem[_19 + 128 len 32 * _20]
    if 1 >= _20:
        revert with 0, 50
    mem[mem[64]] = mem[ceil32(return_data.size) + 160]
    return memory
      from mem[64]
       len 32
}

function sub_e1fdd9d2(?) payable {
    if not stor21:
        return 0
    if 168 * 24 * 3600 > !startBlock:
        revert with 0, 17
    if startBlock + (168 * 24 * 3600) >= block.number:
        if startBlock > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if block.number < startBlock:
            revert with 0, 17
        if not block.number - startBlock:
            return 0
        if block.number - startBlock and 1 > -1 / block.number - startBlock:
            revert with 0, 17
        if not block.number - startBlock:
            revert with 0, 18
        if block.number - startBlock / block.number - startBlock != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not block.number - startBlock:
            return 0
        if block.number - startBlock and 5 * 10^18 > -1 / block.number - startBlock:
            revert with 0, 17
        if not block.number - startBlock:
            revert with 0, 18
        if (5 * 10^18 * block.number) - (5 * 10^18 * startBlock) / block.number - startBlock != 5 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        return ((5 * 10^18 * block.number) - (5 * 10^18 * startBlock))
    if startBlock > startBlock + (168 * 24 * 3600):
        revert with 0, 'SafeMath: subtraction overflow'
    if startBlock + (168 * 24 * 3600) < startBlock:
        revert with 0, 17
    if startBlock + (168 * 24 * 3600) > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.number < startBlock + (168 * 24 * 3600):
        revert with 0, 17
    if block.number + -startBlock - (168 * 24 * 3600):
        if block.number + -startBlock - (168 * 24 * 3600) and 1 > -1 / block.number + -startBlock - (168 * 24 * 3600):
            revert with 0, 17
        if not block.number + -startBlock - (168 * 24 * 3600):
            revert with 0, 18
        if block.number + -startBlock - (168 * 24 * 3600) / block.number + -startBlock - (168 * 24 * 3600) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if block.number + -startBlock - (168 * 24 * 3600):
            if block.number + -startBlock - (168 * 24 * 3600) and sub_923966cb > -1 / block.number + -startBlock - (168 * 24 * 3600):
                revert with 0, 17
            if not block.number + -startBlock - (168 * 24 * 3600):
                revert with 0, 18
            if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) / block.number + -startBlock - (168 * 24 * 3600) != sub_923966cb:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if 840 * 10^18 * 24 * 3600 > !((-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb)):
                revert with 0, 17
            if (-604800 * sub_923966cb) + (block.number * sub_923966cb) + (-1 * startBlock * sub_923966cb) + (840 * 10^18 * 24 * 3600) < 840 * 10^18 * 24 * 3600:
                revert with 0, 'SafeMath: addition overflow'
    return (840 * 10^18 * 24 * 3600)
}

function sub_9f310346(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 2
    mem[64] = 192
    mem[128 len 64] = call.data[calldata.size len 64]
    if stor9 < sub_7e1d20cf.length:
        idx = 0
        while idx < stor9:
            if idx >= sub_7e1d20cf.length:
                revert with 0, 50
            mem[0] = 5
            if sub_7e1d20cf[idx].field_256 != address(arg1):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx < 10:
                if not uint256(stor4.field_0):
                    return 0
                if uint256(stor4.field_0) and 40 > -1 / uint256(stor4.field_0):
                    revert with 0, 17
                if not uint256(stor4.field_0):
                    revert with 0, 18
                if 40 * uint256(stor4.field_0) / uint256(stor4.field_0) != 40:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 40 * uint256(stor4.field_0) / 100 / 10:
                    return 0
                mem[192] = 0x7777ed4000000000000000000000000000000000000000000000000000000000
                mem[196] = 40 * uint256(stor4.field_0) / 100 / 10
                mem[228] = stor2
                require ext_code.size(stor3)
                staticcall stor3.0x7777ed40 with:
                        gas gas_remaining wei
                       args 40 * uint256(stor4.field_0) / 100 / 10, stor2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _86 = mem[192 len 4], Mask(224, 32, 40 * uint256(stor4.field_0) / 100 / 10) >> 32
                require mem[192 len 4], Mask(224, 32, 40 * uint256(stor4.field_0) / 100 / 10) >> 32 <= test266151307()
                require mem[192 len 4], Mask(224, 32, 40 * uint256(stor4.field_0) / 100 / 10) >> 32 + 223 < return_data.size + 192
                _94 = mem[mem[192 len 4], Mask(224, 32, 40 * uint256(stor4.field_0) / 100 / 10) >> 32 + 192]
                if mem[mem[192 len 4], Mask(224, 32, 40 * uint256(stor4.field_0) / 100 / 10) >> 32 + 192] > test266151307():
                    revert with 0, 65
                if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, 40 * uint256(stor4.field_0) / 100 / 10) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, 40 * uint256(stor4.field_0) / 100 / 10) >> 32 + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, 40 * uint256(stor4.field_0) / 100 / 10) >> 32 + 192]) + 193
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 40 * uint256(stor4.field_0) / 100 / 10) >> 32 + 192]
                require return_data.size >= _86 + (32 * _94) + 32
                s = _86 + 224
                t = ceil32(return_data.size) + 224
                idx = 0
                while idx < _94:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                if 1 >= _94:
                    revert with 0, 50
            else:
                if idx < 50:
                    if not uint256(stor4.field_0):
                        return 0
                    if uint256(stor4.field_0) and 35 > -1 / uint256(stor4.field_0):
                        revert with 0, 17
                    if not uint256(stor4.field_0):
                        revert with 0, 18
                    if 35 * uint256(stor4.field_0) / uint256(stor4.field_0) != 35:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 35 * uint256(stor4.field_0) / 100 / 40:
                        return 0
                    mem[192] = 0x7777ed4000000000000000000000000000000000000000000000000000000000
                    mem[196] = 35 * uint256(stor4.field_0) / 100 / 40
                    mem[228] = stor2
                    require ext_code.size(stor3)
                    staticcall stor3.0x7777ed40 with:
                            gas gas_remaining wei
                           args 35 * uint256(stor4.field_0) / 100 / 40, stor2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _88 = mem[192 len 4], Mask(224, 32, 35 * uint256(stor4.field_0) / 100 / 40) >> 32
                    require mem[192 len 4], Mask(224, 32, 35 * uint256(stor4.field_0) / 100 / 40) >> 32 <= test266151307()
                    require mem[192 len 4], Mask(224, 32, 35 * uint256(stor4.field_0) / 100 / 40) >> 32 + 223 < return_data.size + 192
                    _97 = mem[mem[192 len 4], Mask(224, 32, 35 * uint256(stor4.field_0) / 100 / 40) >> 32 + 192]
                    if mem[mem[192 len 4], Mask(224, 32, 35 * uint256(stor4.field_0) / 100 / 40) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, 35 * uint256(stor4.field_0) / 100 / 40) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, 35 * uint256(stor4.field_0) / 100 / 40) >> 32 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, 35 * uint256(stor4.field_0) / 100 / 40) >> 32 + 192]) + 193
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 35 * uint256(stor4.field_0) / 100 / 40) >> 32 + 192]
                    require return_data.size >= _88 + (32 * _97) + 32
                    s = _88 + 224
                    t = ceil32(return_data.size) + 224
                    idx = 0
                    while idx < _97:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx + 1
                        continue 
                    if 1 >= _97:
                        revert with 0, 50
                else:
                    if idx >= 100:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not uint256(stor4.field_0):
                        return 0
                    if uint256(stor4.field_0) and 25 > -1 / uint256(stor4.field_0):
                        revert with 0, 17
                    if not uint256(stor4.field_0):
                        revert with 0, 18
                    if 25 * uint256(stor4.field_0) / uint256(stor4.field_0) != 25:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 25 * uint256(stor4.field_0) / 100 / 50:
                        return 0
                    mem[192] = 0x7777ed4000000000000000000000000000000000000000000000000000000000
                    mem[196] = 25 * uint256(stor4.field_0) / 100 / 50
                    mem[228] = stor2
                    require ext_code.size(stor3)
                    staticcall stor3.0x7777ed40 with:
                            gas gas_remaining wei
                           args 25 * uint256(stor4.field_0) / 100 / 50, stor2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _91 = mem[192 len 4], Mask(224, 32, 25 * uint256(stor4.field_0) / 100 / 50) >> 32
                    require mem[192 len 4], Mask(224, 32, 25 * uint256(stor4.field_0) / 100 / 50) >> 32 <= test266151307()
                    require mem[192 len 4], Mask(224, 32, 25 * uint256(stor4.field_0) / 100 / 50) >> 32 + 223 < return_data.size + 192
                    _101 = mem[mem[192 len 4], Mask(224, 32, 25 * uint256(stor4.field_0) / 100 / 50) >> 32 + 192]
                    if mem[mem[192 len 4], Mask(224, 32, 25 * uint256(stor4.field_0) / 100 / 50) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, 25 * uint256(stor4.field_0) / 100 / 50) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, 25 * uint256(stor4.field_0) / 100 / 50) >> 32 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, 25 * uint256(stor4.field_0) / 100 / 50) >> 32 + 192]) + 193
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 25 * uint256(stor4.field_0) / 100 / 50) >> 32 + 192]
                    require return_data.size >= _91 + (32 * _101) + 32
                    s = _91 + 224
                    t = ceil32(return_data.size) + 224
                    idx = 0
                    while idx < _101:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx + 1
                        continue 
                    if 1 >= _101:
                        revert with 0, 50
            mem[mem[64]] = mem[ceil32(return_data.size) + 256]
            return memory
              from mem[64]
               len 32
        return 0
    else:
        return 0
}

function sub_386f3ec2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 2
    mem[64] = 192
    mem[128 len 64] = call.data[calldata.size len 64]
    if stor9 < sub_7e1d20cf.length:
        idx = 0
        while idx < stor9:
            if idx >= sub_7e1d20cf.length:
                revert with 0, 50
            mem[0] = 5
            if sub_7e1d20cf[idx].field_256 != address(arg1):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx < 10:
                if not uint256(stor4.field_0):
                    mem[128] = 0
                    mem[160] = 0
                    mem[192] = 32
                    idx = 0
                    s = 256
                    t = 128
                    while idx < 2:
                        mem[s] = mem[t]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return Array(len=2, data=mem[256 len 64])
                if uint256(stor4.field_0) and 40 > -1 / uint256(stor4.field_0):
                    revert with 0, 17
                if not uint256(stor4.field_0):
                    revert with 0, 18
                if 40 * uint256(stor4.field_0) / uint256(stor4.field_0) != 40:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 40 * uint256(stor4.field_0) / 100 / 10:
                    mem[128] = 0
                    mem[160] = 0
                    mem[192] = 32
                    idx = 0
                    s = 256
                    t = 128
                    while idx < 2:
                        mem[s] = mem[t]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return Array(len=2, data=mem[256 len 64])
                mem[192] = 0x7777ed4000000000000000000000000000000000000000000000000000000000
                mem[196] = 40 * uint256(stor4.field_0) / 100 / 10
                mem[228] = stor2
                require ext_code.size(stor3)
                staticcall stor3.0x7777ed40 with:
                        gas gas_remaining wei
                       args 40 * uint256(stor4.field_0) / 100 / 10, stor2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _88 = mem[192 len 4], Mask(224, 32, 40 * uint256(stor4.field_0) / 100 / 10) >> 32
                require mem[192 len 4], Mask(224, 32, 40 * uint256(stor4.field_0) / 100 / 10) >> 32 <= test266151307()
                require mem[192 len 4], Mask(224, 32, 40 * uint256(stor4.field_0) / 100 / 10) >> 32 + 223 < return_data.size + 192
                _96 = mem[mem[192 len 4], Mask(224, 32, 40 * uint256(stor4.field_0) / 100 / 10) >> 32 + 192]
                if mem[mem[192 len 4], Mask(224, 32, 40 * uint256(stor4.field_0) / 100 / 10) >> 32 + 192] > test266151307():
                    revert with 0, 65
                if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, 40 * uint256(stor4.field_0) / 100 / 10) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, 40 * uint256(stor4.field_0) / 100 / 10) >> 32 + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, 40 * uint256(stor4.field_0) / 100 / 10) >> 32 + 192]) + 193
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 40 * uint256(stor4.field_0) / 100 / 10) >> 32 + 192]
                require return_data.size >= _88 + (32 * _96) + 32
                s = _88 + 224
                t = ceil32(return_data.size) + 224
                idx = 0
                while idx < _96:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                _143 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _96
                idx = 0
                s = mem[64] + 64
                t = ceil32(return_data.size) + 224
                while idx < _96:
                    mem[s] = mem[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _143 + (32 * _96) + -mem[64] + 64
            if idx < 50:
                if not uint256(stor4.field_0):
                    mem[128] = 0
                    mem[160] = 0
                    mem[192] = 32
                    idx = 0
                    s = 256
                    t = 128
                    while idx < 2:
                        mem[s] = mem[t]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return Array(len=2, data=mem[256 len 64])
                if uint256(stor4.field_0) and 35 > -1 / uint256(stor4.field_0):
                    revert with 0, 17
                if not uint256(stor4.field_0):
                    revert with 0, 18
                if 35 * uint256(stor4.field_0) / uint256(stor4.field_0) != 35:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 35 * uint256(stor4.field_0) / 100 / 40:
                    mem[128] = 0
                    mem[160] = 0
                    mem[192] = 32
                    idx = 0
                    s = 256
                    t = 128
                    while idx < 2:
                        mem[s] = mem[t]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return Array(len=2, data=mem[256 len 64])
                mem[192] = 0x7777ed4000000000000000000000000000000000000000000000000000000000
                mem[196] = 35 * uint256(stor4.field_0) / 100 / 40
                mem[228] = stor2
                require ext_code.size(stor3)
                staticcall stor3.0x7777ed40 with:
                        gas gas_remaining wei
                       args 35 * uint256(stor4.field_0) / 100 / 40, stor2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _90 = mem[192 len 4], Mask(224, 32, 35 * uint256(stor4.field_0) / 100 / 40) >> 32
                require mem[192 len 4], Mask(224, 32, 35 * uint256(stor4.field_0) / 100 / 40) >> 32 <= test266151307()
                require mem[192 len 4], Mask(224, 32, 35 * uint256(stor4.field_0) / 100 / 40) >> 32 + 223 < return_data.size + 192
                _98 = mem[mem[192 len 4], Mask(224, 32, 35 * uint256(stor4.field_0) / 100 / 40) >> 32 + 192]
                if mem[mem[192 len 4], Mask(224, 32, 35 * uint256(stor4.field_0) / 100 / 40) >> 32 + 192] > test266151307():
                    revert with 0, 65
                if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, 35 * uint256(stor4.field_0) / 100 / 40) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, 35 * uint256(stor4.field_0) / 100 / 40) >> 32 + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, 35 * uint256(stor4.field_0) / 100 / 40) >> 32 + 192]) + 193
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 35 * uint256(stor4.field_0) / 100 / 40) >> 32 + 192]
                require return_data.size >= _90 + (32 * _98) + 32
                s = _90 + 224
                t = ceil32(return_data.size) + 224
                idx = 0
                while idx < _98:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                _142 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _98
                idx = 0
                s = mem[64] + 64
                t = ceil32(return_data.size) + 224
                while idx < _98:
                    mem[s] = mem[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _142 + (32 * _98) + -mem[64] + 64
            if idx >= 100:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not uint256(stor4.field_0):
                mem[128] = 0
                mem[160] = 0
                mem[192] = 32
                idx = 0
                s = 256
                t = 128
                while idx < 2:
                    mem[s] = mem[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return Array(len=2, data=mem[256 len 64])
            if uint256(stor4.field_0) and 25 > -1 / uint256(stor4.field_0):
                revert with 0, 17
            if not uint256(stor4.field_0):
                revert with 0, 18
            if 25 * uint256(stor4.field_0) / uint256(stor4.field_0) != 25:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 25 * uint256(stor4.field_0) / 100 / 50:
                mem[128] = 0
                mem[160] = 0
                mem[192] = 32
                idx = 0
                s = 256
                t = 128
                while idx < 2:
                    mem[s] = mem[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return Array(len=2, data=mem[256 len 64])
            mem[192] = 0x7777ed4000000000000000000000000000000000000000000000000000000000
            mem[196] = 25 * uint256(stor4.field_0) / 100 / 50
            mem[228] = stor2
            require ext_code.size(stor3)
            staticcall stor3.0x7777ed40 with:
                    gas gas_remaining wei
                   args 25 * uint256(stor4.field_0) / 100 / 50, stor2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _93 = mem[192 len 4], Mask(224, 32, 25 * uint256(stor4.field_0) / 100 / 50) >> 32
            require mem[192 len 4], Mask(224, 32, 25 * uint256(stor4.field_0) / 100 / 50) >> 32 <= test266151307()
            require mem[192 len 4], Mask(224, 32, 25 * uint256(stor4.field_0) / 100 / 50) >> 32 + 223 < return_data.size + 192
            _101 = mem[mem[192 len 4], Mask(224, 32, 25 * uint256(stor4.field_0) / 100 / 50) >> 32 + 192]
            if mem[mem[192 len 4], Mask(224, 32, 25 * uint256(stor4.field_0) / 100 / 50) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, 25 * uint256(stor4.field_0) / 100 / 50) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, 25 * uint256(stor4.field_0) / 100 / 50) >> 32 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, 25 * uint256(stor4.field_0) / 100 / 50) >> 32 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 25 * uint256(stor4.field_0) / 100 / 50) >> 32 + 192]
            require return_data.size >= _93 + (32 * _101) + 32
            s = _93 + 224
            t = ceil32(return_data.size) + 224
            idx = 0
            while idx < _101:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            _141 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _101
            idx = 0
            s = mem[64] + 64
            t = ceil32(return_data.size) + 224
            while idx < _101:
                mem[s] = mem[t]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _141 + (32 * _101) + -mem[64] + 64
    return ''
}

function sub_f4ad812f(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    mem[0] = address(arg2)
    mem[32] = sha3(arg1, 12)
    if block.timestamp >= userInfo[arg1][address(arg2)].field_1024:
        mem[96] = 2
        mem[64] = 192
        mem[128 len 64] = call.data[calldata.size len 64]
        if stor9 < sub_7e1d20cf.length:
            idx = 0
            while idx < stor9:
                if idx >= sub_7e1d20cf.length:
                    revert with 0, 50
                mem[0] = 5
                if sub_7e1d20cf[idx].field_256 != address(arg2):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if idx < 10:
                    if not uint256(stor4.field_0):
                        require ext_code.size(stor2)
                        call stor2.0xf9342f9b with:
                             gas gas_remaining wei
                            args 0, this.address, address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 > uint256(stor4.field_0):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if uint256(stor4.field_0) < 0:
                            revert with 0, 17
                        if block.timestamp > !stor10:
                            revert with 0, 17
                        if block.timestamp + stor10 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(arg2)].field_1024 = block.timestamp + stor10
                        return 0
                    if uint256(stor4.field_0) and 40 > -1 / uint256(stor4.field_0):
                        revert with 0, 17
                    if not uint256(stor4.field_0):
                        revert with 0, 18
                    if 40 * uint256(stor4.field_0) / uint256(stor4.field_0) != 40:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 40 * uint256(stor4.field_0) / 100 / 10:
                        require ext_code.size(stor2)
                        call stor2.0xf9342f9b with:
                             gas gas_remaining wei
                            args 0, this.address, address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 > uint256(stor4.field_0):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if uint256(stor4.field_0) < 0:
                            revert with 0, 17
                        if block.timestamp > !stor10:
                            revert with 0, 17
                        if block.timestamp + stor10 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(arg2)].field_1024 = block.timestamp + stor10
                        return 0
                    mem[192] = 0x7777ed4000000000000000000000000000000000000000000000000000000000
                    mem[196] = 40 * uint256(stor4.field_0) / 100 / 10
                    mem[228] = stor2
                    require ext_code.size(stor3)
                    staticcall stor3.0x7777ed40 with:
                            gas gas_remaining wei
                           args 40 * uint256(stor4.field_0) / 100 / 10, stor2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _154 = mem[192 len 4], Mask(224, 32, 40 * uint256(stor4.field_0) / 100 / 10) >> 32
                    require mem[192 len 4], Mask(224, 32, 40 * uint256(stor4.field_0) / 100 / 10) >> 32 <= test266151307()
                    require mem[192 len 4], Mask(224, 32, 40 * uint256(stor4.field_0) / 100 / 10) >> 32 + 223 < return_data.size + 192
                    _166 = mem[mem[192 len 4], Mask(224, 32, 40 * uint256(stor4.field_0) / 100 / 10) >> 32 + 192]
                    if mem[mem[192 len 4], Mask(224, 32, 40 * uint256(stor4.field_0) / 100 / 10) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, 40 * uint256(stor4.field_0) / 100 / 10) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, 40 * uint256(stor4.field_0) / 100 / 10) >> 32 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, 40 * uint256(stor4.field_0) / 100 / 10) >> 32 + 192]) + 193
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 40 * uint256(stor4.field_0) / 100 / 10) >> 32 + 192]
                    require return_data.size >= _154 + (32 * _166) + 32
                    s = _154 + 224
                    t = ceil32(return_data.size) + 224
                    idx = 0
                    while idx < _166:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx + 1
                        continue 
                    if 0 >= _166:
                        revert with 0, 50
                    _286 = mem[ceil32(return_data.size) + 224]
                    mem[mem[64]] = 0xf9342f9b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _286
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = address(arg2)
                    require ext_code.size(stor2)
                    call stor2.0xf9342f9b with:
                         gas gas_remaining wei
                        args _286, this.address, address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= _166:
                        revert with 0, 50
                    if mem[ceil32(return_data.size) + 224] > uint256(stor4.field_0):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if uint256(stor4.field_0) < mem[ceil32(return_data.size) + 224]:
                        revert with 0, 17
                    uint256(stor4.field_0) -= mem[ceil32(return_data.size) + 224]
                    if block.timestamp > !stor10:
                        revert with 0, 17
                    if block.timestamp + stor10 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][address(arg2)].field_1024 = block.timestamp + stor10
                    if 1 >= _166:
                        revert with 0, 50
                else:
                    if idx < 50:
                        if not uint256(stor4.field_0):
                            require ext_code.size(stor2)
                            call stor2.0xf9342f9b with:
                                 gas gas_remaining wei
                                args 0, this.address, address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 > uint256(stor4.field_0):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if uint256(stor4.field_0) < 0:
                                revert with 0, 17
                            if block.timestamp > !stor10:
                                revert with 0, 17
                            if block.timestamp + stor10 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][address(arg2)].field_1024 = block.timestamp + stor10
                            return 0
                        if uint256(stor4.field_0) and 35 > -1 / uint256(stor4.field_0):
                            revert with 0, 17
                        if not uint256(stor4.field_0):
                            revert with 0, 18
                        if 35 * uint256(stor4.field_0) / uint256(stor4.field_0) != 35:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 35 * uint256(stor4.field_0) / 100 / 40:
                            require ext_code.size(stor2)
                            call stor2.0xf9342f9b with:
                                 gas gas_remaining wei
                                args 0, this.address, address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 > uint256(stor4.field_0):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if uint256(stor4.field_0) < 0:
                                revert with 0, 17
                            if block.timestamp > !stor10:
                                revert with 0, 17
                            if block.timestamp + stor10 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][address(arg2)].field_1024 = block.timestamp + stor10
                            return 0
                        mem[192] = 0x7777ed4000000000000000000000000000000000000000000000000000000000
                        mem[196] = 35 * uint256(stor4.field_0) / 100 / 40
                        mem[228] = stor2
                        require ext_code.size(stor3)
                        staticcall stor3.0x7777ed40 with:
                                gas gas_remaining wei
                               args 35 * uint256(stor4.field_0) / 100 / 40, stor2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _158 = mem[192 len 4], Mask(224, 32, 35 * uint256(stor4.field_0) / 100 / 40) >> 32
                        require mem[192 len 4], Mask(224, 32, 35 * uint256(stor4.field_0) / 100 / 40) >> 32 <= test266151307()
                        require mem[192 len 4], Mask(224, 32, 35 * uint256(stor4.field_0) / 100 / 40) >> 32 + 223 < return_data.size + 192
                        _171 = mem[mem[192 len 4], Mask(224, 32, 35 * uint256(stor4.field_0) / 100 / 40) >> 32 + 192]
                        if mem[mem[192 len 4], Mask(224, 32, 35 * uint256(stor4.field_0) / 100 / 40) >> 32 + 192] > test266151307():
                            revert with 0, 65
                        if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, 35 * uint256(stor4.field_0) / 100 / 40) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, 35 * uint256(stor4.field_0) / 100 / 40) >> 32 + 192]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, 35 * uint256(stor4.field_0) / 100 / 40) >> 32 + 192]) + 193
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 35 * uint256(stor4.field_0) / 100 / 40) >> 32 + 192]
                        require return_data.size >= _158 + (32 * _171) + 32
                        s = _158 + 224
                        t = ceil32(return_data.size) + 224
                        idx = 0
                        while idx < _171:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx + 1
                            continue 
                        if 0 >= _171:
                            revert with 0, 50
                        _285 = mem[ceil32(return_data.size) + 224]
                        mem[mem[64]] = 0xf9342f9b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _285
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = address(arg2)
                        require ext_code.size(stor2)
                        call stor2.0xf9342f9b with:
                             gas gas_remaining wei
                            args _285, this.address, address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 >= _171:
                            revert with 0, 50
                        if mem[ceil32(return_data.size) + 224] > uint256(stor4.field_0):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if uint256(stor4.field_0) < mem[ceil32(return_data.size) + 224]:
                            revert with 0, 17
                        uint256(stor4.field_0) -= mem[ceil32(return_data.size) + 224]
                        if block.timestamp > !stor10:
                            revert with 0, 17
                        if block.timestamp + stor10 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(arg2)].field_1024 = block.timestamp + stor10
                        if 1 >= _171:
                            revert with 0, 50
                    else:
                        if idx >= 100:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not uint256(stor4.field_0):
                            require ext_code.size(stor2)
                            call stor2.0xf9342f9b with:
                                 gas gas_remaining wei
                                args 0, this.address, address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 > uint256(stor4.field_0):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if uint256(stor4.field_0) < 0:
                                revert with 0, 17
                            if block.timestamp > !stor10:
                                revert with 0, 17
                            if block.timestamp + stor10 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][address(arg2)].field_1024 = block.timestamp + stor10
                            return 0
                        if uint256(stor4.field_0) and 25 > -1 / uint256(stor4.field_0):
                            revert with 0, 17
                        if not uint256(stor4.field_0):
                            revert with 0, 18
                        if 25 * uint256(stor4.field_0) / uint256(stor4.field_0) != 25:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 25 * uint256(stor4.field_0) / 100 / 50:
                            require ext_code.size(stor2)
                            call stor2.0xf9342f9b with:
                                 gas gas_remaining wei
                                args 0, this.address, address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 > uint256(stor4.field_0):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if uint256(stor4.field_0) < 0:
                                revert with 0, 17
                            if block.timestamp > !stor10:
                                revert with 0, 17
                            if block.timestamp + stor10 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][address(arg2)].field_1024 = block.timestamp + stor10
                            return 0
                        mem[192] = 0x7777ed4000000000000000000000000000000000000000000000000000000000
                        mem[196] = 25 * uint256(stor4.field_0) / 100 / 50
                        mem[228] = stor2
                        require ext_code.size(stor3)
                        staticcall stor3.0x7777ed40 with:
                                gas gas_remaining wei
                               args 25 * uint256(stor4.field_0) / 100 / 50, stor2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _162 = mem[192 len 4], Mask(224, 32, 25 * uint256(stor4.field_0) / 100 / 50) >> 32
                        require mem[192 len 4], Mask(224, 32, 25 * uint256(stor4.field_0) / 100 / 50) >> 32 <= test266151307()
                        require mem[192 len 4], Mask(224, 32, 25 * uint256(stor4.field_0) / 100 / 50) >> 32 + 223 < return_data.size + 192
                        _177 = mem[mem[192 len 4], Mask(224, 32, 25 * uint256(stor4.field_0) / 100 / 50) >> 32 + 192]
                        if mem[mem[192 len 4], Mask(224, 32, 25 * uint256(stor4.field_0) / 100 / 50) >> 32 + 192] > test266151307():
                            revert with 0, 65
                        if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, 25 * uint256(stor4.field_0) / 100 / 50) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, 25 * uint256(stor4.field_0) / 100 / 50) >> 32 + 192]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, 25 * uint256(stor4.field_0) / 100 / 50) >> 32 + 192]) + 193
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 25 * uint256(stor4.field_0) / 100 / 50) >> 32 + 192]
                        require return_data.size >= _162 + (32 * _177) + 32
                        s = _162 + 224
                        t = ceil32(return_data.size) + 224
                        idx = 0
                        while idx < _177:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx + 1
                            continue 
                        if 0 >= _177:
                            revert with 0, 50
                        _284 = mem[ceil32(return_data.size) + 224]
                        mem[mem[64]] = 0xf9342f9b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _284
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = address(arg2)
                        require ext_code.size(stor2)
                        call stor2.0xf9342f9b with:
                             gas gas_remaining wei
                            args _284, this.address, address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 >= _177:
                            revert with 0, 50
                        if mem[ceil32(return_data.size) + 224] > uint256(stor4.field_0):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if uint256(stor4.field_0) < mem[ceil32(return_data.size) + 224]:
                            revert with 0, 17
                        uint256(stor4.field_0) -= mem[ceil32(return_data.size) + 224]
                        if block.timestamp > !stor10:
                            revert with 0, 17
                        if block.timestamp + stor10 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(arg2)].field_1024 = block.timestamp + stor10
                        if 1 >= _177:
                            revert with 0, 50
                mem[mem[64]] = mem[ceil32(return_data.size) + 256]
                return memory
                  from mem[64]
                   len 32
        require ext_code.size(stor2)
        call stor2.0xf9342f9b with:
             gas gas_remaining wei
            args 0, this.address, address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 0 > uint256(stor4.field_0):
            revert with 0, 'SafeMath: subtraction overflow'
        if uint256(stor4.field_0) < 0:
            revert with 0, 17
        if block.timestamp > !stor10:
            revert with 0, 17
        if block.timestamp + stor10 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        userInfo[arg1][address(arg2)].field_1024 = block.timestamp + stor10
        return 0
    else:
        return 0
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
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
                if not stor21:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        revert with 0, 18
                    require ext_code.size(stor2)
                    call stor2.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                            revert with 0, 17
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                            revert with 0, 17
                        if not 0 / totalAllocPoint:
                            revert with 0, 18
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                            revert with 0, 17
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if arg1 >= poolInfo.length:
                        revert with 0, 50
                    if 168 * 24 * 3600 > !startBlock:
                        revert with 0, 17
                    if poolInfo[arg1].field_512 > startBlock + (168 * 24 * 3600):
                        if poolInfo[arg1].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.number < poolInfo[arg1].field_512:
                            revert with 0, 17
                        if not block.number - poolInfo[arg1].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                revert with 0, 18
                            require ext_code.size(stor2)
                            call stor2.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                    revert with 0, 17
                                if not 0 / totalAllocPoint:
                                    revert with 0, 18
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if block.number - poolInfo[arg1].field_512 and 1 > -1 / block.number - poolInfo[arg1].field_512:
                                revert with 0, 17
                            if not block.number - poolInfo[arg1].field_512:
                                revert with 0, 18
                            if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not block.number - poolInfo[arg1].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    revert with 0, 18
                                require ext_code.size(stor2)
                                call stor2.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        revert with 0, 18
                                    if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                        revert with 0, 17
                                    if not 0 / totalAllocPoint:
                                        revert with 0, 18
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        revert with 0, 18
                                    if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if block.number - poolInfo[arg1].field_512 and sub_923966cb > -1 / block.number - poolInfo[arg1].field_512:
                                    revert with 0, 17
                                if not block.number - poolInfo[arg1].field_512:
                                    revert with 0, 18
                                if (block.number * sub_923966cb) - (poolInfo[arg1].field_512 * sub_923966cb) / block.number - poolInfo[arg1].field_512 != sub_923966cb:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.number * sub_923966cb) - (poolInfo[arg1].field_512 * sub_923966cb):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    require ext_code.size(stor2)
                                    call stor2.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            revert with 0, 18
                                        if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                                            revert with 0, 17
                                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                            revert with 0, 17
                                        if not 0 / totalAllocPoint:
                                            revert with 0, 18
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            revert with 0, 18
                                        if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                                            revert with 0, 17
                                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (block.number * sub_923966cb) - (poolInfo[arg1].field_512 * sub_923966cb) and poolInfo[arg1].field_256 > -1 / (block.number * sub_923966cb) - (poolInfo[arg1].field_512 * sub_923966cb):
                                        revert with 0, 17
                                    if not (block.number * sub_923966cb) - (poolInfo[arg1].field_512 * sub_923966cb):
                                        revert with 0, 18
                                    if (block.number * sub_923966cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_923966cb * poolInfo[arg1].field_256) / (block.number * sub_923966cb) - (poolInfo[arg1].field_512 * sub_923966cb) != poolInfo[arg1].field_256:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    require ext_code.size(stor2)
                                    call stor2.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, (block.number * sub_923966cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_923966cb * poolInfo[arg1].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_923966cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_923966cb * poolInfo[arg1].field_256) / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            revert with 0, 18
                                        if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                                            revert with 0, 17
                                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if (block.number * sub_923966cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_923966cb * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sub_923966cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_923966cb * poolInfo[arg1].field_256) / totalAllocPoint:
                                            revert with 0, 17
                                        if not (block.number * sub_923966cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_923966cb * poolInfo[arg1].field_256) / totalAllocPoint:
                                            revert with 0, 18
                                        if 10^12 * (block.number * sub_923966cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_923966cb * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_923966cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_923966cb * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            revert with 0, 18
                                        if poolInfo[arg1].field_768 > !(10^12 * (block.number * sub_923966cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_923966cb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                                            revert with 0, 17
                                        if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_923966cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_923966cb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^12 * (block.number * sub_923966cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_923966cb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if startBlock + (168 * 24 * 3600) >= block.number:
                            if poolInfo[arg1].field_512 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.number < poolInfo[arg1].field_512:
                                revert with 0, 17
                            if not block.number - poolInfo[arg1].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    revert with 0, 18
                                require ext_code.size(stor2)
                                call stor2.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        revert with 0, 18
                                    if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                        revert with 0, 17
                                    if not 0 / totalAllocPoint:
                                        revert with 0, 18
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        revert with 0, 18
                                    if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if block.number - poolInfo[arg1].field_512 and 1 > -1 / block.number - poolInfo[arg1].field_512:
                                    revert with 0, 17
                                if not block.number - poolInfo[arg1].field_512:
                                    revert with 0, 18
                                if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not block.number - poolInfo[arg1].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    require ext_code.size(stor2)
                                    call stor2.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            revert with 0, 18
                                        if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                                            revert with 0, 17
                                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                            revert with 0, 17
                                        if not 0 / totalAllocPoint:
                                            revert with 0, 18
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            revert with 0, 18
                                        if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                                            revert with 0, 17
                                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if block.number - poolInfo[arg1].field_512 and 5 * 10^18 > -1 / block.number - poolInfo[arg1].field_512:
                                        revert with 0, 17
                                    if not block.number - poolInfo[arg1].field_512:
                                        revert with 0, 18
                                    if (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_512 != 5 * 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[arg1].field_512):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 0, 18
                                        require ext_code.size(stor2)
                                        call stor2.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                revert with 0, 17
                                            if not 0 / totalAllocPoint:
                                                revert with 0, 18
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[arg1].field_512) and poolInfo[arg1].field_256 > -1 / (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[arg1].field_512):
                                            revert with 0, 17
                                        if not (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[arg1].field_512):
                                            revert with 0, 18
                                        if (5 * 10^18 * block.number * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[arg1].field_512) != poolInfo[arg1].field_256:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 0, 18
                                        require ext_code.size(stor2)
                                        call stor2.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, (5 * 10^18 * block.number * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (5 * 10^18 * block.number * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if (5 * 10^18 * block.number * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (5 * 10^18 * block.number * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint:
                                                revert with 0, 17
                                            if not (5 * 10^18 * block.number * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint:
                                                revert with 0, 18
                                            if 10^12 * (5 * 10^18 * block.number * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / (5 * 10^18 * block.number * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_768 > !(10^12 * (5 * 10^18 * block.number * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_768 + (10^12 * (5 * 10^18 * block.number * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^12 * (5 * 10^18 * block.number * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if poolInfo[arg1].field_512 > startBlock + (168 * 24 * 3600):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if startBlock + (168 * 24 * 3600) < poolInfo[arg1].field_512:
                                revert with 0, 17
                            if not startBlock + -poolInfo[arg1].field_512 + (168 * 24 * 3600):
                                if startBlock + (168 * 24 * 3600) > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.number < startBlock + (168 * 24 * 3600):
                                    revert with 0, 17
                                if block.number + -startBlock - (168 * 24 * 3600):
                                    if block.number + -startBlock - (168 * 24 * 3600) and 1 > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                        revert with 0, 17
                                    if not block.number + -startBlock - (168 * 24 * 3600):
                                        revert with 0, 18
                                    if block.number + -startBlock - (168 * 24 * 3600) / block.number + -startBlock - (168 * 24 * 3600) != 1:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if block.number + -startBlock - (168 * 24 * 3600):
                                        if block.number + -startBlock - (168 * 24 * 3600) and sub_923966cb > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                            revert with 0, 17
                                        if not block.number + -startBlock - (168 * 24 * 3600):
                                            revert with 0, 18
                                        if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) / block.number + -startBlock - (168 * 24 * 3600) != sub_923966cb:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 0 > !((-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb)):
                                            revert with 0, 17
                                        if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    revert with 0, 18
                                require ext_code.size(stor2)
                                call stor2.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        revert with 0, 18
                                    if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                        revert with 0, 17
                                    if not 0 / totalAllocPoint:
                                        revert with 0, 18
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        revert with 0, 18
                                    if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if startBlock + -poolInfo[arg1].field_512 + (168 * 24 * 3600) and 1 > -1 / startBlock + -poolInfo[arg1].field_512 + (168 * 24 * 3600):
                                    revert with 0, 17
                                if not startBlock + -poolInfo[arg1].field_512 + (168 * 24 * 3600):
                                    revert with 0, 18
                                if startBlock + -poolInfo[arg1].field_512 + (168 * 24 * 3600) / startBlock + -poolInfo[arg1].field_512 + (168 * 24 * 3600) != 1:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not startBlock + -poolInfo[arg1].field_512 + (168 * 24 * 3600):
                                    if startBlock + (168 * 24 * 3600) > block.number:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.number < startBlock + (168 * 24 * 3600):
                                        revert with 0, 17
                                    if block.number + -startBlock - (168 * 24 * 3600):
                                        if block.number + -startBlock - (168 * 24 * 3600) and 1 > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                            revert with 0, 17
                                        if not block.number + -startBlock - (168 * 24 * 3600):
                                            revert with 0, 18
                                        if block.number + -startBlock - (168 * 24 * 3600) / block.number + -startBlock - (168 * 24 * 3600) != 1:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if block.number + -startBlock - (168 * 24 * 3600):
                                            if block.number + -startBlock - (168 * 24 * 3600) and sub_923966cb > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                                revert with 0, 17
                                            if not block.number + -startBlock - (168 * 24 * 3600):
                                                revert with 0, 18
                                            if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) / block.number + -startBlock - (168 * 24 * 3600) != sub_923966cb:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 0 > !((-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb)):
                                                revert with 0, 17
                                            if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    require ext_code.size(stor2)
                                    call stor2.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            revert with 0, 18
                                        if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                                            revert with 0, 17
                                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                            revert with 0, 17
                                        if not 0 / totalAllocPoint:
                                            revert with 0, 18
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            revert with 0, 18
                                        if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                                            revert with 0, 17
                                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if startBlock + -poolInfo[arg1].field_512 + (168 * 24 * 3600) and 5 * 10^18 > -1 / startBlock + -poolInfo[arg1].field_512 + (168 * 24 * 3600):
                                        revert with 0, 17
                                    if not startBlock + -poolInfo[arg1].field_512 + (168 * 24 * 3600):
                                        revert with 0, 18
                                    if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[arg1].field_512) + (840 * 10^18 * 24 * 3600) / startBlock + -poolInfo[arg1].field_512 + (168 * 24 * 3600) != 5 * 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if startBlock + (168 * 24 * 3600) > block.number:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.number < startBlock + (168 * 24 * 3600):
                                        revert with 0, 17
                                    if not block.number + -startBlock - (168 * 24 * 3600):
                                        if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[arg1].field_512) + (840 * 10^18 * 24 * 3600) > -1:
                                            revert with 0, 17
                                    else:
                                        if block.number + -startBlock - (168 * 24 * 3600) and 1 > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                            revert with 0, 17
                                        if not block.number + -startBlock - (168 * 24 * 3600):
                                            revert with 0, 18
                                        if block.number + -startBlock - (168 * 24 * 3600) / block.number + -startBlock - (168 * 24 * 3600) != 1:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not block.number + -startBlock - (168 * 24 * 3600):
                                            if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[arg1].field_512) + (840 * 10^18 * 24 * 3600) > -1:
                                                revert with 0, 17
                                        else:
                                            if block.number + -startBlock - (168 * 24 * 3600) and sub_923966cb > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                                revert with 0, 17
                                            if not block.number + -startBlock - (168 * 24 * 3600):
                                                revert with 0, 18
                                            if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) / block.number + -startBlock - (168 * 24 * 3600) != sub_923966cb:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[arg1].field_512) + (840 * 10^18 * 24 * 3600) > !((-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb)):
                                                revert with 0, 17
                                            if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                    if not (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[arg1].field_512) + (840 * 10^18 * 24 * 3600):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 0, 18
                                        require ext_code.size(stor2)
                                        call stor2.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                revert with 0, 17
                                            if not 0 / totalAllocPoint:
                                                revert with 0, 18
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[arg1].field_512) + (840 * 10^18 * 24 * 3600) and poolInfo[arg1].field_256 > -1 / (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[arg1].field_512) + (840 * 10^18 * 24 * 3600):
                                            revert with 0, 17
                                        if not (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[arg1].field_512) + (840 * 10^18 * 24 * 3600):
                                            revert with 0, 18
                                        if (840 * 10^18 * 24 * 3600 * poolInfo[arg1].field_256) + (5 * 10^18 * startBlock * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[arg1].field_512) + (840 * 10^18 * 24 * 3600) != poolInfo[arg1].field_256:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 0, 18
                                        require ext_code.size(stor2)
                                        call stor2.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, (840 * 10^18 * 24 * 3600 * poolInfo[arg1].field_256) + (5 * 10^18 * startBlock * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (840 * 10^18 * 24 * 3600 * poolInfo[arg1].field_256) + (5 * 10^18 * startBlock * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if (840 * 10^18 * 24 * 3600 * poolInfo[arg1].field_256) + (5 * 10^18 * startBlock * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (840 * 10^18 * 24 * 3600 * poolInfo[arg1].field_256) + (5 * 10^18 * startBlock * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint:
                                                revert with 0, 17
                                            if not (840 * 10^18 * 24 * 3600 * poolInfo[arg1].field_256) + (5 * 10^18 * startBlock * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint:
                                                revert with 0, 18
                                            if 10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[arg1].field_256) + (5 * 10^18 * startBlock * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / (840 * 10^18 * 24 * 3600 * poolInfo[arg1].field_256) + (5 * 10^18 * startBlock * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_768 > !(10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[arg1].field_256) + (5 * 10^18 * startBlock * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_768 + (10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[arg1].field_256) + (5 * 10^18 * startBlock * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[arg1].field_256) + (5 * 10^18 * startBlock * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 11
        if block.number > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _360 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _361 = mem[_360]
            if mem[_360]:
                if poolInfo[idx].field_256:
                    if not stor21:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            revert with 0, 18
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(stor2)
                        call stor2.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if _361 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not _361:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(0 / _361):
                                revert with 0, 17
                            if poolInfo[idx].field_768 + (0 / _361) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / _361
                        else:
                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if not 0 / totalAllocPoint:
                                revert with 0, 18
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if _361 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not _361:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _361):
                                revert with 0, 17
                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _361) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _361
                    else:
                        if idx >= poolInfo.length:
                            revert with 0, 50
                        mem[0] = 11
                        if 168 * 24 * 3600 > !startBlock:
                            revert with 0, 17
                        if poolInfo[idx].field_512 > startBlock + (168 * 24 * 3600):
                            if poolInfo[idx].field_512 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.number < poolInfo[idx].field_512:
                                revert with 0, 17
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    revert with 0, 18
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(stor2)
                                call stor2.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if _361 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not _361:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(0 / _361):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (0 / _361) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / _361
                                else:
                                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                        revert with 0, 17
                                    if not 0 / totalAllocPoint:
                                        revert with 0, 18
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _361 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not _361:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _361):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _361) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _361
                            else:
                                if block.number - poolInfo[idx].field_512 and 1 > -1 / block.number - poolInfo[idx].field_512:
                                    revert with 0, 17
                                if not block.number - poolInfo[idx].field_512:
                                    revert with 0, 18
                                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not block.number - poolInfo[idx].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(stor2)
                                    call stor2.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if _361 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not _361:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(0 / _361):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (0 / _361) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / _361
                                    else:
                                        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                            revert with 0, 17
                                        if not 0 / totalAllocPoint:
                                            revert with 0, 18
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if _361 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not _361:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _361):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _361) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _361
                                else:
                                    if block.number - poolInfo[idx].field_512 and sub_923966cb > -1 / block.number - poolInfo[idx].field_512:
                                        revert with 0, 17
                                    if not block.number - poolInfo[idx].field_512:
                                        revert with 0, 18
                                    if (block.number * sub_923966cb) - (poolInfo[idx].field_512 * sub_923966cb) / block.number - poolInfo[idx].field_512 != sub_923966cb:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (block.number * sub_923966cb) - (poolInfo[idx].field_512 * sub_923966cb):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 0, 18
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(stor2)
                                        call stor2.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if _361 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not _361:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(0 / _361):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (0 / _361) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / _361
                                        else:
                                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                revert with 0, 17
                                            if not 0 / totalAllocPoint:
                                                revert with 0, 18
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if _361 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not _361:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _361):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _361) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _361
                                    else:
                                        if (block.number * sub_923966cb) - (poolInfo[idx].field_512 * sub_923966cb) and poolInfo[idx].field_256 > -1 / (block.number * sub_923966cb) - (poolInfo[idx].field_512 * sub_923966cb):
                                            revert with 0, 17
                                        if not (block.number * sub_923966cb) - (poolInfo[idx].field_512 * sub_923966cb):
                                            revert with 0, 18
                                        if (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / (block.number * sub_923966cb) - (poolInfo[idx].field_512 * sub_923966cb) != poolInfo[idx].field_256:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 0, 18
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint
                                        require ext_code.size(stor2)
                                        call stor2.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint:
                                            if _361 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not _361:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(0 / _361):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (0 / _361) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / _361
                                        else:
                                            if (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint:
                                                revert with 0, 17
                                            if not (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint:
                                                revert with 0, 18
                                            if 10^12 * (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if _361 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not _361:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(10^12 * (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint / _361):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (10^12 * (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint / _361) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint / _361
                        else:
                            if startBlock + (168 * 24 * 3600) >= block.number:
                                if poolInfo[idx].field_512 > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.number < poolInfo[idx].field_512:
                                    revert with 0, 17
                                if not block.number - poolInfo[idx].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(stor2)
                                    call stor2.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if _361 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not _361:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(0 / _361):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (0 / _361) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / _361
                                    else:
                                        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                            revert with 0, 17
                                        if not 0 / totalAllocPoint:
                                            revert with 0, 18
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if _361 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not _361:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _361):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _361) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _361
                                else:
                                    if block.number - poolInfo[idx].field_512 and 1 > -1 / block.number - poolInfo[idx].field_512:
                                        revert with 0, 17
                                    if not block.number - poolInfo[idx].field_512:
                                        revert with 0, 18
                                    if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not block.number - poolInfo[idx].field_512:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 0, 18
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(stor2)
                                        call stor2.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if _361 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not _361:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(0 / _361):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (0 / _361) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / _361
                                        else:
                                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                revert with 0, 17
                                            if not 0 / totalAllocPoint:
                                                revert with 0, 18
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if _361 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not _361:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _361):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _361) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _361
                                    else:
                                        if block.number - poolInfo[idx].field_512 and 5 * 10^18 > -1 / block.number - poolInfo[idx].field_512:
                                            revert with 0, 17
                                        if not block.number - poolInfo[idx].field_512:
                                            revert with 0, 18
                                        if (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 5 * 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[idx].field_512):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 0, 18
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(stor2)
                                            call stor2.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                if _361 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _361:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(0 / _361):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (0 / _361) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / _361
                                            else:
                                                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                    revert with 0, 17
                                                if not 0 / totalAllocPoint:
                                                    revert with 0, 18
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if _361 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _361:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _361):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _361) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _361
                                        else:
                                            if (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[idx].field_512) and poolInfo[idx].field_256 > -1 / (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[idx].field_512):
                                                revert with 0, 17
                                            if not (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[idx].field_512):
                                                revert with 0, 18
                                            if (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[idx].field_512) != poolInfo[idx].field_256:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 0, 18
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                            require ext_code.size(stor2)
                                            call stor2.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint:
                                                if _361 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _361:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(0 / _361):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (0 / _361) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / _361
                                            else:
                                                if (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    revert with 0, 17
                                                if not (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    revert with 0, 18
                                                if 10^12 * (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if _361 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _361:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(10^12 * (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / _361):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (10^12 * (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / _361) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / _361
                            else:
                                if poolInfo[idx].field_512 > startBlock + (168 * 24 * 3600):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if startBlock + (168 * 24 * 3600) < poolInfo[idx].field_512:
                                    revert with 0, 17
                                if not startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600):
                                    if startBlock + (168 * 24 * 3600) > block.number:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.number < startBlock + (168 * 24 * 3600):
                                        revert with 0, 17
                                    if block.number + -startBlock - (168 * 24 * 3600):
                                        if block.number + -startBlock - (168 * 24 * 3600) and 1 > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                            revert with 0, 17
                                        if not block.number + -startBlock - (168 * 24 * 3600):
                                            revert with 0, 18
                                        if block.number + -startBlock - (168 * 24 * 3600) / block.number + -startBlock - (168 * 24 * 3600) != 1:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if block.number + -startBlock - (168 * 24 * 3600):
                                            if block.number + -startBlock - (168 * 24 * 3600) and sub_923966cb > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                                revert with 0, 17
                                            if not block.number + -startBlock - (168 * 24 * 3600):
                                                revert with 0, 18
                                            if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) / block.number + -startBlock - (168 * 24 * 3600) != sub_923966cb:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 0 > !((-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb)):
                                                revert with 0, 17
                                            if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(stor2)
                                    call stor2.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if _361 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not _361:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(0 / _361):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (0 / _361) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / _361
                                    else:
                                        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                            revert with 0, 17
                                        if not 0 / totalAllocPoint:
                                            revert with 0, 18
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if _361 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not _361:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _361):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _361) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _361
                                else:
                                    if startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600) and 1 > -1 / startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600):
                                        revert with 0, 17
                                    if not startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600):
                                        revert with 0, 18
                                    if startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600) / startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600) != 1:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600):
                                        if startBlock + (168 * 24 * 3600) > block.number:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.number < startBlock + (168 * 24 * 3600):
                                            revert with 0, 17
                                        if block.number + -startBlock - (168 * 24 * 3600):
                                            if block.number + -startBlock - (168 * 24 * 3600) and 1 > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                                revert with 0, 17
                                            if not block.number + -startBlock - (168 * 24 * 3600):
                                                revert with 0, 18
                                            if block.number + -startBlock - (168 * 24 * 3600) / block.number + -startBlock - (168 * 24 * 3600) != 1:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if block.number + -startBlock - (168 * 24 * 3600):
                                                if block.number + -startBlock - (168 * 24 * 3600) and sub_923966cb > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                                    revert with 0, 17
                                                if not block.number + -startBlock - (168 * 24 * 3600):
                                                    revert with 0, 18
                                                if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) / block.number + -startBlock - (168 * 24 * 3600) != sub_923966cb:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 0 > !((-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb)):
                                                    revert with 0, 17
                                                if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 0, 18
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(stor2)
                                        call stor2.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if _361 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not _361:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(0 / _361):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (0 / _361) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / _361
                                        else:
                                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                revert with 0, 17
                                            if not 0 / totalAllocPoint:
                                                revert with 0, 18
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if _361 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not _361:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _361):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _361) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _361
                                    else:
                                        if startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600) and 5 * 10^18 > -1 / startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600):
                                            revert with 0, 17
                                        if not startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600):
                                            revert with 0, 18
                                        if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600) / startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600) != 5 * 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if startBlock + (168 * 24 * 3600) > block.number:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.number < startBlock + (168 * 24 * 3600):
                                            revert with 0, 17
                                        if not block.number + -startBlock - (168 * 24 * 3600):
                                            if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600) > -1:
                                                revert with 0, 17
                                        else:
                                            if block.number + -startBlock - (168 * 24 * 3600) and 1 > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                                revert with 0, 17
                                            if not block.number + -startBlock - (168 * 24 * 3600):
                                                revert with 0, 18
                                            if block.number + -startBlock - (168 * 24 * 3600) / block.number + -startBlock - (168 * 24 * 3600) != 1:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not block.number + -startBlock - (168 * 24 * 3600):
                                                if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600) > -1:
                                                    revert with 0, 17
                                            else:
                                                if block.number + -startBlock - (168 * 24 * 3600) and sub_923966cb > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                                    revert with 0, 17
                                                if not block.number + -startBlock - (168 * 24 * 3600):
                                                    revert with 0, 18
                                                if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) / block.number + -startBlock - (168 * 24 * 3600) != sub_923966cb:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600) > !((-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb)):
                                                    revert with 0, 17
                                                if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                        if not (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 0, 18
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(stor2)
                                            call stor2.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                if _361 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _361:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(0 / _361):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (0 / _361) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / _361
                                            else:
                                                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                    revert with 0, 17
                                                if not 0 / totalAllocPoint:
                                                    revert with 0, 18
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if _361 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _361:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _361):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _361) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _361
                                        else:
                                            if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600) and poolInfo[idx].field_256 > -1 / (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600):
                                                revert with 0, 17
                                            if not (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600):
                                                revert with 0, 18
                                            if (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600) != poolInfo[idx].field_256:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 0, 18
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                            require ext_code.size(stor2)
                                            call stor2.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint:
                                                if _361 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _361:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(0 / _361):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (0 / _361) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / _361
                                            else:
                                                if (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    revert with 0, 17
                                                if not (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    revert with 0, 18
                                                if 10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if _361 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _361:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / _361):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / _361) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / _361
            poolInfo[idx].field_512 = block.number
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 11
        if block.number > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _366 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _367 = mem[_366]
            if mem[_366]:
                if poolInfo[idx].field_256:
                    if not stor21:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            revert with 0, 18
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(stor2)
                        call stor2.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if _367 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not _367:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(0 / _367):
                                revert with 0, 17
                            if poolInfo[idx].field_768 + (0 / _367) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / _367
                        else:
                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if not 0 / totalAllocPoint:
                                revert with 0, 18
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if _367 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not _367:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _367):
                                revert with 0, 17
                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _367) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _367
                    else:
                        if idx >= poolInfo.length:
                            revert with 0, 50
                        mem[0] = 11
                        if 168 * 24 * 3600 > !startBlock:
                            revert with 0, 17
                        if poolInfo[idx].field_512 > startBlock + (168 * 24 * 3600):
                            if poolInfo[idx].field_512 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.number < poolInfo[idx].field_512:
                                revert with 0, 17
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    revert with 0, 18
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(stor2)
                                call stor2.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if _367 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not _367:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(0 / _367):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (0 / _367) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / _367
                                else:
                                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                        revert with 0, 17
                                    if not 0 / totalAllocPoint:
                                        revert with 0, 18
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _367 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not _367:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _367):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _367) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _367
                            else:
                                if block.number - poolInfo[idx].field_512 and 1 > -1 / block.number - poolInfo[idx].field_512:
                                    revert with 0, 17
                                if not block.number - poolInfo[idx].field_512:
                                    revert with 0, 18
                                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not block.number - poolInfo[idx].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(stor2)
                                    call stor2.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if _367 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not _367:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(0 / _367):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (0 / _367) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / _367
                                    else:
                                        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                            revert with 0, 17
                                        if not 0 / totalAllocPoint:
                                            revert with 0, 18
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if _367 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not _367:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _367):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _367) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _367
                                else:
                                    if block.number - poolInfo[idx].field_512 and sub_923966cb > -1 / block.number - poolInfo[idx].field_512:
                                        revert with 0, 17
                                    if not block.number - poolInfo[idx].field_512:
                                        revert with 0, 18
                                    if (block.number * sub_923966cb) - (poolInfo[idx].field_512 * sub_923966cb) / block.number - poolInfo[idx].field_512 != sub_923966cb:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (block.number * sub_923966cb) - (poolInfo[idx].field_512 * sub_923966cb):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 0, 18
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(stor2)
                                        call stor2.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if _367 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not _367:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(0 / _367):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (0 / _367) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / _367
                                        else:
                                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                revert with 0, 17
                                            if not 0 / totalAllocPoint:
                                                revert with 0, 18
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if _367 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not _367:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _367):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _367) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _367
                                    else:
                                        if (block.number * sub_923966cb) - (poolInfo[idx].field_512 * sub_923966cb) and poolInfo[idx].field_256 > -1 / (block.number * sub_923966cb) - (poolInfo[idx].field_512 * sub_923966cb):
                                            revert with 0, 17
                                        if not (block.number * sub_923966cb) - (poolInfo[idx].field_512 * sub_923966cb):
                                            revert with 0, 18
                                        if (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / (block.number * sub_923966cb) - (poolInfo[idx].field_512 * sub_923966cb) != poolInfo[idx].field_256:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 0, 18
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint
                                        require ext_code.size(stor2)
                                        call stor2.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint:
                                            if _367 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not _367:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(0 / _367):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (0 / _367) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / _367
                                        else:
                                            if (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint:
                                                revert with 0, 17
                                            if not (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint:
                                                revert with 0, 18
                                            if 10^12 * (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if _367 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not _367:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(10^12 * (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint / _367):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (10^12 * (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint / _367) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint / _367
                        else:
                            if startBlock + (168 * 24 * 3600) >= block.number:
                                if poolInfo[idx].field_512 > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.number < poolInfo[idx].field_512:
                                    revert with 0, 17
                                if not block.number - poolInfo[idx].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(stor2)
                                    call stor2.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if _367 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not _367:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(0 / _367):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (0 / _367) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / _367
                                    else:
                                        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                            revert with 0, 17
                                        if not 0 / totalAllocPoint:
                                            revert with 0, 18
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if _367 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not _367:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _367):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _367) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _367
                                else:
                                    if block.number - poolInfo[idx].field_512 and 1 > -1 / block.number - poolInfo[idx].field_512:
                                        revert with 0, 17
                                    if not block.number - poolInfo[idx].field_512:
                                        revert with 0, 18
                                    if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not block.number - poolInfo[idx].field_512:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 0, 18
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(stor2)
                                        call stor2.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if _367 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not _367:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(0 / _367):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (0 / _367) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / _367
                                        else:
                                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                revert with 0, 17
                                            if not 0 / totalAllocPoint:
                                                revert with 0, 18
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if _367 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not _367:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _367):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _367) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _367
                                    else:
                                        if block.number - poolInfo[idx].field_512 and 5 * 10^18 > -1 / block.number - poolInfo[idx].field_512:
                                            revert with 0, 17
                                        if not block.number - poolInfo[idx].field_512:
                                            revert with 0, 18
                                        if (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 5 * 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[idx].field_512):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 0, 18
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(stor2)
                                            call stor2.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                if _367 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _367:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(0 / _367):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (0 / _367) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / _367
                                            else:
                                                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                    revert with 0, 17
                                                if not 0 / totalAllocPoint:
                                                    revert with 0, 18
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if _367 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _367:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _367):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _367) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _367
                                        else:
                                            if (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[idx].field_512) and poolInfo[idx].field_256 > -1 / (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[idx].field_512):
                                                revert with 0, 17
                                            if not (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[idx].field_512):
                                                revert with 0, 18
                                            if (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[idx].field_512) != poolInfo[idx].field_256:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 0, 18
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                            require ext_code.size(stor2)
                                            call stor2.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint:
                                                if _367 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _367:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(0 / _367):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (0 / _367) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / _367
                                            else:
                                                if (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    revert with 0, 17
                                                if not (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    revert with 0, 18
                                                if 10^12 * (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if _367 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _367:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(10^12 * (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / _367):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (10^12 * (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / _367) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / _367
                            else:
                                if poolInfo[idx].field_512 > startBlock + (168 * 24 * 3600):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if startBlock + (168 * 24 * 3600) < poolInfo[idx].field_512:
                                    revert with 0, 17
                                if not startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600):
                                    if startBlock + (168 * 24 * 3600) > block.number:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.number < startBlock + (168 * 24 * 3600):
                                        revert with 0, 17
                                    if block.number + -startBlock - (168 * 24 * 3600):
                                        if block.number + -startBlock - (168 * 24 * 3600) and 1 > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                            revert with 0, 17
                                        if not block.number + -startBlock - (168 * 24 * 3600):
                                            revert with 0, 18
                                        if block.number + -startBlock - (168 * 24 * 3600) / block.number + -startBlock - (168 * 24 * 3600) != 1:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if block.number + -startBlock - (168 * 24 * 3600):
                                            if block.number + -startBlock - (168 * 24 * 3600) and sub_923966cb > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                                revert with 0, 17
                                            if not block.number + -startBlock - (168 * 24 * 3600):
                                                revert with 0, 18
                                            if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) / block.number + -startBlock - (168 * 24 * 3600) != sub_923966cb:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 0 > !((-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb)):
                                                revert with 0, 17
                                            if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(stor2)
                                    call stor2.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if _367 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not _367:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(0 / _367):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (0 / _367) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / _367
                                    else:
                                        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                            revert with 0, 17
                                        if not 0 / totalAllocPoint:
                                            revert with 0, 18
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if _367 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not _367:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _367):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _367) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _367
                                else:
                                    if startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600) and 1 > -1 / startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600):
                                        revert with 0, 17
                                    if not startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600):
                                        revert with 0, 18
                                    if startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600) / startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600) != 1:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600):
                                        if startBlock + (168 * 24 * 3600) > block.number:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.number < startBlock + (168 * 24 * 3600):
                                            revert with 0, 17
                                        if block.number + -startBlock - (168 * 24 * 3600):
                                            if block.number + -startBlock - (168 * 24 * 3600) and 1 > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                                revert with 0, 17
                                            if not block.number + -startBlock - (168 * 24 * 3600):
                                                revert with 0, 18
                                            if block.number + -startBlock - (168 * 24 * 3600) / block.number + -startBlock - (168 * 24 * 3600) != 1:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if block.number + -startBlock - (168 * 24 * 3600):
                                                if block.number + -startBlock - (168 * 24 * 3600) and sub_923966cb > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                                    revert with 0, 17
                                                if not block.number + -startBlock - (168 * 24 * 3600):
                                                    revert with 0, 18
                                                if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) / block.number + -startBlock - (168 * 24 * 3600) != sub_923966cb:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 0 > !((-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb)):
                                                    revert with 0, 17
                                                if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 0, 18
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(stor2)
                                        call stor2.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if _367 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not _367:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(0 / _367):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (0 / _367) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / _367
                                        else:
                                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                revert with 0, 17
                                            if not 0 / totalAllocPoint:
                                                revert with 0, 18
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if _367 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not _367:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _367):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _367) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _367
                                    else:
                                        if startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600) and 5 * 10^18 > -1 / startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600):
                                            revert with 0, 17
                                        if not startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600):
                                            revert with 0, 18
                                        if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600) / startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600) != 5 * 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if startBlock + (168 * 24 * 3600) > block.number:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.number < startBlock + (168 * 24 * 3600):
                                            revert with 0, 17
                                        if not block.number + -startBlock - (168 * 24 * 3600):
                                            if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600) > -1:
                                                revert with 0, 17
                                        else:
                                            if block.number + -startBlock - (168 * 24 * 3600) and 1 > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                                revert with 0, 17
                                            if not block.number + -startBlock - (168 * 24 * 3600):
                                                revert with 0, 18
                                            if block.number + -startBlock - (168 * 24 * 3600) / block.number + -startBlock - (168 * 24 * 3600) != 1:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not block.number + -startBlock - (168 * 24 * 3600):
                                                if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600) > -1:
                                                    revert with 0, 17
                                            else:
                                                if block.number + -startBlock - (168 * 24 * 3600) and sub_923966cb > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                                    revert with 0, 17
                                                if not block.number + -startBlock - (168 * 24 * 3600):
                                                    revert with 0, 18
                                                if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) / block.number + -startBlock - (168 * 24 * 3600) != sub_923966cb:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600) > !((-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb)):
                                                    revert with 0, 17
                                                if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                        if not (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 0, 18
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(stor2)
                                            call stor2.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                if _367 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _367:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(0 / _367):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (0 / _367) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / _367
                                            else:
                                                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                    revert with 0, 17
                                                if not 0 / totalAllocPoint:
                                                    revert with 0, 18
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if _367 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _367:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _367):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _367) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _367
                                        else:
                                            if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600) and poolInfo[idx].field_256 > -1 / (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600):
                                                revert with 0, 17
                                            if not (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600):
                                                revert with 0, 18
                                            if (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600) != poolInfo[idx].field_256:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 0, 18
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                            require ext_code.size(stor2)
                                            call stor2.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint:
                                                if _367 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _367:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(0 / _367):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (0 / _367) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / _367
                                            else:
                                                if (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    revert with 0, 17
                                                if not (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    revert with 0, 18
                                                if 10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if _367 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _367:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / _367):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / _367) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / _367
            poolInfo[idx].field_512 = block.number
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    emit EmissionRateUpdated(sub_923966cb, arg1, msg.sender);
    sub_923966cb = arg1
}

function add(uint256 arg1, address arg2, uint16 arg3, uint256 arg4, bool arg5) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require arg2 == arg2
    require arg3 == arg3
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'add: invalid deposit fee basis points'
    if arg4 > 336 * 24 * 3600:
        revert with 0, 'add: invalid harvest interval'
    if arg5:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 11
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _406 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _407 = mem[_406]
                if mem[_406]:
                    if poolInfo[idx].field_256:
                        if not stor21:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                revert with 0, 18
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(stor2)
                            call stor2.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if _407 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not _407:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(0 / _407):
                                    revert with 0, 17
                                if poolInfo[idx].field_768 + (0 / _407) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / _407
                            else:
                                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                    revert with 0, 17
                                if not 0 / totalAllocPoint:
                                    revert with 0, 18
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if _407 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not _407:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _407):
                                    revert with 0, 17
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _407) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _407
                        else:
                            if idx >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 11
                            if 168 * 24 * 3600 > !startBlock:
                                revert with 0, 17
                            if poolInfo[idx].field_512 > startBlock + (168 * 24 * 3600):
                                if poolInfo[idx].field_512 > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.number < poolInfo[idx].field_512:
                                    revert with 0, 17
                                if not block.number - poolInfo[idx].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(stor2)
                                    call stor2.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if _407 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not _407:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(0 / _407):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (0 / _407) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / _407
                                    else:
                                        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                            revert with 0, 17
                                        if not 0 / totalAllocPoint:
                                            revert with 0, 18
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if _407 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not _407:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _407):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _407) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _407
                                else:
                                    if block.number - poolInfo[idx].field_512 and 1 > -1 / block.number - poolInfo[idx].field_512:
                                        revert with 0, 17
                                    if not block.number - poolInfo[idx].field_512:
                                        revert with 0, 18
                                    if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not block.number - poolInfo[idx].field_512:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 0, 18
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(stor2)
                                        call stor2.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if _407 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not _407:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(0 / _407):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (0 / _407) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / _407
                                        else:
                                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                revert with 0, 17
                                            if not 0 / totalAllocPoint:
                                                revert with 0, 18
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if _407 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not _407:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _407):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _407) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _407
                                    else:
                                        if block.number - poolInfo[idx].field_512 and sub_923966cb > -1 / block.number - poolInfo[idx].field_512:
                                            revert with 0, 17
                                        if not block.number - poolInfo[idx].field_512:
                                            revert with 0, 18
                                        if (block.number * sub_923966cb) - (poolInfo[idx].field_512 * sub_923966cb) / block.number - poolInfo[idx].field_512 != sub_923966cb:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not (block.number * sub_923966cb) - (poolInfo[idx].field_512 * sub_923966cb):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 0, 18
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(stor2)
                                            call stor2.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                if _407 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _407:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(0 / _407):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (0 / _407) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / _407
                                            else:
                                                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                    revert with 0, 17
                                                if not 0 / totalAllocPoint:
                                                    revert with 0, 18
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if _407 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _407:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _407):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _407) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _407
                                        else:
                                            if (block.number * sub_923966cb) - (poolInfo[idx].field_512 * sub_923966cb) and poolInfo[idx].field_256 > -1 / (block.number * sub_923966cb) - (poolInfo[idx].field_512 * sub_923966cb):
                                                revert with 0, 17
                                            if not (block.number * sub_923966cb) - (poolInfo[idx].field_512 * sub_923966cb):
                                                revert with 0, 18
                                            if (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / (block.number * sub_923966cb) - (poolInfo[idx].field_512 * sub_923966cb) != poolInfo[idx].field_256:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 0, 18
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint
                                            require ext_code.size(stor2)
                                            call stor2.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint:
                                                if _407 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _407:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(0 / _407):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (0 / _407) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / _407
                                            else:
                                                if (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint:
                                                    revert with 0, 17
                                                if not (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint:
                                                    revert with 0, 18
                                                if 10^12 * (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if _407 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _407:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(10^12 * (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint / _407):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint / _407) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint / _407
                            else:
                                if startBlock + (168 * 24 * 3600) >= block.number:
                                    if poolInfo[idx].field_512 > block.number:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.number < poolInfo[idx].field_512:
                                        revert with 0, 17
                                    if not block.number - poolInfo[idx].field_512:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 0, 18
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(stor2)
                                        call stor2.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if _407 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not _407:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(0 / _407):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (0 / _407) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / _407
                                        else:
                                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                revert with 0, 17
                                            if not 0 / totalAllocPoint:
                                                revert with 0, 18
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if _407 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not _407:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _407):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _407) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _407
                                    else:
                                        if block.number - poolInfo[idx].field_512 and 1 > -1 / block.number - poolInfo[idx].field_512:
                                            revert with 0, 17
                                        if not block.number - poolInfo[idx].field_512:
                                            revert with 0, 18
                                        if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not block.number - poolInfo[idx].field_512:
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 0, 18
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(stor2)
                                            call stor2.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                if _407 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _407:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(0 / _407):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (0 / _407) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / _407
                                            else:
                                                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                    revert with 0, 17
                                                if not 0 / totalAllocPoint:
                                                    revert with 0, 18
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if _407 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _407:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _407):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _407) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _407
                                        else:
                                            if block.number - poolInfo[idx].field_512 and 5 * 10^18 > -1 / block.number - poolInfo[idx].field_512:
                                                revert with 0, 17
                                            if not block.number - poolInfo[idx].field_512:
                                                revert with 0, 18
                                            if (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 5 * 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[idx].field_512):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not totalAllocPoint:
                                                    revert with 0, 18
                                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                                require ext_code.size(stor2)
                                                call stor2.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not 0 / totalAllocPoint:
                                                    if _407 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not _407:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_768 > !(0 / _407):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_768 + (0 / _407) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / _407
                                                else:
                                                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                        revert with 0, 17
                                                    if not 0 / totalAllocPoint:
                                                        revert with 0, 18
                                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if _407 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not _407:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _407):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _407) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _407
                                            else:
                                                if (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[idx].field_512) and poolInfo[idx].field_256 > -1 / (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[idx].field_512):
                                                    revert with 0, 17
                                                if not (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[idx].field_512):
                                                    revert with 0, 18
                                                if (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[idx].field_512) != poolInfo[idx].field_256:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not totalAllocPoint:
                                                    revert with 0, 18
                                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                                require ext_code.size(stor2)
                                                call stor2.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if _407 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not _407:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_768 > !(0 / _407):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_768 + (0 / _407) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / _407
                                                else:
                                                    if (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint:
                                                        revert with 0, 17
                                                    if not (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint:
                                                        revert with 0, 18
                                                    if 10^12 * (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if _407 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not _407:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_768 > !(10^12 * (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / _407):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_768 + (10^12 * (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / _407) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / _407
                                else:
                                    if poolInfo[idx].field_512 > startBlock + (168 * 24 * 3600):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if startBlock + (168 * 24 * 3600) < poolInfo[idx].field_512:
                                        revert with 0, 17
                                    if not startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600):
                                        if startBlock + (168 * 24 * 3600) > block.number:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.number < startBlock + (168 * 24 * 3600):
                                            revert with 0, 17
                                        if block.number + -startBlock - (168 * 24 * 3600):
                                            if block.number + -startBlock - (168 * 24 * 3600) and 1 > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                                revert with 0, 17
                                            if not block.number + -startBlock - (168 * 24 * 3600):
                                                revert with 0, 18
                                            if block.number + -startBlock - (168 * 24 * 3600) / block.number + -startBlock - (168 * 24 * 3600) != 1:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if block.number + -startBlock - (168 * 24 * 3600):
                                                if block.number + -startBlock - (168 * 24 * 3600) and sub_923966cb > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                                    revert with 0, 17
                                                if not block.number + -startBlock - (168 * 24 * 3600):
                                                    revert with 0, 18
                                                if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) / block.number + -startBlock - (168 * 24 * 3600) != sub_923966cb:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 0 > !((-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb)):
                                                    revert with 0, 17
                                                if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 0, 18
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(stor2)
                                        call stor2.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if _407 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not _407:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(0 / _407):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (0 / _407) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / _407
                                        else:
                                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                revert with 0, 17
                                            if not 0 / totalAllocPoint:
                                                revert with 0, 18
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if _407 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not _407:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _407):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _407) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _407
                                    else:
                                        if startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600) and 1 > -1 / startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600):
                                            revert with 0, 17
                                        if not startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600):
                                            revert with 0, 18
                                        if startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600) / startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600) != 1:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600):
                                            if startBlock + (168 * 24 * 3600) > block.number:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if block.number < startBlock + (168 * 24 * 3600):
                                                revert with 0, 17
                                            if block.number + -startBlock - (168 * 24 * 3600):
                                                if block.number + -startBlock - (168 * 24 * 3600) and 1 > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                                    revert with 0, 17
                                                if not block.number + -startBlock - (168 * 24 * 3600):
                                                    revert with 0, 18
                                                if block.number + -startBlock - (168 * 24 * 3600) / block.number + -startBlock - (168 * 24 * 3600) != 1:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if block.number + -startBlock - (168 * 24 * 3600):
                                                    if block.number + -startBlock - (168 * 24 * 3600) and sub_923966cb > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                                        revert with 0, 17
                                                    if not block.number + -startBlock - (168 * 24 * 3600):
                                                        revert with 0, 18
                                                    if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) / block.number + -startBlock - (168 * 24 * 3600) != sub_923966cb:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 0 > !((-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb)):
                                                        revert with 0, 17
                                                    if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 0, 18
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(stor2)
                                            call stor2.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                if _407 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _407:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(0 / _407):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (0 / _407) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / _407
                                            else:
                                                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                    revert with 0, 17
                                                if not 0 / totalAllocPoint:
                                                    revert with 0, 18
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if _407 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _407:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _407):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _407) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _407
                                        else:
                                            if startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600) and 5 * 10^18 > -1 / startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600):
                                                revert with 0, 17
                                            if not startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600):
                                                revert with 0, 18
                                            if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600) / startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600) != 5 * 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if startBlock + (168 * 24 * 3600) > block.number:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if block.number < startBlock + (168 * 24 * 3600):
                                                revert with 0, 17
                                            if not block.number + -startBlock - (168 * 24 * 3600):
                                                if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600) > -1:
                                                    revert with 0, 17
                                            else:
                                                if block.number + -startBlock - (168 * 24 * 3600) and 1 > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                                    revert with 0, 17
                                                if not block.number + -startBlock - (168 * 24 * 3600):
                                                    revert with 0, 18
                                                if block.number + -startBlock - (168 * 24 * 3600) / block.number + -startBlock - (168 * 24 * 3600) != 1:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not block.number + -startBlock - (168 * 24 * 3600):
                                                    if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600) > -1:
                                                        revert with 0, 17
                                                else:
                                                    if block.number + -startBlock - (168 * 24 * 3600) and sub_923966cb > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                                        revert with 0, 17
                                                    if not block.number + -startBlock - (168 * 24 * 3600):
                                                        revert with 0, 18
                                                    if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) / block.number + -startBlock - (168 * 24 * 3600) != sub_923966cb:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600) > !((-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb)):
                                                        revert with 0, 17
                                                    if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                            if not (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not totalAllocPoint:
                                                    revert with 0, 18
                                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                                require ext_code.size(stor2)
                                                call stor2.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not 0 / totalAllocPoint:
                                                    if _407 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not _407:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_768 > !(0 / _407):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_768 + (0 / _407) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / _407
                                                else:
                                                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                        revert with 0, 17
                                                    if not 0 / totalAllocPoint:
                                                        revert with 0, 18
                                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if _407 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not _407:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _407):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _407) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _407
                                            else:
                                                if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600) and poolInfo[idx].field_256 > -1 / (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600):
                                                    revert with 0, 17
                                                if not (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600):
                                                    revert with 0, 18
                                                if (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600) != poolInfo[idx].field_256:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not totalAllocPoint:
                                                    revert with 0, 18
                                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                                require ext_code.size(stor2)
                                                call stor2.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if _407 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not _407:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_768 > !(0 / _407):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_768 + (0 / _407) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / _407
                                                else:
                                                    if (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint:
                                                        revert with 0, 17
                                                    if not (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint:
                                                        revert with 0, 18
                                                    if 10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if _407 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not _407:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_768 > !(10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / _407):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_768 + (10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / _407) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / _407
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if totalAllocPoint > !arg1:
        revert with 0, 17
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    stor175B[stor11.length] = arg2
    stor175B[stor11.length] = arg1
    if block.number > startBlock:
        stor175B[stor11.length] = block.number
    else:
        stor175B[stor11.length] = startBlock
    stor175B[stor11.length] = 0
    stor175B[stor11.length] = arg3
    stor175B[stor11.length] = arg4
    stor175B[stor11.length] = 0
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, uint256 arg4, bool arg5) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require arg3 == arg3
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'set: invalid deposit fee basis points'
    if arg4 > 336 * 24 * 3600:
        revert with 0, 'set: invalid harvest interval'
    if arg5:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 11
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _385 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _386 = mem[_385]
                if mem[_385]:
                    if poolInfo[idx].field_256:
                        if not stor21:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                revert with 0, 18
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(stor2)
                            call stor2.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if _386 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not _386:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(0 / _386):
                                    revert with 0, 17
                                if poolInfo[idx].field_768 + (0 / _386) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / _386
                            else:
                                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                    revert with 0, 17
                                if not 0 / totalAllocPoint:
                                    revert with 0, 18
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if _386 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not _386:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _386):
                                    revert with 0, 17
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _386) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _386
                        else:
                            if idx >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 11
                            if 168 * 24 * 3600 > !startBlock:
                                revert with 0, 17
                            if poolInfo[idx].field_512 > startBlock + (168 * 24 * 3600):
                                if poolInfo[idx].field_512 > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.number < poolInfo[idx].field_512:
                                    revert with 0, 17
                                if not block.number - poolInfo[idx].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(stor2)
                                    call stor2.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if _386 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not _386:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(0 / _386):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (0 / _386) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / _386
                                    else:
                                        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                            revert with 0, 17
                                        if not 0 / totalAllocPoint:
                                            revert with 0, 18
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if _386 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not _386:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _386):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _386) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _386
                                else:
                                    if block.number - poolInfo[idx].field_512 and 1 > -1 / block.number - poolInfo[idx].field_512:
                                        revert with 0, 17
                                    if not block.number - poolInfo[idx].field_512:
                                        revert with 0, 18
                                    if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not block.number - poolInfo[idx].field_512:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 0, 18
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(stor2)
                                        call stor2.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if _386 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not _386:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(0 / _386):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (0 / _386) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / _386
                                        else:
                                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                revert with 0, 17
                                            if not 0 / totalAllocPoint:
                                                revert with 0, 18
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if _386 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not _386:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _386):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _386) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _386
                                    else:
                                        if block.number - poolInfo[idx].field_512 and sub_923966cb > -1 / block.number - poolInfo[idx].field_512:
                                            revert with 0, 17
                                        if not block.number - poolInfo[idx].field_512:
                                            revert with 0, 18
                                        if (block.number * sub_923966cb) - (poolInfo[idx].field_512 * sub_923966cb) / block.number - poolInfo[idx].field_512 != sub_923966cb:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not (block.number * sub_923966cb) - (poolInfo[idx].field_512 * sub_923966cb):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 0, 18
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(stor2)
                                            call stor2.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                if _386 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _386:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(0 / _386):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (0 / _386) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / _386
                                            else:
                                                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                    revert with 0, 17
                                                if not 0 / totalAllocPoint:
                                                    revert with 0, 18
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if _386 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _386:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _386):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _386) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _386
                                        else:
                                            if (block.number * sub_923966cb) - (poolInfo[idx].field_512 * sub_923966cb) and poolInfo[idx].field_256 > -1 / (block.number * sub_923966cb) - (poolInfo[idx].field_512 * sub_923966cb):
                                                revert with 0, 17
                                            if not (block.number * sub_923966cb) - (poolInfo[idx].field_512 * sub_923966cb):
                                                revert with 0, 18
                                            if (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / (block.number * sub_923966cb) - (poolInfo[idx].field_512 * sub_923966cb) != poolInfo[idx].field_256:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 0, 18
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint
                                            require ext_code.size(stor2)
                                            call stor2.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint:
                                                if _386 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _386:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(0 / _386):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (0 / _386) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / _386
                                            else:
                                                if (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint:
                                                    revert with 0, 17
                                                if not (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint:
                                                    revert with 0, 18
                                                if 10^12 * (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if _386 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _386:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(10^12 * (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint / _386):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint / _386) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * (block.number * sub_923966cb * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_923966cb * poolInfo[idx].field_256) / totalAllocPoint / _386
                            else:
                                if startBlock + (168 * 24 * 3600) >= block.number:
                                    if poolInfo[idx].field_512 > block.number:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.number < poolInfo[idx].field_512:
                                        revert with 0, 17
                                    if not block.number - poolInfo[idx].field_512:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 0, 18
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(stor2)
                                        call stor2.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if _386 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not _386:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(0 / _386):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (0 / _386) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / _386
                                        else:
                                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                revert with 0, 17
                                            if not 0 / totalAllocPoint:
                                                revert with 0, 18
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if _386 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not _386:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _386):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _386) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _386
                                    else:
                                        if block.number - poolInfo[idx].field_512 and 1 > -1 / block.number - poolInfo[idx].field_512:
                                            revert with 0, 17
                                        if not block.number - poolInfo[idx].field_512:
                                            revert with 0, 18
                                        if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not block.number - poolInfo[idx].field_512:
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 0, 18
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(stor2)
                                            call stor2.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                if _386 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _386:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(0 / _386):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (0 / _386) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / _386
                                            else:
                                                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                    revert with 0, 17
                                                if not 0 / totalAllocPoint:
                                                    revert with 0, 18
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if _386 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _386:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _386):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _386) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _386
                                        else:
                                            if block.number - poolInfo[idx].field_512 and 5 * 10^18 > -1 / block.number - poolInfo[idx].field_512:
                                                revert with 0, 17
                                            if not block.number - poolInfo[idx].field_512:
                                                revert with 0, 18
                                            if (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 5 * 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[idx].field_512):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not totalAllocPoint:
                                                    revert with 0, 18
                                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                                require ext_code.size(stor2)
                                                call stor2.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not 0 / totalAllocPoint:
                                                    if _386 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not _386:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_768 > !(0 / _386):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_768 + (0 / _386) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / _386
                                                else:
                                                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                        revert with 0, 17
                                                    if not 0 / totalAllocPoint:
                                                        revert with 0, 18
                                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if _386 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not _386:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _386):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _386) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _386
                                            else:
                                                if (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[idx].field_512) and poolInfo[idx].field_256 > -1 / (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[idx].field_512):
                                                    revert with 0, 17
                                                if not (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[idx].field_512):
                                                    revert with 0, 18
                                                if (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[idx].field_512) != poolInfo[idx].field_256:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not totalAllocPoint:
                                                    revert with 0, 18
                                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                                require ext_code.size(stor2)
                                                call stor2.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if _386 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not _386:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_768 > !(0 / _386):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_768 + (0 / _386) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / _386
                                                else:
                                                    if (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint:
                                                        revert with 0, 17
                                                    if not (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint:
                                                        revert with 0, 18
                                                    if 10^12 * (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if _386 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not _386:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_768 > !(10^12 * (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / _386):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_768 + (10^12 * (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / _386) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * (5 * 10^18 * block.number * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / _386
                                else:
                                    if poolInfo[idx].field_512 > startBlock + (168 * 24 * 3600):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if startBlock + (168 * 24 * 3600) < poolInfo[idx].field_512:
                                        revert with 0, 17
                                    if not startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600):
                                        if startBlock + (168 * 24 * 3600) > block.number:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.number < startBlock + (168 * 24 * 3600):
                                            revert with 0, 17
                                        if block.number + -startBlock - (168 * 24 * 3600):
                                            if block.number + -startBlock - (168 * 24 * 3600) and 1 > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                                revert with 0, 17
                                            if not block.number + -startBlock - (168 * 24 * 3600):
                                                revert with 0, 18
                                            if block.number + -startBlock - (168 * 24 * 3600) / block.number + -startBlock - (168 * 24 * 3600) != 1:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if block.number + -startBlock - (168 * 24 * 3600):
                                                if block.number + -startBlock - (168 * 24 * 3600) and sub_923966cb > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                                    revert with 0, 17
                                                if not block.number + -startBlock - (168 * 24 * 3600):
                                                    revert with 0, 18
                                                if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) / block.number + -startBlock - (168 * 24 * 3600) != sub_923966cb:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 0 > !((-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb)):
                                                    revert with 0, 17
                                                if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 0, 18
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0 / totalAllocPoint
                                        require ext_code.size(stor2)
                                        call stor2.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if _386 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not _386:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(0 / _386):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (0 / _386) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / _386
                                        else:
                                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                revert with 0, 17
                                            if not 0 / totalAllocPoint:
                                                revert with 0, 18
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if _386 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not _386:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _386):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _386) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _386
                                    else:
                                        if startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600) and 1 > -1 / startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600):
                                            revert with 0, 17
                                        if not startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600):
                                            revert with 0, 18
                                        if startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600) / startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600) != 1:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600):
                                            if startBlock + (168 * 24 * 3600) > block.number:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if block.number < startBlock + (168 * 24 * 3600):
                                                revert with 0, 17
                                            if block.number + -startBlock - (168 * 24 * 3600):
                                                if block.number + -startBlock - (168 * 24 * 3600) and 1 > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                                    revert with 0, 17
                                                if not block.number + -startBlock - (168 * 24 * 3600):
                                                    revert with 0, 18
                                                if block.number + -startBlock - (168 * 24 * 3600) / block.number + -startBlock - (168 * 24 * 3600) != 1:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if block.number + -startBlock - (168 * 24 * 3600):
                                                    if block.number + -startBlock - (168 * 24 * 3600) and sub_923966cb > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                                        revert with 0, 17
                                                    if not block.number + -startBlock - (168 * 24 * 3600):
                                                        revert with 0, 18
                                                    if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) / block.number + -startBlock - (168 * 24 * 3600) != sub_923966cb:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 0 > !((-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb)):
                                                        revert with 0, 17
                                                    if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 0, 18
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0 / totalAllocPoint
                                            require ext_code.size(stor2)
                                            call stor2.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                if _386 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _386:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(0 / _386):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (0 / _386) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / _386
                                            else:
                                                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                    revert with 0, 17
                                                if not 0 / totalAllocPoint:
                                                    revert with 0, 18
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if _386 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not _386:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _386):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _386) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _386
                                        else:
                                            if startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600) and 5 * 10^18 > -1 / startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600):
                                                revert with 0, 17
                                            if not startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600):
                                                revert with 0, 18
                                            if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600) / startBlock + -poolInfo[idx].field_512 + (168 * 24 * 3600) != 5 * 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if startBlock + (168 * 24 * 3600) > block.number:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if block.number < startBlock + (168 * 24 * 3600):
                                                revert with 0, 17
                                            if not block.number + -startBlock - (168 * 24 * 3600):
                                                if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600) > -1:
                                                    revert with 0, 17
                                            else:
                                                if block.number + -startBlock - (168 * 24 * 3600) and 1 > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                                    revert with 0, 17
                                                if not block.number + -startBlock - (168 * 24 * 3600):
                                                    revert with 0, 18
                                                if block.number + -startBlock - (168 * 24 * 3600) / block.number + -startBlock - (168 * 24 * 3600) != 1:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not block.number + -startBlock - (168 * 24 * 3600):
                                                    if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600) > -1:
                                                        revert with 0, 17
                                                else:
                                                    if block.number + -startBlock - (168 * 24 * 3600) and sub_923966cb > -1 / block.number + -startBlock - (168 * 24 * 3600):
                                                        revert with 0, 17
                                                    if not block.number + -startBlock - (168 * 24 * 3600):
                                                        revert with 0, 18
                                                    if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) / block.number + -startBlock - (168 * 24 * 3600) != sub_923966cb:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600) > !((-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb)):
                                                        revert with 0, 17
                                                    if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                            if not (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not totalAllocPoint:
                                                    revert with 0, 18
                                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                                require ext_code.size(stor2)
                                                call stor2.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not 0 / totalAllocPoint:
                                                    if _386 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not _386:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_768 > !(0 / _386):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_768 + (0 / _386) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / _386
                                                else:
                                                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                        revert with 0, 17
                                                    if not 0 / totalAllocPoint:
                                                        revert with 0, 18
                                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if _386 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not _386:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _386):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _386) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _386
                                            else:
                                                if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600) and poolInfo[idx].field_256 > -1 / (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600):
                                                    revert with 0, 17
                                                if not (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600):
                                                    revert with 0, 18
                                                if (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[idx].field_512) + (840 * 10^18 * 24 * 3600) != poolInfo[idx].field_256:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not totalAllocPoint:
                                                    revert with 0, 18
                                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = this.address
                                                mem[mem[64] + 36] = (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                                require ext_code.size(stor2)
                                                call stor2.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if _386 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not _386:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_768 > !(0 / _386):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_768 + (0 / _386) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / _386
                                                else:
                                                    if (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint:
                                                        revert with 0, 17
                                                    if not (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint:
                                                        revert with 0, 18
                                                    if 10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if _386 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not _386:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_768 > !(10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / _386):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_768 + (10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / _386) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[idx].field_256) + (5 * 10^18 * startBlock * poolInfo[idx].field_256) - (5 * 10^18 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / _386
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if totalAllocPoint < poolInfo[arg1].field_256:
        revert with 0, 17
    if totalAllocPoint - poolInfo[arg1].field_256 > !arg2:
        revert with 0, 17
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1024 = arg3
    poolInfo[arg1].field_1280 = arg4
}

function sub_85fb072b(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if arg1 >= poolInfo.length:
        revert with 0, 50
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
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if not stor21:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not totalAllocPoint:
            revert with 0, 18
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        if not 0 / totalAllocPoint:
            revert with 0, 18
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if 168 * 24 * 3600 > !startBlock:
        revert with 0, 17
    if poolInfo[arg1].field_512 > startBlock + (168 * 24 * 3600):
        if poolInfo[arg1].field_512 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if block.number < poolInfo[arg1].field_512:
            revert with 0, 17
        if not block.number - poolInfo[arg1].field_512:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not totalAllocPoint:
                revert with 0, 18
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                    revert with 0, 17
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 17
                    if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                        revert with 0, 17
                    if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if userInfo[arg1][address(arg2)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if block.number - poolInfo[arg1].field_512 and 1 > -1 / block.number - poolInfo[arg1].field_512:
            revert with 0, 17
        if not block.number - poolInfo[arg1].field_512:
            revert with 0, 18
        if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
            revert with 0, 'SafeMath: multiplication overflow'
        if not block.number - poolInfo[arg1].field_512:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not totalAllocPoint:
                revert with 0, 18
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                    revert with 0, 17
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 17
                    if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                        revert with 0, 17
                    if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if userInfo[arg1][address(arg2)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if block.number - poolInfo[arg1].field_512 and sub_923966cb > -1 / block.number - poolInfo[arg1].field_512:
            revert with 0, 17
        if not block.number - poolInfo[arg1].field_512:
            revert with 0, 18
        if (block.number * sub_923966cb) - (poolInfo[arg1].field_512 * sub_923966cb) / block.number - poolInfo[arg1].field_512 != sub_923966cb:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.number * sub_923966cb) - (poolInfo[arg1].field_512 * sub_923966cb):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not totalAllocPoint:
                revert with 0, 18
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                    revert with 0, 17
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 17
                    if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                        revert with 0, 17
                    if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if userInfo[arg1][address(arg2)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if (block.number * sub_923966cb) - (poolInfo[arg1].field_512 * sub_923966cb) and poolInfo[arg1].field_256 > -1 / (block.number * sub_923966cb) - (poolInfo[arg1].field_512 * sub_923966cb):
            revert with 0, 17
        if not (block.number * sub_923966cb) - (poolInfo[arg1].field_512 * sub_923966cb):
            revert with 0, 18
        if (block.number * sub_923966cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_923966cb * poolInfo[arg1].field_256) / (block.number * sub_923966cb) - (poolInfo[arg1].field_512 * sub_923966cb) != poolInfo[arg1].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not totalAllocPoint:
            revert with 0, 18
        if not (block.number * sub_923966cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_923966cb * poolInfo[arg1].field_256) / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if (block.number * sub_923966cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_923966cb * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sub_923966cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_923966cb * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 0, 17
        if not (block.number * sub_923966cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_923966cb * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 0, 18
        if 10^12 * (block.number * sub_923966cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_923966cb * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_923966cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_923966cb * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(10^12 * (block.number * sub_923966cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_923966cb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_923966cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_923966cb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.number * sub_923966cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_923966cb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_923966cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_923966cb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * sub_923966cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_923966cb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_923966cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_923966cb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_923966cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_923966cb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_923966cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_923966cb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_923966cb * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_923966cb * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if startBlock + (168 * 24 * 3600) >= block.number:
        if poolInfo[arg1].field_512 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if block.number < poolInfo[arg1].field_512:
            revert with 0, 17
        if not block.number - poolInfo[arg1].field_512:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not totalAllocPoint:
                revert with 0, 18
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                    revert with 0, 17
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 17
                    if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                        revert with 0, 17
                    if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if userInfo[arg1][address(arg2)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if block.number - poolInfo[arg1].field_512 and 1 > -1 / block.number - poolInfo[arg1].field_512:
            revert with 0, 17
        if not block.number - poolInfo[arg1].field_512:
            revert with 0, 18
        if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
            revert with 0, 'SafeMath: multiplication overflow'
        if not block.number - poolInfo[arg1].field_512:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not totalAllocPoint:
                revert with 0, 18
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                    revert with 0, 17
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 17
                    if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                        revert with 0, 17
                    if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if userInfo[arg1][address(arg2)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if block.number - poolInfo[arg1].field_512 and 5 * 10^18 > -1 / block.number - poolInfo[arg1].field_512:
            revert with 0, 17
        if not block.number - poolInfo[arg1].field_512:
            revert with 0, 18
        if (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_512 != 5 * 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[arg1].field_512):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not totalAllocPoint:
                revert with 0, 18
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                    revert with 0, 17
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 17
                    if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                        revert with 0, 17
                    if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if userInfo[arg1][address(arg2)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[arg1].field_512) and poolInfo[arg1].field_256 > -1 / (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[arg1].field_512):
            revert with 0, 17
        if not (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[arg1].field_512):
            revert with 0, 18
        if (5 * 10^18 * block.number * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / (5 * 10^18 * block.number) - (5 * 10^18 * poolInfo[arg1].field_512) != poolInfo[arg1].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not totalAllocPoint:
            revert with 0, 18
        if not (5 * 10^18 * block.number * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if (5 * 10^18 * block.number * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (5 * 10^18 * block.number * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 0, 17
        if not (5 * 10^18 * block.number * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 0, 18
        if 10^12 * (5 * 10^18 * block.number * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / (5 * 10^18 * block.number * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(10^12 * (5 * 10^18 * block.number * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if poolInfo[arg1].field_768 + (10^12 * (5 * 10^18 * block.number * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (5 * 10^18 * block.number * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (5 * 10^18 * block.number * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (5 * 10^18 * block.number * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (5 * 10^18 * block.number * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (5 * 10^18 * block.number * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (5 * 10^18 * block.number * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (5 * 10^18 * block.number * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if poolInfo[arg1].field_512 > startBlock + (168 * 24 * 3600):
        revert with 0, 'SafeMath: subtraction overflow'
    if startBlock + (168 * 24 * 3600) < poolInfo[arg1].field_512:
        revert with 0, 17
    if not startBlock + -poolInfo[arg1].field_512 + (168 * 24 * 3600):
        if startBlock + (168 * 24 * 3600) > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if block.number < startBlock + (168 * 24 * 3600):
            revert with 0, 17
        if block.number + -startBlock - (168 * 24 * 3600):
            if block.number + -startBlock - (168 * 24 * 3600) and 1 > -1 / block.number + -startBlock - (168 * 24 * 3600):
                revert with 0, 17
            if not block.number + -startBlock - (168 * 24 * 3600):
                revert with 0, 18
            if block.number + -startBlock - (168 * 24 * 3600) / block.number + -startBlock - (168 * 24 * 3600) != 1:
                revert with 0, 'SafeMath: multiplication overflow'
            if block.number + -startBlock - (168 * 24 * 3600):
                if block.number + -startBlock - (168 * 24 * 3600) and sub_923966cb > -1 / block.number + -startBlock - (168 * 24 * 3600):
                    revert with 0, 17
                if not block.number + -startBlock - (168 * 24 * 3600):
                    revert with 0, 18
                if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) / block.number + -startBlock - (168 * 24 * 3600) != sub_923966cb:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > !((-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb)):
                    revert with 0, 17
                if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) < 0:
                    revert with 0, 'SafeMath: addition overflow'
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not totalAllocPoint:
            revert with 0, 18
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        if not 0 / totalAllocPoint:
            revert with 0, 18
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if startBlock + -poolInfo[arg1].field_512 + (168 * 24 * 3600) and 1 > -1 / startBlock + -poolInfo[arg1].field_512 + (168 * 24 * 3600):
        revert with 0, 17
    if not startBlock + -poolInfo[arg1].field_512 + (168 * 24 * 3600):
        revert with 0, 18
    if startBlock + -poolInfo[arg1].field_512 + (168 * 24 * 3600) / startBlock + -poolInfo[arg1].field_512 + (168 * 24 * 3600) != 1:
        revert with 0, 'SafeMath: multiplication overflow'
    if not startBlock + -poolInfo[arg1].field_512 + (168 * 24 * 3600):
        if startBlock + (168 * 24 * 3600) > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if block.number < startBlock + (168 * 24 * 3600):
            revert with 0, 17
        if block.number + -startBlock - (168 * 24 * 3600):
            if block.number + -startBlock - (168 * 24 * 3600) and 1 > -1 / block.number + -startBlock - (168 * 24 * 3600):
                revert with 0, 17
            if not block.number + -startBlock - (168 * 24 * 3600):
                revert with 0, 18
            if block.number + -startBlock - (168 * 24 * 3600) / block.number + -startBlock - (168 * 24 * 3600) != 1:
                revert with 0, 'SafeMath: multiplication overflow'
            if block.number + -startBlock - (168 * 24 * 3600):
                if block.number + -startBlock - (168 * 24 * 3600) and sub_923966cb > -1 / block.number + -startBlock - (168 * 24 * 3600):
                    revert with 0, 17
                if not block.number + -startBlock - (168 * 24 * 3600):
                    revert with 0, 18
                if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) / block.number + -startBlock - (168 * 24 * 3600) != sub_923966cb:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > !((-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb)):
                    revert with 0, 17
                if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) < 0:
                    revert with 0, 'SafeMath: addition overflow'
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not totalAllocPoint:
            revert with 0, 18
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        if not 0 / totalAllocPoint:
            revert with 0, 18
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if startBlock + -poolInfo[arg1].field_512 + (168 * 24 * 3600) and 5 * 10^18 > -1 / startBlock + -poolInfo[arg1].field_512 + (168 * 24 * 3600):
        revert with 0, 17
    if not startBlock + -poolInfo[arg1].field_512 + (168 * 24 * 3600):
        revert with 0, 18
    if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[arg1].field_512) + (840 * 10^18 * 24 * 3600) / startBlock + -poolInfo[arg1].field_512 + (168 * 24 * 3600) != 5 * 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if startBlock + (168 * 24 * 3600) > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.number < startBlock + (168 * 24 * 3600):
        revert with 0, 17
    if not block.number + -startBlock - (168 * 24 * 3600):
        if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[arg1].field_512) + (840 * 10^18 * 24 * 3600) > -1:
            revert with 0, 17
    else:
        if block.number + -startBlock - (168 * 24 * 3600) and 1 > -1 / block.number + -startBlock - (168 * 24 * 3600):
            revert with 0, 17
        if not block.number + -startBlock - (168 * 24 * 3600):
            revert with 0, 18
        if block.number + -startBlock - (168 * 24 * 3600) / block.number + -startBlock - (168 * 24 * 3600) != 1:
            revert with 0, 'SafeMath: multiplication overflow'
        if not block.number + -startBlock - (168 * 24 * 3600):
            if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[arg1].field_512) + (840 * 10^18 * 24 * 3600) > -1:
                revert with 0, 17
        else:
            if block.number + -startBlock - (168 * 24 * 3600) and sub_923966cb > -1 / block.number + -startBlock - (168 * 24 * 3600):
                revert with 0, 17
            if not block.number + -startBlock - (168 * 24 * 3600):
                revert with 0, 18
            if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) / block.number + -startBlock - (168 * 24 * 3600) != sub_923966cb:
                revert with 0, 'SafeMath: multiplication overflow'
            if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[arg1].field_512) + (840 * 10^18 * 24 * 3600) > !((-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb)):
                revert with 0, 17
            if (-604800 * sub_923966cb) + (block.number * sub_923966cb) - (startBlock * sub_923966cb) < 0:
                revert with 0, 'SafeMath: addition overflow'
    if not (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[arg1].field_512) + (840 * 10^18 * 24 * 3600):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not totalAllocPoint:
            revert with 0, 18
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        if not 0 / totalAllocPoint:
            revert with 0, 18
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[arg1].field_512) + (840 * 10^18 * 24 * 3600) and poolInfo[arg1].field_256 > -1 / (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[arg1].field_512) + (840 * 10^18 * 24 * 3600):
        revert with 0, 17
    if not (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[arg1].field_512) + (840 * 10^18 * 24 * 3600):
        revert with 0, 18
    if (840 * 10^18 * 24 * 3600 * poolInfo[arg1].field_256) + (5 * 10^18 * startBlock * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / (5 * 10^18 * startBlock) + (-5 * 10^18 * poolInfo[arg1].field_512) + (840 * 10^18 * 24 * 3600) != poolInfo[arg1].field_256:
        revert with 0, 'SafeMath: multiplication overflow'
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    if not totalAllocPoint:
        revert with 0, 18
    if not (840 * 10^18 * 24 * 3600 * poolInfo[arg1].field_256) + (5 * 10^18 * startBlock * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
            revert with 0, 17
        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if (840 * 10^18 * 24 * 3600 * poolInfo[arg1].field_256) + (5 * 10^18 * startBlock * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (840 * 10^18 * 24 * 3600 * poolInfo[arg1].field_256) + (5 * 10^18 * startBlock * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 0, 17
    if not (840 * 10^18 * 24 * 3600 * poolInfo[arg1].field_256) + (5 * 10^18 * startBlock * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 0, 18
    if 10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[arg1].field_256) + (5 * 10^18 * startBlock * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / (840 * 10^18 * 24 * 3600 * poolInfo[arg1].field_256) + (5 * 10^18 * startBlock * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 'SafeMath: multiplication overflow'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0]:
        revert with 0, 18
    if poolInfo[arg1].field_768 > !(10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[arg1].field_256) + (5 * 10^18 * startBlock * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 17
    if poolInfo[arg1].field_768 + (10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[arg1].field_256) + (5 * 10^18 * startBlock * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[arg1].field_256) + (5 * 10^18 * startBlock * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if not userInfo[arg1][address(arg2)].field_0:
        revert with 0, 18
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[arg1].field_256) + (5 * 10^18 * startBlock * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[arg1].field_256) + (5 * 10^18 * startBlock * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 'SafeMath: multiplication overflow'
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[arg1].field_256) + (5 * 10^18 * startBlock * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[arg1].field_256) + (5 * 10^18 * startBlock * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
        revert with 0, 17
    if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[arg1].field_256) + (5 * 10^18 * startBlock * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (840 * 10^18 * 24 * 3600 * poolInfo[arg1].field_256) + (5 * 10^18 * startBlock * poolInfo[arg1].field_256) - (5 * 10^18 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
}



}
