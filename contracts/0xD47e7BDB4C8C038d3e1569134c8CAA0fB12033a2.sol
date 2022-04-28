contract main {




// =====================  Runtime code  =====================


#
#  - sub_37a83723(?)
#
bool stor0; offset 256
uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
address owner;
address timerAddress;
address stor2;
address stor3;
uint256 currentLotteryId;
uint8 sub_075dc415; offset 160
uint8 sub_350d9251; offset 184
uint8 sub_8be852b1; offset 192
uint8 sub_add5edf0; offset 200
uint8 sub_3c309fe7; offset 208
uint8 sub_9c216602; offset 216
uint16 maxRange; offset 168
uint32 stor5; offset 224

function sub_075dc415(?) payable {
    return sub_075dc415
}

function timerAddress() payable {
    return timerAddress
}

function sub_350d9251(?) payable {
    return sub_350d9251
}

function sub_3c309fe7(?) payable {
    return sub_3c309fe7
}

function sub_8be852b1(?) payable {
    return sub_8be852b1
}

function owner() payable {
    return owner
}

function sub_9c216602(?) payable {
    return sub_9c216602
}

function sub_a624aa1b(?) payable {
    return maxRange
}

function sub_add5edf0(?) payable {
    return sub_add5edf0
}

function getMaxRange() payable {
    return maxRange
}

function getCurrentLotteryId() payable {
    return currentLotteryId
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

function setCurrentTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require timerAddress
    require ext_code.size(timerAddress)
    call timerAddress.0x22f8e566 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getCurrentTime() payable {
    if not timerAddress:
        return block.timestamp
    require ext_code.size(timerAddress)
    staticcall timerAddress.0x29cb924d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function costToBuyTickets(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor6[arg1].field_768:
        return 0
    if arg2 * stor6[arg1].field_768 / stor6[arg1].field_768 != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return (arg2 * stor6[arg1].field_768)
}

function updateMaxRange(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if maxRange == arg1:
        revert with 0, 'Cannot set to current size'
    if not arg1:
        revert with 0, 'Max range cannot be 0'
    maxRange = arg1
    emit UpdatedMaxRange(msg.sender, arg1);
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

function updateSizeOfLottery(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_075dc415 == arg1:
        revert with 0, 'Cannot set to current size'
    if not arg1:
        revert with 0, 'Lottery size cannot be 0'
    sub_075dc415 = arg1
    emit UpdatedSizeOfLottery(msg.sender, arg1);
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor0.field_168):
        if ext_code.size(this.address):
            if uint8(stor0.field_160):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_168):
            uint8(stor0.field_160) = 1
            uint8(stor0.field_168) = 1
            Mask(88, 0, stor0.field_168) = 0
            stor0.field_256 % 1 = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Contracts cannot be 0 address'
    stor3 = arg1
    if not uint8(stor0.field_168):
        uint8(stor0.field_168) = 0
}

function updateBuckets(uint8 arg1, uint8 arg2, uint8 arg3, uint8 arg4, uint8 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Bucket range cannot be 0'
    if not arg2:
        revert with 0, 'Bucket range cannot be 0'
    if arg1 >= arg2:
        revert with 0, 'Bucket one must be smaller'
    if arg3 >= arg4:
        revert with 0, 'Discounts must increase'
    if arg4 >= arg5:
        revert with 0, 'Discounts must increase'
    sub_350d9251 = arg1
    sub_8be852b1 = arg2
    sub_add5edf0 = arg3
    sub_3c309fe7 = arg4
    sub_9c216602 = arg5
    uint32(stor5.field_224) = 0
    emit UpdatedBuckets(address(msg.sender), arg1 << 248, arg2 << 248, arg3 << 248, arg4, arg5 << 248);
}

function sub_14881da9(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 1
    s = ext_call.return_data[0]
    while idx < arg1:
        t = 1
        u = 0
        while uint16(t) < stor6[idx].field_1024:
            require uint16(t) < stor6[idx].field_2048
            if stor((Mask(12, 4, t) >> 4) + ('array', 8, ('map', ('var', 0), ('name', 'stor6', 6))))[uint8(t)] <= 0:
                mem[0] = idx
                mem[32] = 6
                t = t + 1
                u = u
                continue 
            require uint16(t) < stor6[idx].field_1024
            if stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u < u:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = idx
            mem[32] = 6
            t = t + 1
            u = stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u
            continue 
        if not stor6[idx].field_512:
            mem[0] = idx
            mem[32] = 6
            if stor6[idx].field_2816 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > stor6[idx].field_2816 + s:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = idx + 1
            s = stor6[idx].field_2816 + s
            continue 
        if u * stor6[idx].field_512 / stor6[idx].field_512 != u:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[0] = idx
        mem[32] = 6
        if stor6[idx].field_2816 + s < s:
            revert with 0, 'SafeMath: addition overflow'
        if u * stor6[idx].field_512 / 100 > stor6[idx].field_2816 + s:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = idx + 1
        s = stor6[idx].field_2816 + s - (u * stor6[idx].field_512 / 100)
        continue 
    return s
}

function costToBuyTicketsWithDiscount(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(this.address)
    staticcall this.address.0x4f7d93db with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(this.address)
        staticcall this.address.0x4f7d93db with:
                gas gas_remaining wei
               args arg1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ext_call.return_data[0], 0, ext_call.return_data[0]
    if arg2 < sub_350d9251:
        if sub_add5edf0 * ext_call.return_data[0] / ext_call.return_data[0] != sub_add5edf0:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(this.address)
        staticcall this.address.0x4f7d93db with:
                gas gas_remaining wei
               args arg1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_add5edf0 * ext_call.return_data[0] / 100 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ext_call.return_data[0], 
               sub_add5edf0 * ext_call.return_data[0] / 100,
               ext_call.return_data[0] - (sub_add5edf0 * ext_call.return_data[0] / 100)
    if arg2 >= sub_8be852b1:
        if sub_9c216602 * ext_call.return_data[0] / ext_call.return_data[0] != sub_9c216602:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(this.address)
        staticcall this.address.0x4f7d93db with:
                gas gas_remaining wei
               args arg1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_9c216602 * ext_call.return_data[0] / 100 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ext_call.return_data[0], 
               sub_9c216602 * ext_call.return_data[0] / 100,
               ext_call.return_data[0] - (sub_9c216602 * ext_call.return_data[0] / 100)
    if sub_3c309fe7 * ext_call.return_data[0] / ext_call.return_data[0] != sub_3c309fe7:
        revert with 0, 'SafeMath: multiplication overflow'
    require ext_code.size(this.address)
    staticcall this.address.0x4f7d93db with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_3c309fe7 * ext_call.return_data[0] / 100 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return ext_call.return_data[0], 
           sub_3c309fe7 * ext_call.return_data[0] / 100,
           ext_call.return_data[0] - (sub_3c309fe7 * ext_call.return_data[0] / 100)
}

function sub_5bcc7cdb(?) payable {
    require calldata.size - 4 >= 64
    mem[0] = arg1
    mem[32] = 6
    require uint8(stor6[arg1].field_256) <= 3
    if uint8(stor6[arg1].field_256) != 3:
        return 0
    mem[96] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    require ext_code.size(stor3)
    staticcall stor3.0x9839eafd with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _7 = mem[96 len 4], Mask(224, 32, arg2) >> 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127
    _8 = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    require mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] <= test266151307()
    require (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _8
    require return_data.size >= _7 + (32 * _8) + 32
    s = _7 + 128
    t = ceil32(return_data.size) + 128
    idx = 0
    while idx < _8:
        require mem[s] == mem[s + 30 len 2]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[0] = arg1
    mem[32] = 6
    _30 = mem[64]
    mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
    mem[_30] = stor6[arg1].field_1792
    if not stor6[arg1].field_1792:
        idx = 0
        s = 0
        while idx < stor6[arg1].field_1792:
            require idx < stor6[arg1].field_1792
            require idx < _8
            if mem[(32 * idx) + ceil32(return_data.size) + 158 len 2] != mem[(32 * idx) + _30 + 62 len 2]:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
    else:
        mem[_30 + 32] = uint16(stor6[arg1][7].field_0)
        idx = _30 + 32
        s = 0
        while _30 + (32 * stor6[arg1].field_1792) > idx:
            mem[idx + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
            idx = idx + 32
            s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
            continue 
        idx = 0
        s = 0
        while idx < stor6[arg1].field_1792:
            require idx < stor6[arg1].field_1792
            require idx < mem[ceil32(return_data.size) + 96]
            if mem[(32 * idx) + ceil32(return_data.size) + 158 len 2] != mem[(32 * idx) + _30 + 62 len 2]:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
    if not uint8(s):
        return 0
    if 1 == uint8(s):
        return 0
    if uint8(s - 1) < stor6[arg1].field_1024:
        if uint8(s - 1) < stor6[arg1].field_2048:
            if not stor6[arg1].field_512:
                if stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]:
                    return (0 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)])
            else:
                if stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / stor6[arg1].field_512 != stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]:
                    return (stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / 100 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)])
            ('iszero', ('stor', ('array', ('mask_shl', 8, 0, 0, ('add', -1, ('var', 1))), ('name', "stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))", ('add', ('div', ('mask', 8, 0, ('add', -1, ('var', 1))), 16), ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))))))
    revert
}

function sub_76674b8f(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ext_code.size(msg.sender):
        revert with 0, 'contract not allowed'
    if msg.sender != tx.origin:
        revert with 0, 'proxy contract not allowed'
    if ('cd', 36).length > 50:
        revert with 0, 'Batch claim too large'
    if not timerAddress:
        if stor6[cd[4]].field_1536 > block.timestamp:
            revert with 0, 'Wait till end to claim'
        mem[0] = cd[4]
        mem[32] = 6
        require uint8(stor6[cd[4]].field_256) <= 3
        if uint8(stor6[cd[4]].field_256) != 3:
            revert with 0, 'Winning Numbers not chosen yet'
        idx = 0
        while idx < ('cd', 36).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
            require ext_code.size(stor3)
            staticcall stor3.0x9d755367 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[36] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _380 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_380] == mem[_380 + 12 len 20]
            if mem[_380 + 12 len 20] != msg.sender:
                revert with 0, 'Only the owner can claim'
            require idx < ('cd', 36).length
            mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
            require ext_code.size(stor3)
            staticcall stor3.0x9191a7ea with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[36] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _413 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_413] == bool(mem[_413])
            if not mem[_413]:
                require idx < ('cd', 36).length
                mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                mem[mem[64] + 36] = cd[4]
                require ext_code.size(stor3)
                call stor3.0xed06a740 with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[36] + 36)], cd[4]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _449 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_449] == bool(mem[_449])
                if not mem[_449]:
                    revert with 0, 'Numbers for ticket invalid'
                require idx < ('cd', 36).length
                mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                require ext_code.size(stor3)
                staticcall stor3.0x9839eafd with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[36] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _585 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _615 = mem[_585]
                require mem[_585] <= test266151307()
                require _585 + return_data.size > _585 + mem[_585] + 31
                _645 = mem[_585 + mem[_585]]
                require mem[_585 + mem[_585]] <= test266151307()
                require (32 * mem[_585 + mem[_585]]) + 32 >= 0 and _585 + ceil32(return_data.size) + (32 * mem[_585 + mem[_585]]) + 32 <= test266151307()
                mem[64] = _585 + ceil32(return_data.size) + (32 * mem[_585 + mem[_585]]) + 32
                mem[_585 + ceil32(return_data.size)] = _645
                require return_data.size >= _615 + (32 * _645) + 32
                t = _585 + _615 + 32
                u = _585 + ceil32(return_data.size) + 32
                s = 0
                while s < _645:
                    require mem[t] == mem[t + 30 len 2]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                mem[0] = cd[4]
                mem[32] = 6
                _714 = mem[64]
                mem[64] = mem[64] + (32 * stor6[cd[4]].field_1792) + 32
                mem[_714] = stor6[cd[4]].field_1792
                if not stor6[cd[4]].field_1792:
                    s = 0
                    t = 0
                    while s < stor6[cd[4]].field_1792:
                        require s < stor6[cd[4]].field_1792
                        require s < _645
                        if mem[(32 * s) + _585 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _714 + 62 len 2]:
                            s = s + 1
                            t = t
                            continue 
                        s = s + 1
                        t = t + 1
                        continue 
                else:
                    mem[0] = sha3(cd[4], 6) + 7
                    mem[_714 + 32] = uint16(stor6[cd[4]][7].field_0)
                    if (32 * stor6[cd[4]].field_1792) + 32 <= 64:
                        s = 0
                        t = 0
                        while s < stor6[cd[4]].field_1792:
                            require s < stor6[cd[4]].field_1792
                            require s < _645
                            if mem[(32 * s) + _585 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _714 + 62 len 2]:
                                s = s + 1
                                t = t
                                continue 
                            s = s + 1
                            t = t + 1
                            continue 
                    else:
                        mem[_714 + 64] = uint16(stor6[cd[4]][7].field_16)
                        s = _714 + 64
                        t = 2
                        while _714 + (32 * stor6[cd[4]].field_1792) > s:
                            mem[s + 32] = uint16(stor6[cd[4]][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                            s = s + 32
                            t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                            continue 
                        s = 0
                        t = 0
                        while s < stor6[cd[4]].field_1792:
                            require s < stor6[cd[4]].field_1792
                            require s < mem[_585 + ceil32(return_data.size)]
                            if mem[(32 * s) + _585 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _714 + 62 len 2]:
                                s = s + 1
                                t = t
                                continue 
                            s = s + 1
                            t = t + 1
                            continue 
                if uint8(t):
                    if uint8(t) != 1:
                        require uint8(t - 1) < stor6[cd[4]].field_1024
                        require uint8(t - 1) < stor6[cd[4]].field_2048
                        mem[0] = cd[4]
                        mem[32] = 6
                        if not stor6[cd[4]].field_512:
                            if stor((Mask(4, 4, t - 1) >> 4) + ('array', 8, ('map', ('cd', 4), ('name', 'stor6', 6))))[uint8(t - 1)] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor((Mask(4, 4, t - 1) >> 4) + ('array', 8, ('map', ('cd', 4), ('name', 'stor6', 6))))[uint8(t - 1)]
                            if 0 / stor((Mask(4, 4, t - 1) >> 4) + ('array', 8, ('map', ('cd', 4), ('name', 'stor6', 6))))[uint8(t - 1)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if stor((Mask(3, 5, t - 1) >> 5) + ('array', 4, ('map', ('cd', 4), ('name', 'stor6', 6))))[uint8(t - 1)] * stor6[cd[4]].field_512 / stor6[cd[4]].field_512 != stor((Mask(3, 5, t - 1) >> 5) + ('array', 4, ('map', ('cd', 4), ('name', 'stor6', 6))))[uint8(t - 1)]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor((Mask(4, 4, t - 1) >> 4) + ('array', 8, ('map', ('cd', 4), ('name', 'stor6', 6))))[uint8(t - 1)] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor((Mask(4, 4, t - 1) >> 4) + ('array', 8, ('map', ('cd', 4), ('name', 'stor6', 6))))[uint8(t - 1)]
                            if stor((Mask(3, 5, t - 1) >> 5) + ('array', 4, ('map', ('cd', 4), ('name', 'stor6', 6))))[uint8(t - 1)] * stor6[cd[4]].field_512 / 100 / stor((Mask(4, 4, t - 1) >> 4) + ('array', 8, ('map', ('cd', 4), ('name', 'stor6', 6))))[uint8(t - 1)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
        if stor6[cd[4]].field_2816 < stor6[cd[4]].field_2816:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = cd[4]
        mem[32] = 6
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor2)
        staticcall stor2.balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _383 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _387 = mem[_383]
        if mem[_383] >= 0:
            _389 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            _397 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
            mem[64] = mem[64] + 164
            mem[_389 + 100] = 32
            mem[_389 + 132] = 'SafeERC20: low-level call failed'
            if not ext_code.size(stor2):
                revert with 0, 'Address: call to non-contract'
            _425 = mem[_397]
            mem[_389 + 164 len ceil32(mem[_397])] = mem[_397 + 32 len ceil32(mem[_397])]
            if ceil32(_425) > _425:
                mem[_389 + _425 + 164] = 0
            call stor2 with:
                 gas gas_remaining wei
                args mem[_389 + 168 len _425 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_389 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_389 + 196] == bool(mem[_389 + 196])
                    if not mem[_389 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            _390 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = _387
            _399 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
            mem[64] = mem[64] + 164
            mem[_390 + 100] = 32
            mem[_390 + 132] = 'SafeERC20: low-level call failed'
            if not ext_code.size(stor2):
                revert with 0, 'Address: call to non-contract'
            _426 = mem[_399]
            mem[_390 + 164 len ceil32(mem[_399])] = mem[_399 + 32 len ceil32(mem[_399])]
            if ceil32(_426) > _426:
                mem[_390 + _426 + 164] = 0
            call stor2 with:
                 gas gas_remaining wei
                args mem[_390 + 168 len _426 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_390 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_390 + 196] == bool(mem[_390 + 196])
                    if not mem[_390 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        require ext_code.size(timerAddress)
        staticcall timerAddress.0x29cb924d with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        if stor6[cd[4]].field_1536 > ext_call.return_data[0]:
            revert with 0, 'Wait till end to claim'
        mem[0] = cd[4]
        mem[32] = 6
        require uint8(stor6[cd[4]].field_256) <= 3
        if uint8(stor6[cd[4]].field_256) != 3:
            revert with 0, 'Winning Numbers not chosen yet'
        idx = 0
        while idx < ('cd', 36).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
            require ext_code.size(stor3)
            staticcall stor3.0x9d755367 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[36] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _382 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_382] == mem[_382 + 12 len 20]
            if mem[_382 + 12 len 20] != msg.sender:
                revert with 0, 'Only the owner can claim'
            require idx < ('cd', 36).length
            mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
            require ext_code.size(stor3)
            staticcall stor3.0x9191a7ea with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[36] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _414 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_414] == bool(mem[_414])
            if not mem[_414]:
                require idx < ('cd', 36).length
                mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                mem[mem[64] + 36] = cd[4]
                require ext_code.size(stor3)
                call stor3.0xed06a740 with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[36] + 36)], cd[4]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _454 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_454] == bool(mem[_454])
                if not mem[_454]:
                    revert with 0, 'Numbers for ticket invalid'
                require idx < ('cd', 36).length
                mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                require ext_code.size(stor3)
                staticcall stor3.0x9839eafd with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[36] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _590 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _624 = mem[_590]
                require mem[_590] <= test266151307()
                require _590 + return_data.size > _590 + mem[_590] + 31
                _650 = mem[_590 + mem[_590]]
                require mem[_590 + mem[_590]] <= test266151307()
                require (32 * mem[_590 + mem[_590]]) + 32 >= 0 and _590 + ceil32(return_data.size) + (32 * mem[_590 + mem[_590]]) + 32 <= test266151307()
                mem[64] = _590 + ceil32(return_data.size) + (32 * mem[_590 + mem[_590]]) + 32
                mem[_590 + ceil32(return_data.size)] = _650
                require return_data.size >= _624 + (32 * _650) + 32
                t = _590 + _624 + 32
                u = _590 + ceil32(return_data.size) + 32
                s = 0
                while s < _650:
                    require mem[t] == mem[t + 30 len 2]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                mem[0] = cd[4]
                mem[32] = 6
                _716 = mem[64]
                mem[64] = mem[64] + (32 * stor6[cd[4]].field_1792) + 32
                mem[_716] = stor6[cd[4]].field_1792
                if not stor6[cd[4]].field_1792:
                    s = 0
                    t = 0
                    while s < stor6[cd[4]].field_1792:
                        require s < stor6[cd[4]].field_1792
                        require s < _650
                        if mem[(32 * s) + _590 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _716 + 62 len 2]:
                            s = s + 1
                            t = t
                            continue 
                        s = s + 1
                        t = t + 1
                        continue 
                else:
                    mem[0] = sha3(cd[4], 6) + 7
                    mem[_716 + 32] = uint16(stor6[cd[4]][7].field_0)
                    if (32 * stor6[cd[4]].field_1792) + 32 <= 64:
                        s = 0
                        t = 0
                        while s < stor6[cd[4]].field_1792:
                            require s < stor6[cd[4]].field_1792
                            require s < _650
                            if mem[(32 * s) + _590 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _716 + 62 len 2]:
                                s = s + 1
                                t = t
                                continue 
                            s = s + 1
                            t = t + 1
                            continue 
                    else:
                        mem[_716 + 64] = uint16(stor6[cd[4]][7].field_16)
                        s = _716 + 64
                        t = 2
                        while _716 + (32 * stor6[cd[4]].field_1792) > s:
                            mem[s + 32] = uint16(stor6[cd[4]][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                            s = s + 32
                            t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                            continue 
                        s = 0
                        t = 0
                        while s < stor6[cd[4]].field_1792:
                            require s < stor6[cd[4]].field_1792
                            require s < mem[_590 + ceil32(return_data.size)]
                            if mem[(32 * s) + _590 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _716 + 62 len 2]:
                                s = s + 1
                                t = t
                                continue 
                            s = s + 1
                            t = t + 1
                            continue 
                if uint8(t):
                    if uint8(t) != 1:
                        require uint8(t - 1) < stor6[cd[4]].field_1024
                        require uint8(t - 1) < stor6[cd[4]].field_2048
                        mem[0] = cd[4]
                        mem[32] = 6
                        if not stor6[cd[4]].field_512:
                            if stor((Mask(4, 4, t - 1) >> 4) + ('array', 8, ('map', ('cd', 4), ('name', 'stor6', 6))))[uint8(t - 1)] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor((Mask(4, 4, t - 1) >> 4) + ('array', 8, ('map', ('cd', 4), ('name', 'stor6', 6))))[uint8(t - 1)]
                            if 0 / stor((Mask(4, 4, t - 1) >> 4) + ('array', 8, ('map', ('cd', 4), ('name', 'stor6', 6))))[uint8(t - 1)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if stor((Mask(3, 5, t - 1) >> 5) + ('array', 4, ('map', ('cd', 4), ('name', 'stor6', 6))))[uint8(t - 1)] * stor6[cd[4]].field_512 / stor6[cd[4]].field_512 != stor((Mask(3, 5, t - 1) >> 5) + ('array', 4, ('map', ('cd', 4), ('name', 'stor6', 6))))[uint8(t - 1)]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor((Mask(4, 4, t - 1) >> 4) + ('array', 8, ('map', ('cd', 4), ('name', 'stor6', 6))))[uint8(t - 1)] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor((Mask(4, 4, t - 1) >> 4) + ('array', 8, ('map', ('cd', 4), ('name', 'stor6', 6))))[uint8(t - 1)]
                            if stor((Mask(3, 5, t - 1) >> 5) + ('array', 4, ('map', ('cd', 4), ('name', 'stor6', 6))))[uint8(t - 1)] * stor6[cd[4]].field_512 / 100 / stor((Mask(4, 4, t - 1) >> 4) + ('array', 8, ('map', ('cd', 4), ('name', 'stor6', 6))))[uint8(t - 1)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
        if stor6[cd[4]].field_2816 < stor6[cd[4]].field_2816:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = cd[4]
        mem[32] = 6
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor2)
        staticcall stor2.balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _385 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _388 = mem[_385]
        if mem[_385] >= 0:
            _392 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            _402 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
            mem[64] = mem[64] + 164
            mem[_392 + 100] = 32
            mem[_392 + 132] = 'SafeERC20: low-level call failed'
            if not ext_code.size(stor2):
                revert with 0, 'Address: call to non-contract'
            _427 = mem[_402]
            mem[_392 + 164 len ceil32(mem[_402])] = mem[_402 + 32 len ceil32(mem[_402])]
            if ceil32(_427) > _427:
                mem[_392 + _427 + 164] = 0
            call stor2 with:
                 gas gas_remaining wei
                args mem[_392 + 168 len _427 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_392 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_392 + 196] == bool(mem[_392 + 196])
                    if not mem[_392 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            _393 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = _388
            _404 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
            mem[64] = mem[64] + 164
            mem[_393 + 100] = 32
            mem[_393 + 132] = 'SafeERC20: low-level call failed'
            if not ext_code.size(stor2):
                revert with 0, 'Address: call to non-contract'
            _428 = mem[_404]
            mem[_393 + 164 len ceil32(mem[_404])] = mem[_404 + 32 len ceil32(mem[_404])]
            if ceil32(_428) > _428:
                mem[_393 + _428 + 164] = 0
            call stor2 with:
                 gas gas_remaining wei
                args mem[_393 + 168 len _428 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_393 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_393 + 196] == bool(mem[_393 + 196])
                    if not mem[_393 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function getBasicLottoInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 96
    mem[256] = 0
    mem[288] = 0
    mem[320] = 96
    mem[352] = 96
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[32] = 6
    mem[480] = stor6[arg1].field_0
    require uint8(stor6[arg1].field_256) <= 3
    mem[512] = uint8(stor6[arg1].field_256)
    mem[544] = stor6[arg1].field_512
    mem[576] = stor6[arg1].field_768
    mem[864] = stor6[arg1].field_1024
    if not stor6[arg1].field_1024:
        mem[608] = 864
        mem[640] = stor6[arg1].field_1280
        mem[672] = stor6[arg1].field_1536
        mem[(32 * stor6[arg1].field_1024) + 896] = stor6[arg1].field_1792
        if not stor6[arg1].field_1792:
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 928] = stor6[arg1].field_2048
            if not stor6[arg1].field_2048:
                mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 960] = 32
                mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 992] = stor6[arg1].field_0
                require uint8(stor6[arg1].field_256) < 4
                mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1024] = uint8(stor6[arg1].field_256)
                mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1056] = stor6[arg1].field_512
                mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1088] = stor6[arg1].field_768
                mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1120] = 384
                mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1376] = stor6[arg1].field_1024
                idx = 0
                s = 896
                t = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1408
                while idx < stor6[arg1].field_1024:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1152] = stor6[arg1].field_1280
                mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1184] = stor6[arg1].field_1536
                mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1216] = (32 * stor6[arg1].field_1024) + 416
                mem[(64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1408] = stor6[arg1].field_1792
                idx = 0
                s = (32 * stor6[arg1].field_1024) + 928
                t = (64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1440
                while idx < stor6[arg1].field_1792:
                    mem[t] = mem[s + 30 len 2]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1248] = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 448
                _354 = mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 928]
                mem[(64 * stor6[arg1].field_1024) + (64 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1440] = mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 928]
                idx = 0
                s = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 960
                t = (64 * stor6[arg1].field_1024) + (64 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1472
                while idx < _354:
                    mem[t] = mem[s + 30 len 2]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1280] = stor6[arg1].field_2304
                mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1312] = stor6[arg1].field_2560
                mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1344] = stor6[arg1].field_2816
                return memory
                  from (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 960
                   len (96 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * _354) + 512
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 960] = uint16(stor6[arg1][8].field_0)
            idx = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 960
            s = 0
            while (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 928 > idx:
                mem[idx + 32] = uint16(stor6[arg1][8].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
                idx = idx + 32
                s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
                continue 
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 960] = 32
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 992] = stor6[arg1].field_0
            require uint8(stor6[arg1].field_256) < 4
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1024] = uint8(stor6[arg1].field_256)
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1056] = stor6[arg1].field_512
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1088] = stor6[arg1].field_768
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1120] = 384
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1376] = stor6[arg1].field_1024
            idx = 0
            s = 896
            t = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1408
            while idx < stor6[arg1].field_1024:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1152] = stor6[arg1].field_1280
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1184] = stor6[arg1].field_1536
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1216] = (32 * stor6[arg1].field_1024) + 416
            mem[(64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1408] = stor6[arg1].field_1792
            idx = 0
            s = (32 * stor6[arg1].field_1024) + 928
            t = (64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1440
            while idx < stor6[arg1].field_1792:
                mem[t] = mem[s + 30 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1248] = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 448
            _491 = mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 928]
            mem[(64 * stor6[arg1].field_1024) + (64 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1440] = mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 928]
            idx = 0
            s = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 960
            t = (64 * stor6[arg1].field_1024) + (64 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1472
            while idx < _491:
                mem[t] = mem[s + 30 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1280] = stor6[arg1].field_2304
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1312] = stor6[arg1].field_2560
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1344] = stor6[arg1].field_2816
            return memory
              from (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 960
               len (96 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * _491) + 512
        mem[(32 * stor6[arg1].field_1024) + 928] = uint16(stor6[arg1][7].field_0)
        idx = (32 * stor6[arg1].field_1024) + 928
        s = 0
        while (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 896 > idx:
            mem[idx + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
            idx = idx + 32
            s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
            continue 
        mem[704] = (32 * stor6[arg1].field_1024) + 896
        mem[64] = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 960
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 928] = stor6[arg1].field_2048
        if not stor6[arg1].field_2048:
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 960] = 32
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 992] = stor6[arg1].field_0
            require uint8(stor6[arg1].field_256) < 4
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1024] = uint8(stor6[arg1].field_256)
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1056] = stor6[arg1].field_512
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1088] = stor6[arg1].field_768
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1120] = 384
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1376] = stor6[arg1].field_1024
            idx = 0
            s = 896
            t = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1408
            while idx < stor6[arg1].field_1024:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1152] = stor6[arg1].field_1280
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1184] = stor6[arg1].field_1536
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1216] = (32 * stor6[arg1].field_1024) + 416
            mem[(64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1408] = stor6[arg1].field_1792
            idx = 0
            s = (32 * stor6[arg1].field_1024) + 928
            t = (64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1440
            while idx < stor6[arg1].field_1792:
                mem[t] = mem[s + 30 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1248] = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 448
            _492 = mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 928]
            mem[(64 * stor6[arg1].field_1024) + (64 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1440] = mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 928]
            idx = 0
            s = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 960
            t = (64 * stor6[arg1].field_1024) + (64 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1472
            while idx < _492:
                mem[t] = mem[s + 30 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1280] = stor6[arg1].field_2304
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1312] = stor6[arg1].field_2560
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1344] = stor6[arg1].field_2816
            return memory
              from (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 960
               len (96 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * _492) + 512
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 960] = uint16(stor6[arg1][8].field_0)
        idx = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 960
        s = 0
        while (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 928 > idx:
            mem[idx + 32] = uint16(stor6[arg1][8].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
            idx = idx + 32
            s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
            continue 
        mem[736] = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 928
        mem[768] = stor6[arg1].field_2304
        mem[800] = stor6[arg1].field_2560
        mem[832] = stor6[arg1].field_2816
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 960] = 32
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 992] = stor6[arg1].field_0
        require uint8(stor6[arg1].field_256) < 4
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1024] = uint8(stor6[arg1].field_256)
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1056] = stor6[arg1].field_512
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1088] = stor6[arg1].field_768
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1120] = 384
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1376] = stor6[arg1].field_1024
        idx = 0
        s = 896
        t = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1408
        while idx < stor6[arg1].field_1024:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1152] = stor6[arg1].field_1280
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1184] = stor6[arg1].field_1536
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1216] = (32 * stor6[arg1].field_1024) + 416
        mem[(64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1408] = stor6[arg1].field_1792
        idx = 0
        s = (32 * stor6[arg1].field_1024) + 928
        t = (64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1440
        while idx < stor6[arg1].field_1792:
            mem[t] = mem[s + 30 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1248] = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 448
        _580 = mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 928]
        mem[(64 * stor6[arg1].field_1024) + (64 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1440] = mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 928]
        idx = 0
        s = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 960
        t = mem[64] + (32 * mem[864]) + (32 * stor6[arg1].field_1792) + 512
        while idx < _580:
            mem[t] = mem[s + 30 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1280] = mem[768]
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1312] = mem[800]
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1344] = mem[832]
        return memory
          from mem[64]
           len (64 * stor6[arg1].field_1024) + (64 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + (32 * _580) + -mem[64] + 1472
    mem[896] = uint8(stor6[arg1][4].field_0)
    idx = 896
    s = 0
    while (32 * stor6[arg1].field_1024) + 864 > idx:
        mem[idx + 32] = stor('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[608] = 864
    mem[640] = stor6[arg1].field_1280
    mem[672] = stor6[arg1].field_1536
    mem[(32 * stor6[arg1].field_1024) + 896] = stor6[arg1].field_1792
    if not stor6[arg1].field_1792:
        mem[704] = (32 * stor6[arg1].field_1024) + 896
        mem[64] = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 960
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 928] = stor6[arg1].field_2048
        if not stor6[arg1].field_2048:
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 960] = 32
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 992] = stor6[arg1].field_0
            require uint8(stor6[arg1].field_256) < 4
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1024] = uint8(stor6[arg1].field_256)
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1056] = stor6[arg1].field_512
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1088] = stor6[arg1].field_768
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1120] = 384
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1376] = stor6[arg1].field_1024
            idx = 0
            s = 896
            t = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1408
            while idx < stor6[arg1].field_1024:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1152] = stor6[arg1].field_1280
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1184] = stor6[arg1].field_1536
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1216] = (32 * stor6[arg1].field_1024) + 416
            mem[(64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1408] = stor6[arg1].field_1792
            idx = 0
            s = (32 * stor6[arg1].field_1024) + 928
            t = (64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1440
            while idx < stor6[arg1].field_1792:
                mem[t] = mem[s + 30 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1248] = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 448
            _494 = mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 928]
            mem[(64 * stor6[arg1].field_1024) + (64 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1440] = mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 928]
            idx = 0
            s = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 960
            t = (64 * stor6[arg1].field_1024) + (64 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1472
            while idx < _494:
                mem[t] = mem[s + 30 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1280] = stor6[arg1].field_2304
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1312] = stor6[arg1].field_2560
            mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1344] = stor6[arg1].field_2816
            return memory
              from (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 960
               len (96 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * _494) + 512
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 960] = uint16(stor6[arg1][8].field_0)
        idx = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 960
        s = 0
        while (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 928 > idx:
            mem[idx + 32] = uint16(stor6[arg1][8].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
            idx = idx + 32
            s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
            continue 
        mem[736] = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 928
        mem[768] = stor6[arg1].field_2304
        mem[800] = stor6[arg1].field_2560
        mem[832] = stor6[arg1].field_2816
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 960] = 32
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 992] = stor6[arg1].field_0
        require uint8(stor6[arg1].field_256) < 4
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1024] = uint8(stor6[arg1].field_256)
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1056] = stor6[arg1].field_512
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1088] = stor6[arg1].field_768
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1120] = 384
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1376] = stor6[arg1].field_1024
        idx = 0
        s = 896
        t = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1408
        while idx < stor6[arg1].field_1024:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1152] = stor6[arg1].field_1280
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1184] = stor6[arg1].field_1536
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1216] = (32 * stor6[arg1].field_1024) + 416
        mem[(64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1408] = stor6[arg1].field_1792
        idx = 0
        s = (32 * stor6[arg1].field_1024) + 928
        t = (64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1440
        while idx < stor6[arg1].field_1792:
            mem[t] = mem[s + 30 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1248] = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 448
        _582 = mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 928]
        mem[(64 * stor6[arg1].field_1024) + (64 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1440] = mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 928]
        idx = 0
        s = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 960
        t = mem[64] + (32 * mem[864]) + (32 * stor6[arg1].field_1792) + 512
        while idx < _582:
            mem[t] = mem[s + 30 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1280] = mem[768]
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1312] = mem[800]
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1344] = mem[832]
        return memory
          from mem[64]
           len (64 * stor6[arg1].field_1024) + (64 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + (32 * _582) + -mem[64] + 1472
    mem[0] = sha3(arg1, 6) + 7
    mem[(32 * stor6[arg1].field_1024) + 928] = uint16(stor6[arg1][7].field_0)
    idx = (32 * stor6[arg1].field_1024) + 928
    s = 0
    while (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 896 > idx:
        mem[idx + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
        idx = idx + 32
        s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
        continue 
    mem[704] = (32 * stor6[arg1].field_1024) + 896
    mem[64] = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 960
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 928] = stor6[arg1].field_2048
    if stor6[arg1].field_2048:
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 960] = uint16(stor6[arg1][8].field_0)
        idx = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 960
        s = 0
        while (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 928 > idx:
            mem[idx + 32] = uint16(stor6[arg1][8].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
            idx = idx + 32
            s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
            continue 
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 960] = 32
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 992] = stor6[arg1].field_0
        require uint8(stor6[arg1].field_256) < 4
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1024] = uint8(stor6[arg1].field_256)
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1056] = stor6[arg1].field_512
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1088] = stor6[arg1].field_768
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1120] = 384
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1376] = stor6[arg1].field_1024
        idx = 0
        s = 896
        t = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1408
        while idx < stor6[arg1].field_1024:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1152] = stor6[arg1].field_1280
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1184] = stor6[arg1].field_1536
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1216] = (32 * stor6[arg1].field_1024) + 416
        mem[(64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1408] = stor6[arg1].field_1792
        idx = 0
        s = (32 * stor6[arg1].field_1024) + 928
        t = (64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1440
        while idx < stor6[arg1].field_1792:
            mem[t] = mem[s + 30 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1248] = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 448
        _625 = mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 928]
        mem[(64 * stor6[arg1].field_1024) + (64 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1440] = mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 928]
        idx = 0
        s = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 960
        t = (64 * stor6[arg1].field_1024) + (64 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1472
        while idx < _625:
            mem[t] = mem[s + 30 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1280] = stor6[arg1].field_2304
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1312] = stor6[arg1].field_2560
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1344] = stor6[arg1].field_2816
        return memory
          from (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 960
           len (96 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * _625) + 512
    mem[736] = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 928
    mem[768] = stor6[arg1].field_2304
    mem[800] = stor6[arg1].field_2560
    mem[832] = stor6[arg1].field_2816
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 960] = 32
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 992] = stor6[arg1].field_0
    require uint8(stor6[arg1].field_256) < 4
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1024] = uint8(stor6[arg1].field_256)
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1056] = stor6[arg1].field_512
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1088] = stor6[arg1].field_768
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1120] = 384
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1376] = stor6[arg1].field_1024
    idx = 0
    s = 896
    t = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1408
    while idx < stor6[arg1].field_1024:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1152] = stor6[arg1].field_1280
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1184] = stor6[arg1].field_1536
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1216] = (32 * stor6[arg1].field_1024) + 416
    mem[(64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1408] = stor6[arg1].field_1792
    idx = 0
    s = mem[704] + 32
    t = mem[64] + (32 * mem[864]) + 480
    while idx < stor6[arg1].field_1792:
        mem[t] = mem[s + 30 len 2]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1248] = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 448
    _583 = mem[mem[736]]
    mem[(64 * stor6[arg1].field_1024) + (64 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1440] = mem[mem[736]]
    idx = 0
    s = mem[736] + 32
    t = (64 * stor6[arg1].field_1024) + (64 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1472
    while idx < _583:
        mem[t] = mem[s + 30 len 2]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1280] = mem[768]
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1312] = mem[800]
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1344] = mem[832]
    return memory
      from mem[64]
       len (64 * stor6[arg1].field_1024) + (64 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + (32 * _583) + -mem[64] + 1472
}

function sub_c8cfd902(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] == uint8(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if ext_code.size(msg.sender):
        revert with 0, 'contract not allowed'
    if msg.sender != tx.origin:
        revert with 0, 'proxy contract not allowed'
    if not timerAddress:
        if block.timestamp < stor6[cd[4]].field_1280:
            revert with 0, 'Invalid time for mint:start'
        if not timerAddress:
            if block.timestamp >= stor6[cd[4]].field_1536:
                revert with 0, 'Invalid time for mint:end'
            require uint8(stor6[cd[4]].field_256) <= 3
            if uint8(stor6[cd[4]].field_256):
                mem[0] = cd[4]
                mem[32] = 6
                require uint8(stor6[cd[4]].field_256) <= 3
                if uint8(stor6[cd[4]].field_256) != 1:
                    revert with 0, 'Lottery not in state for mint'
                if uint8(cd[36]) > 50:
                    revert with 0, 'Batch mint too large'
                if not uint8(cd[36]):
                    if ('cd', 68).length != 0:
                        revert with 0, 'Invalid chosen numbers'
                    require ext_code.size(this.address)
                    staticcall this.address.0xdccda096 with:
                            gas gas_remaining wei
                           args cd[4], uint8(cd[36])
                    mem[96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[ceil32(return_data.size) + 100] = msg.sender
                    mem[ceil32(return_data.size) + 132] = this.address
                    mem[ceil32(return_data.size) + 164] = ext_call.return_data[64]
                    require ext_code.size(stor2)
                    call stor2.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[64]
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 96] = 0x5e3261d000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 132] = cd[4]
                    mem[(2 * ceil32(return_data.size)) + 164] = uint8(cd[36])
                    mem[(2 * ceil32(return_data.size)) + 196] = 160
                    mem[(2 * ceil32(return_data.size)) + 260] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = (2 * ceil32(return_data.size)) + 292
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 228] = sub_075dc415
                    require ext_code.size(stor3)
                    call stor3.0x5e3261d0 with:
                         gas gas_remaining wei
                        args msg.sender, cd[4], cd[36] << 248, Array(len=('cd', 68).length, data=mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]), sub_075dc415
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _497 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 96 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                    _513 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                    mem[(4 * ceil32(return_data.size)) + 96] = _513
                    require return_data.size >= _497 + (32 * _513) + 32
                    mem[(4 * ceil32(return_data.size)) + 128 len 32 * _513] = mem[(2 * ceil32(return_data.size)) + _497 + 128 len 32 * _513]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = _513
                    mem[mem[64] + 192 len 32 * _513] = mem[(4 * ceil32(return_data.size)) + 128 len 32 * _513]
                    mem[mem[64] + (32 * _513) + 192] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + (32 * _513) + 224
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[32]
                    emit NewBatchMint(Array(len=_513, data=mem[mem[64] + 192 len (32 * _513) + (32 * ('cd', 68).length) + 32]), (32 * _513) + 192, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], msg.sender);
                else:
                    if uint8(uint8(sub_075dc415 * uint8(cd[36])) / uint8(cd[36])) != sub_075dc415:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if uint8(sub_075dc415 * uint8(cd[36])) != ('cd', 68).length:
                        revert with 0, 'Invalid chosen numbers'
                    require ext_code.size(this.address)
                    staticcall this.address.0xdccda096 with:
                            gas gas_remaining wei
                           args cd[4], uint8(cd[36])
                    mem[96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[ceil32(return_data.size) + 100] = msg.sender
                    mem[ceil32(return_data.size) + 132] = this.address
                    mem[ceil32(return_data.size) + 164] = ext_call.return_data[64]
                    require ext_code.size(stor2)
                    call stor2.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[64]
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 96] = 0x5e3261d000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 132] = cd[4]
                    mem[(2 * ceil32(return_data.size)) + 164] = uint8(cd[36])
                    mem[(2 * ceil32(return_data.size)) + 196] = 160
                    mem[(2 * ceil32(return_data.size)) + 260] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = (2 * ceil32(return_data.size)) + 292
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 228] = sub_075dc415
                    require ext_code.size(stor3)
                    call stor3.0x5e3261d0 with:
                         gas gas_remaining wei
                        args msg.sender, cd[4], cd[36] << 248, Array(len=('cd', 68).length, data=mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]), sub_075dc415
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _496 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 96 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                    _512 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                    mem[(4 * ceil32(return_data.size)) + 96] = _512
                    require return_data.size >= _496 + (32 * _512) + 32
                    mem[(4 * ceil32(return_data.size)) + 128 len 32 * _512] = mem[(2 * ceil32(return_data.size)) + _496 + 128 len 32 * _512]
                    _640 = mem[64]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = _512
                    mem[mem[64] + 192 len 32 * _512] = mem[(4 * ceil32(return_data.size)) + 128 len 32 * _512]
                    mem[mem[64] + 32] = (32 * _512) + 192
                    mem[mem[64] + (32 * _512) + 192] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + (32 * _512) + 224
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_640 + 64] = ext_call.return_data[0]
                    mem[_640 + 96] = ext_call.return_data[32]
                    mem[_640 + 128] = ext_call.return_data[64]
                    emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                      mem[mem[64] len _640 + (32 * _512) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                      msg.sender,
            else:
                uint8(stor6[cd[4]].field_256) = 1
                mem[0] = cd[4]
                mem[32] = 6
                require uint8(stor6[cd[4]].field_256) <= 3
                if uint8(stor6[cd[4]].field_256) != 1:
                    revert with 0, 'Lottery not in state for mint'
                if uint8(cd[36]) > 50:
                    revert with 0, 'Batch mint too large'
                if not uint8(cd[36]):
                    if ('cd', 68).length != 0:
                        revert with 0, 'Invalid chosen numbers'
                    require ext_code.size(this.address)
                    staticcall this.address.0xdccda096 with:
                            gas gas_remaining wei
                           args cd[4], uint8(cd[36])
                    mem[96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[ceil32(return_data.size) + 100] = msg.sender
                    mem[ceil32(return_data.size) + 132] = this.address
                    mem[ceil32(return_data.size) + 164] = ext_call.return_data[64]
                    require ext_code.size(stor2)
                    call stor2.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[64]
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 96] = 0x5e3261d000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 132] = cd[4]
                    mem[(2 * ceil32(return_data.size)) + 164] = uint8(cd[36])
                    mem[(2 * ceil32(return_data.size)) + 196] = 160
                    mem[(2 * ceil32(return_data.size)) + 260] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = (2 * ceil32(return_data.size)) + 292
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 228] = sub_075dc415
                    require ext_code.size(stor3)
                    call stor3.0x5e3261d0 with:
                         gas gas_remaining wei
                        args msg.sender, cd[4], cd[36] << 248, Array(len=('cd', 68).length, data=mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]), sub_075dc415
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _499 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 96 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                    _515 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                    mem[(4 * ceil32(return_data.size)) + 96] = _515
                    require return_data.size >= _499 + (32 * _515) + 32
                    mem[(4 * ceil32(return_data.size)) + 128 len 32 * _515] = mem[(2 * ceil32(return_data.size)) + _499 + 128 len 32 * _515]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = _515
                    mem[mem[64] + 192 len 32 * _515] = mem[(4 * ceil32(return_data.size)) + 128 len 32 * _515]
                    mem[mem[64] + (32 * _515) + 192] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + (32 * _515) + 224
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[32]
                    emit NewBatchMint(Array(len=_515, data=mem[mem[64] + 192 len (32 * _515) + (32 * ('cd', 68).length) + 32]), (32 * _515) + 192, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], msg.sender);
                else:
                    if uint8(uint8(sub_075dc415 * uint8(cd[36])) / uint8(cd[36])) != sub_075dc415:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if uint8(sub_075dc415 * uint8(cd[36])) != ('cd', 68).length:
                        revert with 0, 'Invalid chosen numbers'
                    require ext_code.size(this.address)
                    staticcall this.address.0xdccda096 with:
                            gas gas_remaining wei
                           args cd[4], uint8(cd[36])
                    mem[96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[ceil32(return_data.size) + 100] = msg.sender
                    mem[ceil32(return_data.size) + 132] = this.address
                    mem[ceil32(return_data.size) + 164] = ext_call.return_data[64]
                    require ext_code.size(stor2)
                    call stor2.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[64]
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 96] = 0x5e3261d000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 132] = cd[4]
                    mem[(2 * ceil32(return_data.size)) + 164] = uint8(cd[36])
                    mem[(2 * ceil32(return_data.size)) + 196] = 160
                    mem[(2 * ceil32(return_data.size)) + 260] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = (2 * ceil32(return_data.size)) + 292
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 228] = sub_075dc415
                    require ext_code.size(stor3)
                    call stor3.0x5e3261d0 with:
                         gas gas_remaining wei
                        args msg.sender, cd[4], cd[36] << 248, Array(len=('cd', 68).length, data=mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]), sub_075dc415
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _498 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 96 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                    _514 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                    mem[(4 * ceil32(return_data.size)) + 96] = _514
                    require return_data.size >= _498 + (32 * _514) + 32
                    mem[(4 * ceil32(return_data.size)) + 128 len 32 * _514] = mem[(2 * ceil32(return_data.size)) + _498 + 128 len 32 * _514]
                    _642 = mem[64]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = _514
                    mem[mem[64] + 192 len 32 * _514] = mem[(4 * ceil32(return_data.size)) + 128 len 32 * _514]
                    mem[mem[64] + 32] = (32 * _514) + 192
                    mem[mem[64] + (32 * _514) + 192] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + (32 * _514) + 224
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_642 + 64] = ext_call.return_data[0]
                    mem[_642 + 96] = ext_call.return_data[32]
                    mem[_642 + 128] = ext_call.return_data[64]
                    emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                      mem[mem[64] len _642 + (32 * _514) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                      msg.sender,
        else:
            require ext_code.size(timerAddress)
            staticcall timerAddress.0x29cb924d with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= stor6[cd[4]].field_1536:
                revert with 0, 'Invalid time for mint:end'
            require uint8(stor6[cd[4]].field_256) <= 3
            if uint8(stor6[cd[4]].field_256):
                mem[0] = cd[4]
                mem[32] = 6
                require uint8(stor6[cd[4]].field_256) <= 3
                if uint8(stor6[cd[4]].field_256) != 1:
                    revert with 0, 'Lottery not in state for mint'
                if uint8(cd[36]) > 50:
                    revert with 0, 'Batch mint too large'
                if not uint8(cd[36]):
                    if ('cd', 68).length != 0:
                        revert with 0, 'Invalid chosen numbers'
                    require ext_code.size(this.address)
                    staticcall this.address.0xdccda096 with:
                            gas gas_remaining wei
                           args cd[4], uint8(cd[36])
                    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 132] = this.address
                    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[64]
                    require ext_code.size(stor2)
                    call stor2.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[64]
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 96] = 0x5e3261d000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 132] = cd[4]
                    mem[(4 * ceil32(return_data.size)) + 164] = uint8(cd[36])
                    mem[(4 * ceil32(return_data.size)) + 196] = 160
                    mem[(4 * ceil32(return_data.size)) + 260] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = (4 * ceil32(return_data.size)) + 292
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 228] = sub_075dc415
                    require ext_code.size(stor3)
                    call stor3.0x5e3261d0 with:
                         gas gas_remaining wei
                        args msg.sender, cd[4], cd[36] << 248, Array(len=('cd', 68).length, data=mem[(4 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]), sub_075dc415
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _501 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 96 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                    _517 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                    mem[(6 * ceil32(return_data.size)) + 96] = _517
                    require return_data.size >= _501 + (32 * _517) + 32
                    mem[(6 * ceil32(return_data.size)) + 128 len 32 * _517] = mem[(4 * ceil32(return_data.size)) + _501 + 128 len 32 * _517]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = _517
                    mem[mem[64] + 192 len 32 * _517] = mem[(6 * ceil32(return_data.size)) + 128 len 32 * _517]
                    mem[mem[64] + (32 * _517) + 192] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + (32 * _517) + 224
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[32]
                    emit NewBatchMint(Array(len=_517, data=mem[mem[64] + 192 len (32 * _517) + (32 * ('cd', 68).length) + 32]), (32 * _517) + 192, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], msg.sender);
                else:
                    if uint8(uint8(sub_075dc415 * uint8(cd[36])) / uint8(cd[36])) != sub_075dc415:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if uint8(sub_075dc415 * uint8(cd[36])) != ('cd', 68).length:
                        revert with 0, 'Invalid chosen numbers'
                    require ext_code.size(this.address)
                    staticcall this.address.0xdccda096 with:
                            gas gas_remaining wei
                           args cd[4], uint8(cd[36])
                    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 132] = this.address
                    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[64]
                    require ext_code.size(stor2)
                    call stor2.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[64]
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 96] = 0x5e3261d000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 132] = cd[4]
                    mem[(4 * ceil32(return_data.size)) + 164] = uint8(cd[36])
                    mem[(4 * ceil32(return_data.size)) + 196] = 160
                    mem[(4 * ceil32(return_data.size)) + 260] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = (4 * ceil32(return_data.size)) + 292
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 228] = sub_075dc415
                    require ext_code.size(stor3)
                    call stor3.0x5e3261d0 with:
                         gas gas_remaining wei
                        args msg.sender, cd[4], cd[36] << 248, Array(len=('cd', 68).length, data=mem[(4 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]), sub_075dc415
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _500 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 96 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                    _516 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                    mem[(6 * ceil32(return_data.size)) + 96] = _516
                    require return_data.size >= _500 + (32 * _516) + 32
                    mem[(6 * ceil32(return_data.size)) + 128 len 32 * _516] = mem[(4 * ceil32(return_data.size)) + _500 + 128 len 32 * _516]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = _516
                    mem[mem[64] + 192 len 32 * _516] = mem[(6 * ceil32(return_data.size)) + 128 len 32 * _516]
                    mem[mem[64] + (32 * _516) + 192] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + (32 * _516) + 224
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[32]
                    emit NewBatchMint(Array(len=_516, data=mem[mem[64] + 192 len (32 * _516) + (32 * ('cd', 68).length) + 32]), (32 * _516) + 192, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], msg.sender);
            else:
                uint8(stor6[cd[4]].field_256) = 1
                mem[0] = cd[4]
                mem[32] = 6
                require uint8(stor6[cd[4]].field_256) <= 3
                if uint8(stor6[cd[4]].field_256) != 1:
                    revert with 0, 'Lottery not in state for mint'
                if uint8(cd[36]) > 50:
                    revert with 0, 'Batch mint too large'
                if uint8(cd[36]):
                    if uint8(uint8(sub_075dc415 * uint8(cd[36])) / uint8(cd[36])) != sub_075dc415:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if uint8(sub_075dc415 * uint8(cd[36])) != ('cd', 68).length:
                        revert with 0, 'Invalid chosen numbers'
                    require ext_code.size(this.address)
                    staticcall this.address.0xdccda096 with:
                            gas gas_remaining wei
                           args cd[4], uint8(cd[36])
                    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 132] = this.address
                    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[64]
                    require ext_code.size(stor2)
                    call stor2.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[64]
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 96] = 0x5e3261d000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 132] = cd[4]
                    mem[(4 * ceil32(return_data.size)) + 164] = uint8(cd[36])
                    mem[(4 * ceil32(return_data.size)) + 196] = 160
                    mem[(4 * ceil32(return_data.size)) + 260] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = (4 * ceil32(return_data.size)) + 292
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 228] = sub_075dc415
                    require ext_code.size(stor3)
                    call stor3.0x5e3261d0 with:
                         gas gas_remaining wei
                        args msg.sender, cd[4], cd[36] << 248, Array(len=('cd', 68).length, data=mem[(4 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]), sub_075dc415
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _502 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 96 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                    _518 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                    mem[(6 * ceil32(return_data.size)) + 96] = _518
                    require return_data.size >= _502 + (32 * _518) + 32
                    mem[(6 * ceil32(return_data.size)) + 128 len 32 * _518] = mem[(4 * ceil32(return_data.size)) + _502 + 128 len 32 * _518]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = _518
                    mem[mem[64] + 192 len 32 * _518] = mem[(6 * ceil32(return_data.size)) + 128 len 32 * _518]
                    mem[mem[64] + (32 * _518) + 192] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + (32 * _518) + 224
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[32]
                    emit NewBatchMint(Array(len=_518, data=mem[mem[64] + 192 len (32 * _518) + (32 * ('cd', 68).length) + 32]), (32 * _518) + 192, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], msg.sender);
                else:
                    if ('cd', 68).length != 0:
                        revert with 0, 'Invalid chosen numbers'
                    require ext_code.size(this.address)
                    staticcall this.address.0xdccda096 with:
                            gas gas_remaining wei
                           args cd[4], uint8(cd[36])
                    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 132] = this.address
                    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[64]
                    require ext_code.size(stor2)
                    call stor2.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[64]
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 96] = 0x5e3261d000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 132] = cd[4]
                    mem[(4 * ceil32(return_data.size)) + 164] = uint8(cd[36])
                    mem[(4 * ceil32(return_data.size)) + 196] = 160
                    mem[(4 * ceil32(return_data.size)) + 260] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = (4 * ceil32(return_data.size)) + 292
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 228] = sub_075dc415
                    require ext_code.size(stor3)
                    call stor3.0x5e3261d0 with:
                         gas gas_remaining wei
                        args msg.sender, cd[4], cd[36] << 248, Array(len=('cd', 68).length, data=mem[(4 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]), sub_075dc415
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _503 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 96 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                    _519 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                    mem[(6 * ceil32(return_data.size)) + 96] = _519
                    require return_data.size >= _503 + (32 * _519) + 32
                    mem[(6 * ceil32(return_data.size)) + 128 len 32 * _519] = mem[(4 * ceil32(return_data.size)) + _503 + 128 len 32 * _519]
                    _647 = mem[64]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = _519
                    mem[mem[64] + 192 len 32 * _519] = mem[(6 * ceil32(return_data.size)) + 128 len 32 * _519]
                    mem[mem[64] + 32] = (32 * _519) + 192
                    mem[mem[64] + (32 * _519) + 192] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + (32 * _519) + 224
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_647 + 64] = ext_call.return_data[0]
                    mem[_647 + 96] = ext_call.return_data[32]
                    mem[_647 + 128] = ext_call.return_data[64]
                    emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                      mem[mem[64] len _647 + (32 * _519) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                      msg.sender,
    else:
        require ext_code.size(timerAddress)
        staticcall timerAddress.0x29cb924d with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < stor6[cd[4]].field_1280:
            revert with 0, 'Invalid time for mint:start'
        if not timerAddress:
            if block.timestamp >= stor6[cd[4]].field_1536:
                revert with 0, 'Invalid time for mint:end'
            require uint8(stor6[cd[4]].field_256) <= 3
            if uint8(stor6[cd[4]].field_256):
                mem[0] = cd[4]
                mem[32] = 6
                require uint8(stor6[cd[4]].field_256) <= 3
                if uint8(stor6[cd[4]].field_256) != 1:
                    revert with 0, 'Lottery not in state for mint'
                if uint8(cd[36]) > 50:
                    revert with 0, 'Batch mint too large'
                if not uint8(cd[36]):
                    if ('cd', 68).length != 0:
                        revert with 0, 'Invalid chosen numbers'
                    require ext_code.size(this.address)
                    staticcall this.address.0xdccda096 with:
                            gas gas_remaining wei
                           args cd[4], uint8(cd[36])
                    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 132] = this.address
                    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[64]
                    require ext_code.size(stor2)
                    call stor2.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[64]
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 96] = 0x5e3261d000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 132] = cd[4]
                    mem[(4 * ceil32(return_data.size)) + 164] = uint8(cd[36])
                    mem[(4 * ceil32(return_data.size)) + 196] = 160
                    mem[(4 * ceil32(return_data.size)) + 260] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = (4 * ceil32(return_data.size)) + 292
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 228] = sub_075dc415
                    require ext_code.size(stor3)
                    call stor3.0x5e3261d0 with:
                         gas gas_remaining wei
                        args msg.sender, cd[4], cd[36] << 248, Array(len=('cd', 68).length, data=mem[(4 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]), sub_075dc415
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _505 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 96 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                    _521 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                    mem[(6 * ceil32(return_data.size)) + 96] = _521
                    require return_data.size >= _505 + (32 * _521) + 32
                    mem[(6 * ceil32(return_data.size)) + 128 len 32 * _521] = mem[(4 * ceil32(return_data.size)) + _505 + 128 len 32 * _521]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = _521
                    mem[mem[64] + 192 len 32 * _521] = mem[(6 * ceil32(return_data.size)) + 128 len 32 * _521]
                    mem[mem[64] + (32 * _521) + 192] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + (32 * _521) + 224
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[32]
                    emit NewBatchMint(Array(len=_521, data=mem[mem[64] + 192 len (32 * _521) + (32 * ('cd', 68).length) + 32]), (32 * _521) + 192, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], msg.sender);
                else:
                    if uint8(uint8(sub_075dc415 * uint8(cd[36])) / uint8(cd[36])) != sub_075dc415:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if uint8(sub_075dc415 * uint8(cd[36])) != ('cd', 68).length:
                        revert with 0, 'Invalid chosen numbers'
                    require ext_code.size(this.address)
                    staticcall this.address.0xdccda096 with:
                            gas gas_remaining wei
                           args cd[4], uint8(cd[36])
                    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 132] = this.address
                    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[64]
                    require ext_code.size(stor2)
                    call stor2.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[64]
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 96] = 0x5e3261d000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 132] = cd[4]
                    mem[(4 * ceil32(return_data.size)) + 164] = uint8(cd[36])
                    mem[(4 * ceil32(return_data.size)) + 196] = 160
                    mem[(4 * ceil32(return_data.size)) + 260] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = (4 * ceil32(return_data.size)) + 292
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 228] = sub_075dc415
                    require ext_code.size(stor3)
                    call stor3.0x5e3261d0 with:
                         gas gas_remaining wei
                        args msg.sender, cd[4], cd[36] << 248, Array(len=('cd', 68).length, data=mem[(4 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]), sub_075dc415
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _504 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 96 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                    _520 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                    mem[(6 * ceil32(return_data.size)) + 96] = _520
                    require return_data.size >= _504 + (32 * _520) + 32
                    mem[(6 * ceil32(return_data.size)) + 128 len 32 * _520] = mem[(4 * ceil32(return_data.size)) + _504 + 128 len 32 * _520]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = _520
                    mem[mem[64] + 192 len 32 * _520] = mem[(6 * ceil32(return_data.size)) + 128 len 32 * _520]
                    mem[mem[64] + (32 * _520) + 192] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + (32 * _520) + 224
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[32]
                    emit NewBatchMint(Array(len=_520, data=mem[mem[64] + 192 len (32 * _520) + (32 * ('cd', 68).length) + 32]), (32 * _520) + 192, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], msg.sender);
            else:
                uint8(stor6[cd[4]].field_256) = 1
                mem[0] = cd[4]
                mem[32] = 6
                require uint8(stor6[cd[4]].field_256) <= 3
                if uint8(stor6[cd[4]].field_256) != 1:
                    revert with 0, 'Lottery not in state for mint'
                if uint8(cd[36]) > 50:
                    revert with 0, 'Batch mint too large'
                if not uint8(cd[36]):
                    if ('cd', 68).length != 0:
                        revert with 0, 'Invalid chosen numbers'
                    require ext_code.size(this.address)
                    staticcall this.address.0xdccda096 with:
                            gas gas_remaining wei
                           args cd[4], uint8(cd[36])
                    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 132] = this.address
                    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[64]
                    require ext_code.size(stor2)
                    call stor2.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[64]
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 96] = 0x5e3261d000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 132] = cd[4]
                    mem[(4 * ceil32(return_data.size)) + 164] = uint8(cd[36])
                    mem[(4 * ceil32(return_data.size)) + 196] = 160
                    mem[(4 * ceil32(return_data.size)) + 260] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = (4 * ceil32(return_data.size)) + 292
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 228] = sub_075dc415
                    require ext_code.size(stor3)
                    call stor3.0x5e3261d0 with:
                         gas gas_remaining wei
                        args msg.sender, cd[4], cd[36] << 248, Array(len=('cd', 68).length, data=mem[(4 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]), sub_075dc415
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _507 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 96 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                    _523 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                    mem[(6 * ceil32(return_data.size)) + 96] = _523
                    require return_data.size >= _507 + (32 * _523) + 32
                    mem[(6 * ceil32(return_data.size)) + 128 len 32 * _523] = mem[(4 * ceil32(return_data.size)) + _507 + 128 len 32 * _523]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = _523
                    mem[mem[64] + 192 len 32 * _523] = mem[(6 * ceil32(return_data.size)) + 128 len 32 * _523]
                    mem[mem[64] + (32 * _523) + 192] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + (32 * _523) + 224
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[32]
                    emit NewBatchMint(Array(len=_523, data=mem[mem[64] + 192 len (32 * _523) + (32 * ('cd', 68).length) + 32]), (32 * _523) + 192, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], msg.sender);
                else:
                    if uint8(uint8(sub_075dc415 * uint8(cd[36])) / uint8(cd[36])) != sub_075dc415:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if uint8(sub_075dc415 * uint8(cd[36])) != ('cd', 68).length:
                        revert with 0, 'Invalid chosen numbers'
                    require ext_code.size(this.address)
                    staticcall this.address.0xdccda096 with:
                            gas gas_remaining wei
                           args cd[4], uint8(cd[36])
                    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 132] = this.address
                    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[64]
                    require ext_code.size(stor2)
                    call stor2.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[64]
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 96] = 0x5e3261d000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 132] = cd[4]
                    mem[(4 * ceil32(return_data.size)) + 164] = uint8(cd[36])
                    mem[(4 * ceil32(return_data.size)) + 196] = 160
                    mem[(4 * ceil32(return_data.size)) + 260] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = (4 * ceil32(return_data.size)) + 292
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 228] = sub_075dc415
                    require ext_code.size(stor3)
                    call stor3.0x5e3261d0 with:
                         gas gas_remaining wei
                        args msg.sender, cd[4], cd[36] << 248, Array(len=('cd', 68).length, data=mem[(4 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]), sub_075dc415
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _506 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 96 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                    _522 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                    mem[(6 * ceil32(return_data.size)) + 96] = _522
                    require return_data.size >= _506 + (32 * _522) + 32
                    mem[(6 * ceil32(return_data.size)) + 128 len 32 * _522] = mem[(4 * ceil32(return_data.size)) + _506 + 128 len 32 * _522]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = _522
                    mem[mem[64] + 192 len 32 * _522] = mem[(6 * ceil32(return_data.size)) + 128 len 32 * _522]
                    mem[mem[64] + (32 * _522) + 192] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + (32 * _522) + 224
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[32]
                    emit NewBatchMint(Array(len=_522, data=mem[mem[64] + 192 len (32 * _522) + (32 * ('cd', 68).length) + 32]), (32 * _522) + 192, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], msg.sender);
        else:
            require ext_code.size(timerAddress)
            staticcall timerAddress.0x29cb924d with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= stor6[cd[4]].field_1536:
                revert with 0, 'Invalid time for mint:end'
            require uint8(stor6[cd[4]].field_256) <= 3
            if uint8(stor6[cd[4]].field_256):
                mem[0] = cd[4]
                mem[32] = 6
                require uint8(stor6[cd[4]].field_256) <= 3
                if uint8(stor6[cd[4]].field_256) != 1:
                    revert with 0, 'Lottery not in state for mint'
                if uint8(cd[36]) > 50:
                    revert with 0, 'Batch mint too large'
                if not uint8(cd[36]):
                    if ('cd', 68).length != 0:
                        revert with 0, 'Invalid chosen numbers'
                    require ext_code.size(this.address)
                    staticcall this.address.0xdccda096 with:
                            gas gas_remaining wei
                           args cd[4], uint8(cd[36])
                    mem[(2 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 132] = this.address
                    mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[64]
                    require ext_code.size(stor2)
                    call stor2.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[64]
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(6 * ceil32(return_data.size)) + 96] = 0x5e3261d000000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(6 * ceil32(return_data.size)) + 132] = cd[4]
                    mem[(6 * ceil32(return_data.size)) + 164] = uint8(cd[36])
                    mem[(6 * ceil32(return_data.size)) + 196] = 160
                    mem[(6 * ceil32(return_data.size)) + 260] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = (6 * ceil32(return_data.size)) + 292
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 228] = sub_075dc415
                    require ext_code.size(stor3)
                    call stor3.0x5e3261d0 with:
                         gas gas_remaining wei
                        args msg.sender, cd[4], cd[36] << 248, Array(len=('cd', 68).length, data=mem[(6 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]), sub_075dc415
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (7 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _509 = mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require (6 * ceil32(return_data.size)) + return_data.size + 96 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                    _525 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                    require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                    mem[(7 * ceil32(return_data.size)) + 96] = _525
                    require return_data.size >= _509 + (32 * _525) + 32
                    mem[(7 * ceil32(return_data.size)) + 128 len 32 * _525] = mem[(6 * ceil32(return_data.size)) + _509 + 128 len 32 * _525]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = _525
                    mem[mem[64] + 192 len 32 * _525] = mem[(7 * ceil32(return_data.size)) + 128 len 32 * _525]
                    mem[mem[64] + (32 * _525) + 192] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + (32 * _525) + 224
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[32]
                    emit NewBatchMint(Array(len=_525, data=mem[mem[64] + 192 len (32 * _525) + (32 * ('cd', 68).length) + 32]), (32 * _525) + 192, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], msg.sender);
                else:
                    if uint8(uint8(sub_075dc415 * uint8(cd[36])) / uint8(cd[36])) != sub_075dc415:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if uint8(sub_075dc415 * uint8(cd[36])) != ('cd', 68).length:
                        revert with 0, 'Invalid chosen numbers'
                    require ext_code.size(this.address)
                    staticcall this.address.0xdccda096 with:
                            gas gas_remaining wei
                           args cd[4], uint8(cd[36])
                    mem[(2 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 132] = this.address
                    mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[64]
                    require ext_code.size(stor2)
                    call stor2.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[64]
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(6 * ceil32(return_data.size)) + 96] = 0x5e3261d000000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(6 * ceil32(return_data.size)) + 132] = cd[4]
                    mem[(6 * ceil32(return_data.size)) + 164] = uint8(cd[36])
                    mem[(6 * ceil32(return_data.size)) + 196] = 160
                    mem[(6 * ceil32(return_data.size)) + 260] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = (6 * ceil32(return_data.size)) + 292
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 228] = sub_075dc415
                    require ext_code.size(stor3)
                    call stor3.0x5e3261d0 with:
                         gas gas_remaining wei
                        args msg.sender, cd[4], cd[36] << 248, Array(len=('cd', 68).length, data=mem[(6 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]), sub_075dc415
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (7 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _508 = mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require (6 * ceil32(return_data.size)) + return_data.size + 96 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                    _524 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                    require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                    mem[(7 * ceil32(return_data.size)) + 96] = _524
                    require return_data.size >= _508 + (32 * _524) + 32
                    mem[(7 * ceil32(return_data.size)) + 128 len 32 * _524] = mem[(6 * ceil32(return_data.size)) + _508 + 128 len 32 * _524]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = _524
                    mem[mem[64] + 192 len 32 * _524] = mem[(7 * ceil32(return_data.size)) + 128 len 32 * _524]
                    mem[mem[64] + (32 * _524) + 192] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + (32 * _524) + 224
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[32]
                    emit NewBatchMint(Array(len=_524, data=mem[mem[64] + 192 len (32 * _524) + (32 * ('cd', 68).length) + 32]), (32 * _524) + 192, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], msg.sender);
            else:
                uint8(stor6[cd[4]].field_256) = 1
                mem[0] = cd[4]
                mem[32] = 6
                require uint8(stor6[cd[4]].field_256) <= 3
                if uint8(stor6[cd[4]].field_256) != 1:
                    revert with 0, 'Lottery not in state for mint'
                if uint8(cd[36]) > 50:
                    revert with 0, 'Batch mint too large'
                if not uint8(cd[36]):
                    if ('cd', 68).length != 0:
                        revert with 0, 'Invalid chosen numbers'
                    require ext_code.size(this.address)
                    staticcall this.address.0xdccda096 with:
                            gas gas_remaining wei
                           args cd[4], uint8(cd[36])
                    mem[(2 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 132] = this.address
                    mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[64]
                    require ext_code.size(stor2)
                    call stor2.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[64]
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(6 * ceil32(return_data.size)) + 96] = 0x5e3261d000000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(6 * ceil32(return_data.size)) + 132] = cd[4]
                    mem[(6 * ceil32(return_data.size)) + 164] = uint8(cd[36])
                    mem[(6 * ceil32(return_data.size)) + 196] = 160
                    mem[(6 * ceil32(return_data.size)) + 260] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = (6 * ceil32(return_data.size)) + 292
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 228] = sub_075dc415
                    require ext_code.size(stor3)
                    call stor3.0x5e3261d0 with:
                         gas gas_remaining wei
                        args msg.sender, cd[4], cd[36] << 248, Array(len=('cd', 68).length, data=mem[(6 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]), sub_075dc415
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (7 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _511 = mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require (6 * ceil32(return_data.size)) + return_data.size + 96 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                    _527 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                    require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                    mem[(7 * ceil32(return_data.size)) + 96] = _527
                    require return_data.size >= _511 + (32 * _527) + 32
                    mem[(7 * ceil32(return_data.size)) + 128 len 32 * _527] = mem[(6 * ceil32(return_data.size)) + _511 + 128 len 32 * _527]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = _527
                    mem[mem[64] + 192 len 32 * _527] = mem[(7 * ceil32(return_data.size)) + 128 len 32 * _527]
                    mem[mem[64] + (32 * _527) + 192] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + (32 * _527) + 224
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[32]
                    emit NewBatchMint(Array(len=_527, data=mem[mem[64] + 192 len (32 * _527) + (32 * ('cd', 68).length) + 32]), (32 * _527) + 192, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], msg.sender);
                else:
                    if uint8(uint8(sub_075dc415 * uint8(cd[36])) / uint8(cd[36])) != sub_075dc415:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if uint8(sub_075dc415 * uint8(cd[36])) != ('cd', 68).length:
                        revert with 0, 'Invalid chosen numbers'
                    require ext_code.size(this.address)
                    staticcall this.address.0xdccda096 with:
                            gas gas_remaining wei
                           args cd[4], uint8(cd[36])
                    mem[(2 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 132] = this.address
                    mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[64]
                    require ext_code.size(stor2)
                    call stor2.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[64]
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(6 * ceil32(return_data.size)) + 96] = 0x5e3261d000000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(6 * ceil32(return_data.size)) + 132] = cd[4]
                    mem[(6 * ceil32(return_data.size)) + 164] = uint8(cd[36])
                    mem[(6 * ceil32(return_data.size)) + 196] = 160
                    mem[(6 * ceil32(return_data.size)) + 260] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = (6 * ceil32(return_data.size)) + 292
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 228] = sub_075dc415
                    require ext_code.size(stor3)
                    call stor3.0x5e3261d0 with:
                         gas gas_remaining wei
                        args msg.sender, cd[4], cd[36] << 248, Array(len=('cd', 68).length, data=mem[(6 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]), sub_075dc415
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (7 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _510 = mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require (6 * ceil32(return_data.size)) + return_data.size + 96 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                    _526 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                    require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                    mem[(7 * ceil32(return_data.size)) + 96] = _526
                    require return_data.size >= _510 + (32 * _526) + 32
                    mem[(7 * ceil32(return_data.size)) + 128 len 32 * _526] = mem[(6 * ceil32(return_data.size)) + _510 + 128 len 32 * _526]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = _526
                    mem[mem[64] + 192 len 32 * _526] = mem[(7 * ceil32(return_data.size)) + 128 len 32 * _526]
                    mem[mem[64] + (32 * _526) + 192] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + (32 * _526) + 224
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[32]
                    emit NewBatchMint(Array(len=_526, data=mem[mem[64] + 192 len (32 * _526) + (32 * ('cd', 68).length) + 32]), (32 * _526) + 192, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], msg.sender);
}

function claimReward(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if ext_code.size(msg.sender):
        revert with 0, 'contract not allowed'
    if msg.sender != tx.origin:
        revert with 0, 'proxy contract not allowed'
    if not timerAddress:
        if stor6[arg1].field_1536 > block.timestamp:
            revert with 0, 'Wait till end to claim'
        mem[0] = arg1
        mem[32] = 6
        require uint8(stor6[arg1].field_256) <= 3
        if uint8(stor6[arg1].field_256) != 3:
            revert with 0, 'Winning Numbers not chosen yet'
        mem[100] = arg2
        require ext_code.size(stor3)
        staticcall stor3.0x9d755367 with:
                gas gas_remaining wei
               args arg2
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'Only the owner can claim'
        mem[ceil32(return_data.size) + 100] = arg2
        mem[ceil32(return_data.size) + 132] = arg1
        require ext_code.size(stor3)
        call stor3.0xed06a740 with:
             gas gas_remaining wei
            args arg2, arg1
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Numbers for ticket invalid'
        mem[(2 * ceil32(return_data.size)) + 96] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 100] = arg2
        require ext_code.size(stor3)
        staticcall stor3.0x9839eafd with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _48 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + return_data.size + 96 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127
        _51 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] <= test266151307()
        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 128 <= test266151307()
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 128
        mem[(4 * ceil32(return_data.size)) + 96] = _51
        require return_data.size >= _48 + (32 * _51) + 32
        s = (2 * ceil32(return_data.size)) + _48 + 128
        t = (4 * ceil32(return_data.size)) + 128
        idx = 0
        while idx < _51:
            require mem[s] == mem[s + 30 len 2]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        mem[0] = arg1
        mem[32] = 6
        _878 = mem[64]
        mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
        mem[_878] = stor6[arg1].field_1792
        if not stor6[arg1].field_1792:
            idx = 0
            s = 0
            while idx < stor6[arg1].field_1792:
                require idx < stor6[arg1].field_1792
                require idx < _51
                if mem[(32 * idx) + (4 * ceil32(return_data.size)) + 158 len 2] != mem[(32 * idx) + _878 + 62 len 2]:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = s + 1
                continue 
            if not uint8(s):
                if stor6[arg1].field_2816 < stor6[arg1].field_2816:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg1
                mem[32] = 6
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1799 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1817 = mem[_1799]
                if mem[_1799] >= 0:
                    _1833 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    _1859 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                    mem[64] = mem[64] + 164
                    mem[_1833 + 100] = 32
                    mem[_1833 + 132] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(stor2):
                        revert with 0, 'Address: call to non-contract'
                    _1987 = mem[_1859]
                    mem[_1833 + 164 len ceil32(mem[_1859])] = mem[_1859 + 32 len ceil32(mem[_1859])]
                    if ceil32(_1987) > _1987:
                        mem[_1833 + _1987 + 164] = 0
                    call stor2 with:
                         gas gas_remaining wei
                        args mem[_1833 + 168 len _1987 - 4]
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
                        mem[_1833 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1833 + 196] == bool(mem[_1833 + 196])
                            if not mem[_1833 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    _1834 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _1817
                    _1861 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                    mem[64] = mem[64] + 164
                    mem[_1834 + 100] = 32
                    mem[_1834 + 132] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(stor2):
                        revert with 0, 'Address: call to non-contract'
                    _1988 = mem[_1861]
                    mem[_1834 + 164 len ceil32(mem[_1861])] = mem[_1861 + 32 len ceil32(mem[_1861])]
                    if ceil32(_1988) > _1988:
                        mem[_1834 + _1988 + 164] = 0
                    call stor2 with:
                         gas gas_remaining wei
                        args mem[_1834 + 168 len _1988 - 4]
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
                        mem[_1834 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1834 + 196] == bool(mem[_1834 + 196])
                            if not mem[_1834 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if 1 == uint8(s):
                    if stor6[arg1].field_2816 < stor6[arg1].field_2816:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = arg1
                    mem[32] = 6
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1811 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1823 = mem[_1811]
                    if mem[_1811] >= 0:
                        _1846 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        _1886 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                        mem[64] = mem[64] + 164
                        mem[_1846 + 100] = 32
                        mem[_1846 + 132] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(stor2):
                            revert with 0, 'Address: call to non-contract'
                        _2018 = mem[_1886]
                        mem[_1846 + 164 len ceil32(mem[_1886])] = mem[_1886 + 32 len ceil32(mem[_1886])]
                        if ceil32(_2018) > _2018:
                            mem[_1846 + _2018 + 164] = 0
                        call stor2 with:
                             gas gas_remaining wei
                            args mem[_1846 + 168 len _2018 - 4]
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
                            mem[_1846 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1846 + 196] == bool(mem[_1846 + 196])
                                if not mem[_1846 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        _1847 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1823
                        _1888 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                        mem[64] = mem[64] + 164
                        mem[_1847 + 100] = 32
                        mem[_1847 + 132] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(stor2):
                            revert with 0, 'Address: call to non-contract'
                        _2019 = mem[_1888]
                        mem[_1847 + 164 len ceil32(mem[_1888])] = mem[_1888 + 32 len ceil32(mem[_1888])]
                        if ceil32(_2019) > _2019:
                            mem[_1847 + _2019 + 164] = 0
                        call stor2 with:
                             gas gas_remaining wei
                            args mem[_1847 + 168 len _2019 - 4]
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
                            mem[_1847 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1847 + 196] == bool(mem[_1847 + 196])
                                if not mem[_1847 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require uint8(s - 1) < stor6[arg1].field_1024
                    require uint8(s - 1) < stor6[arg1].field_2048
                    if not stor6[arg1].field_512:
                        if stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                        if (0 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]) + stor6[arg1].field_2816 < stor6[arg1].field_2816:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = arg1
                        mem[32] = 6
                        stor6[arg1].field_2816 += 0 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2)
                        staticcall stor2.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2017 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2049 = mem[_2017]
                        if mem[_2017] >= 0 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]:
                            _2089 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = 0 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                            _2141 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                            mem[64] = mem[64] + 164
                            mem[_2089 + 100] = 32
                            mem[_2089 + 132] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(stor2):
                                revert with 0, 'Address: call to non-contract'
                            _2499 = mem[_2141]
                            mem[_2089 + 164 len ceil32(mem[_2141])] = mem[_2141 + 32 len ceil32(mem[_2141])]
                            if ceil32(_2499) > _2499:
                                mem[_2089 + _2499 + 164] = 0
                            call stor2 with:
                                 gas gas_remaining wei
                                args mem[_2089 + 168 len _2499 - 4]
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
                                mem[_2089 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_2089 + 196] == bool(mem[_2089 + 196])
                                    if not mem[_2089 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            _2090 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2049
                            _2143 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                            mem[64] = mem[64] + 164
                            mem[_2090 + 100] = 32
                            mem[_2090 + 132] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(stor2):
                                revert with 0, 'Address: call to non-contract'
                            _2500 = mem[_2143]
                            mem[_2090 + 164 len ceil32(mem[_2143])] = mem[_2143 + 32 len ceil32(mem[_2143])]
                            if ceil32(_2500) > _2500:
                                mem[_2090 + _2500 + 164] = 0
                            call stor2 with:
                                 gas gas_remaining wei
                                args mem[_2090 + 168 len _2500 - 4]
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
                                mem[_2090 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_2090 + 196] == bool(mem[_2090 + 196])
                                    if not mem[_2090 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / stor6[arg1].field_512 != stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                        if (stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / 100 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]) + stor6[arg1].field_2816 < stor6[arg1].field_2816:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = arg1
                        mem[32] = 6
                        stor6[arg1].field_2816 += stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / 100 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2)
                        staticcall stor2.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2035 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2067 = mem[_2035]
                        if mem[_2035] >= stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / 100 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]:
                            _2107 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / 100 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                            _2179 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                            mem[64] = mem[64] + 164
                            mem[_2107 + 100] = 32
                            mem[_2107 + 132] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(stor2):
                                revert with 0, 'Address: call to non-contract'
                            _2567 = mem[_2179]
                            mem[_2107 + 164 len ceil32(mem[_2179])] = mem[_2179 + 32 len ceil32(mem[_2179])]
                            if ceil32(_2567) > _2567:
                                mem[_2107 + _2567 + 164] = 0
                            call stor2 with:
                                 gas gas_remaining wei
                                args mem[_2107 + 168 len _2567 - 4]
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
                                mem[_2107 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_2107 + 196] == bool(mem[_2107 + 196])
                                    if not mem[_2107 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            _2108 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2067
                            _2181 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                            mem[64] = mem[64] + 164
                            mem[_2108 + 100] = 32
                            mem[_2108 + 132] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(stor2):
                                revert with 0, 'Address: call to non-contract'
                            _2568 = mem[_2181]
                            mem[_2108 + 164 len ceil32(mem[_2181])] = mem[_2181 + 32 len ceil32(mem[_2181])]
                            if ceil32(_2568) > _2568:
                                mem[_2108 + _2568 + 164] = 0
                            call stor2 with:
                                 gas gas_remaining wei
                                args mem[_2108 + 168 len _2568 - 4]
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
                                mem[_2108 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_2108 + 196] == bool(mem[_2108 + 196])
                                    if not mem[_2108 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_878 + 32] = uint16(stor6[arg1][7].field_0)
            if (32 * stor6[arg1].field_1792) + 32 <= 64:
                idx = 0
                s = 0
                while idx < stor6[arg1].field_1792:
                    require idx < stor6[arg1].field_1792
                    require idx < _51
                    if mem[(32 * idx) + (4 * ceil32(return_data.size)) + 158 len 2] != mem[(32 * idx) + _878 + 62 len 2]:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = s + 1
                    continue 
                if not uint8(s):
                    if stor6[arg1].field_2816 < stor6[arg1].field_2816:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = arg1
                    mem[32] = 6
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1803 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1819 = mem[_1803]
                    if mem[_1803] >= 0:
                        _1836 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        _1865 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                        mem[64] = mem[64] + 164
                        mem[_1836 + 100] = 32
                        mem[_1836 + 132] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(stor2):
                            revert with 0, 'Address: call to non-contract'
                        _1994 = mem[_1865]
                        mem[_1836 + 164 len ceil32(mem[_1865])] = mem[_1865 + 32 len ceil32(mem[_1865])]
                        if ceil32(_1994) > _1994:
                            mem[_1836 + _1994 + 164] = 0
                        call stor2 with:
                             gas gas_remaining wei
                            args mem[_1836 + 168 len _1994 - 4]
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
                            mem[_1836 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1836 + 196] == bool(mem[_1836 + 196])
                                if not mem[_1836 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        _1837 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1819
                        _1867 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                        mem[64] = mem[64] + 164
                        mem[_1837 + 100] = 32
                        mem[_1837 + 132] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(stor2):
                            revert with 0, 'Address: call to non-contract'
                        _1995 = mem[_1867]
                        mem[_1837 + 164 len ceil32(mem[_1867])] = mem[_1867 + 32 len ceil32(mem[_1867])]
                        if ceil32(_1995) > _1995:
                            mem[_1837 + _1995 + 164] = 0
                        call stor2 with:
                             gas gas_remaining wei
                            args mem[_1837 + 168 len _1995 - 4]
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
                            mem[_1837 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1837 + 196] == bool(mem[_1837 + 196])
                                if not mem[_1837 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if 1 == uint8(s):
                        if stor6[arg1].field_2816 < stor6[arg1].field_2816:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = arg1
                        mem[32] = 6
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2)
                        staticcall stor2.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1813 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1824 = mem[_1813]
                        if mem[_1813] >= 0:
                            _1850 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = 0
                            _1893 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                            mem[64] = mem[64] + 164
                            mem[_1850 + 100] = 32
                            mem[_1850 + 132] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(stor2):
                                revert with 0, 'Address: call to non-contract'
                            _2023 = mem[_1893]
                            mem[_1850 + 164 len ceil32(mem[_1893])] = mem[_1893 + 32 len ceil32(mem[_1893])]
                            if ceil32(_2023) > _2023:
                                mem[_1850 + _2023 + 164] = 0
                            call stor2 with:
                                 gas gas_remaining wei
                                args mem[_1850 + 168 len _2023 - 4]
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
                                mem[_1850 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_1850 + 196] == bool(mem[_1850 + 196])
                                    if not mem[_1850 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            _1851 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1824
                            _1895 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                            mem[64] = mem[64] + 164
                            mem[_1851 + 100] = 32
                            mem[_1851 + 132] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(stor2):
                                revert with 0, 'Address: call to non-contract'
                            _2024 = mem[_1895]
                            mem[_1851 + 164 len ceil32(mem[_1895])] = mem[_1895 + 32 len ceil32(mem[_1895])]
                            if ceil32(_2024) > _2024:
                                mem[_1851 + _2024 + 164] = 0
                            call stor2 with:
                                 gas gas_remaining wei
                                args mem[_1851 + 168 len _2024 - 4]
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
                                mem[_1851 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_1851 + 196] == bool(mem[_1851 + 196])
                                    if not mem[_1851 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require uint8(s - 1) < stor6[arg1].field_1024
                        require uint8(s - 1) < stor6[arg1].field_2048
                        if not stor6[arg1].field_512:
                            if stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                            if (0 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]) + stor6[arg1].field_2816 < stor6[arg1].field_2816:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = arg1
                            mem[32] = 6
                            stor6[arg1].field_2816 += 0 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2022 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2056 = mem[_2022]
                            if mem[_2022] >= 0 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]:
                                _2093 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                                _2151 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                                mem[64] = mem[64] + 164
                                mem[_2093 + 100] = 32
                                mem[_2093 + 132] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(stor2):
                                    revert with 0, 'Address: call to non-contract'
                                _2517 = mem[_2151]
                                mem[_2093 + 164 len ceil32(mem[_2151])] = mem[_2151 + 32 len ceil32(mem[_2151])]
                                if ceil32(_2517) > _2517:
                                    mem[_2093 + _2517 + 164] = 0
                                call stor2 with:
                                     gas gas_remaining wei
                                    args mem[_2093 + 168 len _2517 - 4]
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
                                    mem[_2093 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_2093 + 196] == bool(mem[_2093 + 196])
                                        if not mem[_2093 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                _2094 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _2056
                                _2153 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                                mem[64] = mem[64] + 164
                                mem[_2094 + 100] = 32
                                mem[_2094 + 132] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(stor2):
                                    revert with 0, 'Address: call to non-contract'
                                _2518 = mem[_2153]
                                mem[_2094 + 164 len ceil32(mem[_2153])] = mem[_2153 + 32 len ceil32(mem[_2153])]
                                if ceil32(_2518) > _2518:
                                    mem[_2094 + _2518 + 164] = 0
                                call stor2 with:
                                     gas gas_remaining wei
                                    args mem[_2094 + 168 len _2518 - 4]
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
                                    mem[_2094 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_2094 + 196] == bool(mem[_2094 + 196])
                                        if not mem[_2094 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / stor6[arg1].field_512 != stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                            if (stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / 100 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]) + stor6[arg1].field_2816 < stor6[arg1].field_2816:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = arg1
                            mem[32] = 6
                            stor6[arg1].field_2816 += stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / 100 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2038 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2072 = mem[_2038]
                            if mem[_2038] >= stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / 100 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]:
                                _2117 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / 100 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                                _2187 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                                mem[64] = mem[64] + 164
                                mem[_2117 + 100] = 32
                                mem[_2117 + 132] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(stor2):
                                    revert with 0, 'Address: call to non-contract'
                                _2599 = mem[_2187]
                                mem[_2117 + 164 len ceil32(mem[_2187])] = mem[_2187 + 32 len ceil32(mem[_2187])]
                                if ceil32(_2599) > _2599:
                                    mem[_2117 + _2599 + 164] = 0
                                call stor2 with:
                                     gas gas_remaining wei
                                    args mem[_2117 + 168 len _2599 - 4]
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
                                    mem[_2117 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_2117 + 196] == bool(mem[_2117 + 196])
                                        if not mem[_2117 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                _2118 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _2072
                                _2189 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                                mem[64] = mem[64] + 164
                                mem[_2118 + 100] = 32
                                mem[_2118 + 132] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(stor2):
                                    revert with 0, 'Address: call to non-contract'
                                _2600 = mem[_2189]
                                mem[_2118 + 164 len ceil32(mem[_2189])] = mem[_2189 + 32 len ceil32(mem[_2189])]
                                if ceil32(_2600) > _2600:
                                    mem[_2118 + _2600 + 164] = 0
                                call stor2 with:
                                     gas gas_remaining wei
                                    args mem[_2118 + 168 len _2600 - 4]
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
                                    mem[_2118 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_2118 + 196] == bool(mem[_2118 + 196])
                                        if not mem[_2118 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_878 + 64] = uint16(stor6[arg1][7].field_16)
                idx = _878 + 64
                s = 2
                while _878 + (32 * stor6[arg1].field_1792) > idx:
                    mem[idx + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
                    idx = idx + 32
                    s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
                    continue 
                idx = 0
                s = 0
                while idx < stor6[arg1].field_1792:
                    require idx < stor6[arg1].field_1792
                    require idx < mem[(4 * ceil32(return_data.size)) + 96]
                    if mem[(32 * idx) + (4 * ceil32(return_data.size)) + 158 len 2] != mem[(32 * idx) + _878 + 62 len 2]:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = s + 1
                    continue 
                if not uint8(s):
                    if stor6[arg1].field_2816 < stor6[arg1].field_2816:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = arg1
                    mem[32] = 6
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5113 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5311 = mem[_5113]
                    if mem[_5113] >= 0:
                        _5685 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        _5825 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                        mem[64] = mem[64] + 164
                        mem[_5685 + 100] = 32
                        mem[_5685 + 132] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(stor2):
                            revert with 0, 'Address: call to non-contract'
                        _5929 = mem[_5825]
                        mem[_5685 + 164 len ceil32(mem[_5825])] = mem[_5825 + 32 len ceil32(mem[_5825])]
                        if ceil32(_5929) > _5929:
                            mem[_5685 + _5929 + 164] = 0
                        call stor2 with:
                             gas gas_remaining wei
                            args mem[_5685 + 168 len _5929 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_5685 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_5685 + 196] == bool(mem[_5685 + 196])
                                if not mem[_5685 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        _5686 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _5311
                        _5827 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                        mem[64] = mem[64] + 164
                        mem[_5686 + 100] = 32
                        mem[_5686 + 132] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(stor2):
                            revert with 0, 'Address: call to non-contract'
                        _5930 = mem[_5827]
                        mem[_5686 + 164 len ceil32(mem[_5827])] = mem[_5827 + 32 len ceil32(mem[_5827])]
                        if ceil32(_5930) > _5930:
                            mem[_5686 + _5930 + 164] = 0
                        call stor2 with:
                             gas gas_remaining wei
                            args mem[_5686 + 168 len _5930 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_5686 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_5686 + 196] == bool(mem[_5686 + 196])
                                if not mem[_5686 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if 1 == uint8(s):
                        if stor6[arg1].field_2816 < stor6[arg1].field_2816:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = arg1
                        mem[32] = 6
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2)
                        staticcall stor2.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5229 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5441 = mem[_5229]
                        if mem[_5229] >= 0:
                            _5756 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = 0
                            _5888 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                            mem[64] = mem[64] + 164
                            mem[_5756 + 100] = 32
                            mem[_5756 + 132] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(stor2):
                                revert with 0, 'Address: call to non-contract'
                            _5946 = mem[_5888]
                            mem[_5756 + 164 len ceil32(mem[_5888])] = mem[_5888 + 32 len ceil32(mem[_5888])]
                            if ceil32(_5946) > _5946:
                                mem[_5756 + _5946 + 164] = 0
                            call stor2 with:
                                 gas gas_remaining wei
                                args mem[_5756 + 168 len _5946 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[_5756 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_5756 + 196] == bool(mem[_5756 + 196])
                                    if not mem[_5756 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            _5757 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _5441
                            _5890 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                            mem[64] = mem[64] + 164
                            mem[_5757 + 100] = 32
                            mem[_5757 + 132] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(stor2):
                                revert with 0, 'Address: call to non-contract'
                            _5947 = mem[_5890]
                            mem[_5757 + 164 len ceil32(mem[_5890])] = mem[_5890 + 32 len ceil32(mem[_5890])]
                            if ceil32(_5947) > _5947:
                                mem[_5757 + _5947 + 164] = 0
                            call stor2 with:
                                 gas gas_remaining wei
                                args mem[_5757 + 168 len _5947 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[_5757 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_5757 + 196] == bool(mem[_5757 + 196])
                                    if not mem[_5757 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require uint8(s - 1) < stor6[arg1].field_1024
                        require uint8(s - 1) < stor6[arg1].field_2048
                        if not stor6[arg1].field_512:
                            if stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                            if (0 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]) + stor6[arg1].field_2816 < stor6[arg1].field_2816:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = arg1
                            mem[32] = 6
                            stor6[arg1].field_2816 += 0 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5945 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5961 = mem[_5945]
                            if mem[_5945] >= 0 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]:
                                _5973 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                                _5997 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                                mem[64] = mem[64] + 164
                                mem[_5973 + 100] = 32
                                mem[_5973 + 132] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(stor2):
                                    revert with 0, 'Address: call to non-contract'
                                _6171 = mem[_5997]
                                mem[_5973 + 164 len ceil32(mem[_5997])] = mem[_5997 + 32 len ceil32(mem[_5997])]
                                if ceil32(_6171) > _6171:
                                    mem[_5973 + _6171 + 164] = 0
                                call stor2 with:
                                     gas gas_remaining wei
                                    args mem[_5973 + 168 len _6171 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[_5973 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_5973 + 196] == bool(mem[_5973 + 196])
                                        if not mem[_5973 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                _5974 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _5961
                                _5999 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                                mem[64] = mem[64] + 164
                                mem[_5974 + 100] = 32
                                mem[_5974 + 132] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(stor2):
                                    revert with 0, 'Address: call to non-contract'
                                _6172 = mem[_5999]
                                mem[_5974 + 164 len ceil32(mem[_5999])] = mem[_5999 + 32 len ceil32(mem[_5999])]
                                if ceil32(_6172) > _6172:
                                    mem[_5974 + _6172 + 164] = 0
                                call stor2 with:
                                     gas gas_remaining wei
                                    args mem[_5974 + 168 len _6172 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[_5974 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_5974 + 196] == bool(mem[_5974 + 196])
                                        if not mem[_5974 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / stor6[arg1].field_512 != stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                            if (stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / 100 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]) + stor6[arg1].field_2816 < stor6[arg1].field_2816:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = arg1
                            mem[32] = 6
                            stor6[arg1].field_2816 += stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / 100 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5953 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5965 = mem[_5953]
                            if mem[_5953] >= stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / 100 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]:
                                _5983 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / 100 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                                _6015 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                                mem[64] = mem[64] + 164
                                mem[_5983 + 100] = 32
                                mem[_5983 + 132] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(stor2):
                                    revert with 0, 'Address: call to non-contract'
                                _6203 = mem[_6015]
                                mem[_5983 + 164 len ceil32(mem[_6015])] = mem[_6015 + 32 len ceil32(mem[_6015])]
                                if ceil32(_6203) > _6203:
                                    mem[_5983 + _6203 + 164] = 0
                                call stor2 with:
                                     gas gas_remaining wei
                                    args mem[_5983 + 168 len _6203 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[_5983 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_5983 + 196] == bool(mem[_5983 + 196])
                                        if not mem[_5983 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                _5984 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _5965
                                _6017 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                                mem[64] = mem[64] + 164
                                mem[_5984 + 100] = 32
                                mem[_5984 + 132] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(stor2):
                                    revert with 0, 'Address: call to non-contract'
                                _6204 = mem[_6017]
                                mem[_5984 + 164 len ceil32(mem[_6017])] = mem[_6017 + 32 len ceil32(mem[_6017])]
                                if ceil32(_6204) > _6204:
                                    mem[_5984 + _6204 + 164] = 0
                                call stor2 with:
                                     gas gas_remaining wei
                                    args mem[_5984 + 168 len _6204 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[_5984 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_5984 + 196] == bool(mem[_5984 + 196])
                                        if not mem[_5984 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        require ext_code.size(timerAddress)
        staticcall timerAddress.0x29cb924d with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if stor6[arg1].field_1536 > ext_call.return_data[0]:
            revert with 0, 'Wait till end to claim'
        mem[0] = arg1
        mem[32] = 6
        require uint8(stor6[arg1].field_256) <= 3
        if uint8(stor6[arg1].field_256) != 3:
            revert with 0, 'Winning Numbers not chosen yet'
        mem[ceil32(return_data.size) + 100] = arg2
        require ext_code.size(stor3)
        staticcall stor3.0x9d755367 with:
                gas gas_remaining wei
               args arg2
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'Only the owner can claim'
        mem[(2 * ceil32(return_data.size)) + 100] = arg2
        mem[(2 * ceil32(return_data.size)) + 132] = arg1
        require ext_code.size(stor3)
        call stor3.0xed06a740 with:
             gas gas_remaining wei
            args arg2, arg1
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Numbers for ticket invalid'
        mem[(4 * ceil32(return_data.size)) + 96] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 100] = arg2
        require ext_code.size(stor3)
        staticcall stor3.0x9839eafd with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _53 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32
        require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + return_data.size + 96 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127
        _55 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] <= test266151307()
        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 128 <= test266151307()
        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 128
        mem[(6 * ceil32(return_data.size)) + 96] = _55
        require return_data.size >= _53 + (32 * _55) + 32
        s = (4 * ceil32(return_data.size)) + _53 + 128
        t = (6 * ceil32(return_data.size)) + 128
        idx = 0
        while idx < _55:
            require mem[s] == mem[s + 30 len 2]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        mem[0] = arg1
        mem[32] = 6
        _880 = mem[64]
        mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
        mem[_880] = stor6[arg1].field_1792
        if not stor6[arg1].field_1792:
            idx = 0
            s = 0
            while idx < stor6[arg1].field_1792:
                require idx < stor6[arg1].field_1792
                require idx < _55
                if mem[(32 * idx) + (6 * ceil32(return_data.size)) + 158 len 2] != mem[(32 * idx) + _880 + 62 len 2]:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = s + 1
                continue 
            if not uint8(s):
                if stor6[arg1].field_2816 < stor6[arg1].field_2816:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg1
                mem[32] = 6
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1805 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1820 = mem[_1805]
                if mem[_1805] >= 0:
                    _1839 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    _1871 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                    mem[64] = mem[64] + 164
                    mem[_1839 + 100] = 32
                    mem[_1839 + 132] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(stor2):
                        revert with 0, 'Address: call to non-contract'
                    _2001 = mem[_1871]
                    mem[_1839 + 164 len ceil32(mem[_1871])] = mem[_1871 + 32 len ceil32(mem[_1871])]
                    if ceil32(_2001) > _2001:
                        mem[_1839 + _2001 + 164] = 0
                    call stor2 with:
                         gas gas_remaining wei
                        args mem[_1839 + 168 len _2001 - 4]
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
                        mem[_1839 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1839 + 196] == bool(mem[_1839 + 196])
                            if not mem[_1839 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    _1840 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _1820
                    _1873 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                    mem[64] = mem[64] + 164
                    mem[_1840 + 100] = 32
                    mem[_1840 + 132] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(stor2):
                        revert with 0, 'Address: call to non-contract'
                    _2002 = mem[_1873]
                    mem[_1840 + 164 len ceil32(mem[_1873])] = mem[_1873 + 32 len ceil32(mem[_1873])]
                    if ceil32(_2002) > _2002:
                        mem[_1840 + _2002 + 164] = 0
                    call stor2 with:
                         gas gas_remaining wei
                        args mem[_1840 + 168 len _2002 - 4]
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
                        mem[_1840 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1840 + 196] == bool(mem[_1840 + 196])
                            if not mem[_1840 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if 1 == uint8(s):
                    if stor6[arg1].field_2816 < stor6[arg1].field_2816:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = arg1
                    mem[32] = 6
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1814 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1825 = mem[_1814]
                    if mem[_1814] >= 0:
                        _1853 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        _1900 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                        mem[64] = mem[64] + 164
                        mem[_1853 + 100] = 32
                        mem[_1853 + 132] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(stor2):
                            revert with 0, 'Address: call to non-contract'
                        _2028 = mem[_1900]
                        mem[_1853 + 164 len ceil32(mem[_1900])] = mem[_1900 + 32 len ceil32(mem[_1900])]
                        if ceil32(_2028) > _2028:
                            mem[_1853 + _2028 + 164] = 0
                        call stor2 with:
                             gas gas_remaining wei
                            args mem[_1853 + 168 len _2028 - 4]
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
                            mem[_1853 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1853 + 196] == bool(mem[_1853 + 196])
                                if not mem[_1853 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        _1854 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1825
                        _1902 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                        mem[64] = mem[64] + 164
                        mem[_1854 + 100] = 32
                        mem[_1854 + 132] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(stor2):
                            revert with 0, 'Address: call to non-contract'
                        _2029 = mem[_1902]
                        mem[_1854 + 164 len ceil32(mem[_1902])] = mem[_1902 + 32 len ceil32(mem[_1902])]
                        if ceil32(_2029) > _2029:
                            mem[_1854 + _2029 + 164] = 0
                        call stor2 with:
                             gas gas_remaining wei
                            args mem[_1854 + 168 len _2029 - 4]
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
                            mem[_1854 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1854 + 196] == bool(mem[_1854 + 196])
                                if not mem[_1854 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require uint8(s - 1) < stor6[arg1].field_1024
                    require uint8(s - 1) < stor6[arg1].field_2048
                    if not stor6[arg1].field_512:
                        if stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                        if (0 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]) + stor6[arg1].field_2816 < stor6[arg1].field_2816:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = arg1
                        mem[32] = 6
                        stor6[arg1].field_2816 += 0 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2)
                        staticcall stor2.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2027 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2059 = mem[_2027]
                        if mem[_2027] >= 0 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]:
                            _2097 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = 0 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                            _2161 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                            mem[64] = mem[64] + 164
                            mem[_2097 + 100] = 32
                            mem[_2097 + 132] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(stor2):
                                revert with 0, 'Address: call to non-contract'
                            _2531 = mem[_2161]
                            mem[_2097 + 164 len ceil32(mem[_2161])] = mem[_2161 + 32 len ceil32(mem[_2161])]
                            if ceil32(_2531) > _2531:
                                mem[_2097 + _2531 + 164] = 0
                            call stor2 with:
                                 gas gas_remaining wei
                                args mem[_2097 + 168 len _2531 - 4]
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
                                mem[_2097 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_2097 + 196] == bool(mem[_2097 + 196])
                                    if not mem[_2097 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            _2098 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2059
                            _2163 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                            mem[64] = mem[64] + 164
                            mem[_2098 + 100] = 32
                            mem[_2098 + 132] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(stor2):
                                revert with 0, 'Address: call to non-contract'
                            _2532 = mem[_2163]
                            mem[_2098 + 164 len ceil32(mem[_2163])] = mem[_2163 + 32 len ceil32(mem[_2163])]
                            if ceil32(_2532) > _2532:
                                mem[_2098 + _2532 + 164] = 0
                            call stor2 with:
                                 gas gas_remaining wei
                                args mem[_2098 + 168 len _2532 - 4]
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
                                mem[_2098 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_2098 + 196] == bool(mem[_2098 + 196])
                                    if not mem[_2098 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / stor6[arg1].field_512 != stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                        if (stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / 100 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]) + stor6[arg1].field_2816 < stor6[arg1].field_2816:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = arg1
                        mem[32] = 6
                        stor6[arg1].field_2816 += stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / 100 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2)
                        staticcall stor2.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2041 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2075 = mem[_2041]
                        if mem[_2041] >= stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / 100 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]:
                            _2125 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / 100 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                            _2195 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                            mem[64] = mem[64] + 164
                            mem[_2125 + 100] = 32
                            mem[_2125 + 132] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(stor2):
                                revert with 0, 'Address: call to non-contract'
                            _2619 = mem[_2195]
                            mem[_2125 + 164 len ceil32(mem[_2195])] = mem[_2195 + 32 len ceil32(mem[_2195])]
                            if ceil32(_2619) > _2619:
                                mem[_2125 + _2619 + 164] = 0
                            call stor2 with:
                                 gas gas_remaining wei
                                args mem[_2125 + 168 len _2619 - 4]
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
                                mem[_2125 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_2125 + 196] == bool(mem[_2125 + 196])
                                    if not mem[_2125 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            _2126 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2075
                            _2197 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                            mem[64] = mem[64] + 164
                            mem[_2126 + 100] = 32
                            mem[_2126 + 132] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(stor2):
                                revert with 0, 'Address: call to non-contract'
                            _2620 = mem[_2197]
                            mem[_2126 + 164 len ceil32(mem[_2197])] = mem[_2197 + 32 len ceil32(mem[_2197])]
                            if ceil32(_2620) > _2620:
                                mem[_2126 + _2620 + 164] = 0
                            call stor2 with:
                                 gas gas_remaining wei
                                args mem[_2126 + 168 len _2620 - 4]
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
                                mem[_2126 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_2126 + 196] == bool(mem[_2126 + 196])
                                    if not mem[_2126 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_880 + 32] = uint16(stor6[arg1][7].field_0)
            if (32 * stor6[arg1].field_1792) + 32 <= 64:
                idx = 0
                s = 0
                while idx < stor6[arg1].field_1792:
                    require idx < stor6[arg1].field_1792
                    require idx < _55
                    if mem[(32 * idx) + (6 * ceil32(return_data.size)) + 158 len 2] != mem[(32 * idx) + _880 + 62 len 2]:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = s + 1
                    continue 
                if not uint8(s):
                    if stor6[arg1].field_2816 < stor6[arg1].field_2816:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = arg1
                    mem[32] = 6
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1809 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1822 = mem[_1809]
                    if mem[_1809] >= 0:
                        _1842 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        _1877 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                        mem[64] = mem[64] + 164
                        mem[_1842 + 100] = 32
                        mem[_1842 + 132] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(stor2):
                            revert with 0, 'Address: call to non-contract'
                        _2008 = mem[_1877]
                        mem[_1842 + 164 len ceil32(mem[_1877])] = mem[_1877 + 32 len ceil32(mem[_1877])]
                        if ceil32(_2008) > _2008:
                            mem[_1842 + _2008 + 164] = 0
                        call stor2 with:
                             gas gas_remaining wei
                            args mem[_1842 + 168 len _2008 - 4]
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
                            mem[_1842 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1842 + 196] == bool(mem[_1842 + 196])
                                if not mem[_1842 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        _1843 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1822
                        _1879 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                        mem[64] = mem[64] + 164
                        mem[_1843 + 100] = 32
                        mem[_1843 + 132] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(stor2):
                            revert with 0, 'Address: call to non-contract'
                        _2009 = mem[_1879]
                        mem[_1843 + 164 len ceil32(mem[_1879])] = mem[_1879 + 32 len ceil32(mem[_1879])]
                        if ceil32(_2009) > _2009:
                            mem[_1843 + _2009 + 164] = 0
                        call stor2 with:
                             gas gas_remaining wei
                            args mem[_1843 + 168 len _2009 - 4]
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
                            mem[_1843 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1843 + 196] == bool(mem[_1843 + 196])
                                if not mem[_1843 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if 1 == uint8(s):
                        if stor6[arg1].field_2816 < stor6[arg1].field_2816:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = arg1
                        mem[32] = 6
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2)
                        staticcall stor2.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1816 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1826 = mem[_1816]
                        if mem[_1816] >= 0:
                            _1857 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = 0
                            _1907 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                            mem[64] = mem[64] + 164
                            mem[_1857 + 100] = 32
                            mem[_1857 + 132] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(stor2):
                                revert with 0, 'Address: call to non-contract'
                            _2033 = mem[_1907]
                            mem[_1857 + 164 len ceil32(mem[_1907])] = mem[_1907 + 32 len ceil32(mem[_1907])]
                            if ceil32(_2033) > _2033:
                                mem[_1857 + _2033 + 164] = 0
                            call stor2 with:
                                 gas gas_remaining wei
                                args mem[_1857 + 168 len _2033 - 4]
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
                                mem[_1857 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_1857 + 196] == bool(mem[_1857 + 196])
                                    if not mem[_1857 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            _1858 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1826
                            _1909 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                            mem[64] = mem[64] + 164
                            mem[_1858 + 100] = 32
                            mem[_1858 + 132] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(stor2):
                                revert with 0, 'Address: call to non-contract'
                            _2034 = mem[_1909]
                            mem[_1858 + 164 len ceil32(mem[_1909])] = mem[_1909 + 32 len ceil32(mem[_1909])]
                            if ceil32(_2034) > _2034:
                                mem[_1858 + _2034 + 164] = 0
                            call stor2 with:
                                 gas gas_remaining wei
                                args mem[_1858 + 168 len _2034 - 4]
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
                                mem[_1858 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_1858 + 196] == bool(mem[_1858 + 196])
                                    if not mem[_1858 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require uint8(s - 1) < stor6[arg1].field_1024
                        require uint8(s - 1) < stor6[arg1].field_2048
                        if not stor6[arg1].field_512:
                            if stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                            if (0 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]) + stor6[arg1].field_2816 < stor6[arg1].field_2816:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = arg1
                            mem[32] = 6
                            stor6[arg1].field_2816 += 0 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2032 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2066 = mem[_2032]
                            if mem[_2032] >= 0 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]:
                                _2101 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                                _2171 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                                mem[64] = mem[64] + 164
                                mem[_2101 + 100] = 32
                                mem[_2101 + 132] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(stor2):
                                    revert with 0, 'Address: call to non-contract'
                                _2549 = mem[_2171]
                                mem[_2101 + 164 len ceil32(mem[_2171])] = mem[_2171 + 32 len ceil32(mem[_2171])]
                                if ceil32(_2549) > _2549:
                                    mem[_2101 + _2549 + 164] = 0
                                call stor2 with:
                                     gas gas_remaining wei
                                    args mem[_2101 + 168 len _2549 - 4]
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
                                    mem[_2101 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_2101 + 196] == bool(mem[_2101 + 196])
                                        if not mem[_2101 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                _2102 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _2066
                                _2173 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                                mem[64] = mem[64] + 164
                                mem[_2102 + 100] = 32
                                mem[_2102 + 132] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(stor2):
                                    revert with 0, 'Address: call to non-contract'
                                _2550 = mem[_2173]
                                mem[_2102 + 164 len ceil32(mem[_2173])] = mem[_2173 + 32 len ceil32(mem[_2173])]
                                if ceil32(_2550) > _2550:
                                    mem[_2102 + _2550 + 164] = 0
                                call stor2 with:
                                     gas gas_remaining wei
                                    args mem[_2102 + 168 len _2550 - 4]
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
                                    mem[_2102 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_2102 + 196] == bool(mem[_2102 + 196])
                                        if not mem[_2102 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / stor6[arg1].field_512 != stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                            if (stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / 100 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]) + stor6[arg1].field_2816 < stor6[arg1].field_2816:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = arg1
                            mem[32] = 6
                            stor6[arg1].field_2816 += stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / 100 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2044 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2080 = mem[_2044]
                            if mem[_2044] >= stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / 100 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]:
                                _2135 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / 100 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                                _2203 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                                mem[64] = mem[64] + 164
                                mem[_2135 + 100] = 32
                                mem[_2135 + 132] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(stor2):
                                    revert with 0, 'Address: call to non-contract'
                                _2651 = mem[_2203]
                                mem[_2135 + 164 len ceil32(mem[_2203])] = mem[_2203 + 32 len ceil32(mem[_2203])]
                                if ceil32(_2651) > _2651:
                                    mem[_2135 + _2651 + 164] = 0
                                call stor2 with:
                                     gas gas_remaining wei
                                    args mem[_2135 + 168 len _2651 - 4]
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
                                    mem[_2135 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_2135 + 196] == bool(mem[_2135 + 196])
                                        if not mem[_2135 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                _2136 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _2080
                                _2205 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                                mem[64] = mem[64] + 164
                                mem[_2136 + 100] = 32
                                mem[_2136 + 132] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(stor2):
                                    revert with 0, 'Address: call to non-contract'
                                _2652 = mem[_2205]
                                mem[_2136 + 164 len ceil32(mem[_2205])] = mem[_2205 + 32 len ceil32(mem[_2205])]
                                if ceil32(_2652) > _2652:
                                    mem[_2136 + _2652 + 164] = 0
                                call stor2 with:
                                     gas gas_remaining wei
                                    args mem[_2136 + 168 len _2652 - 4]
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
                                    mem[_2136 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_2136 + 196] == bool(mem[_2136 + 196])
                                        if not mem[_2136 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_880 + 64] = uint16(stor6[arg1][7].field_16)
                idx = _880 + 64
                s = 2
                while _880 + (32 * stor6[arg1].field_1792) > idx:
                    mem[idx + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
                    idx = idx + 32
                    s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
                    continue 
                idx = 0
                s = 0
                while idx < stor6[arg1].field_1792:
                    require idx < stor6[arg1].field_1792
                    require idx < mem[(6 * ceil32(return_data.size)) + 96]
                    if mem[(32 * idx) + (6 * ceil32(return_data.size)) + 158 len 2] != mem[(32 * idx) + _880 + 62 len 2]:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = s + 1
                    continue 
                if not uint8(s):
                    if stor6[arg1].field_2816 < stor6[arg1].field_2816:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = arg1
                    mem[32] = 6
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5179 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5376 = mem[_5179]
                    if mem[_5179] >= 0:
                        _5720 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        _5863 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                        mem[64] = mem[64] + 164
                        mem[_5720 + 100] = 32
                        mem[_5720 + 132] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(stor2):
                            revert with 0, 'Address: call to non-contract'
                        _5936 = mem[_5863]
                        mem[_5720 + 164 len ceil32(mem[_5863])] = mem[_5863 + 32 len ceil32(mem[_5863])]
                        if ceil32(_5936) > _5936:
                            mem[_5720 + _5936 + 164] = 0
                        call stor2 with:
                             gas gas_remaining wei
                            args mem[_5720 + 168 len _5936 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_5720 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_5720 + 196] == bool(mem[_5720 + 196])
                                if not mem[_5720 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        _5721 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _5376
                        _5865 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                        mem[64] = mem[64] + 164
                        mem[_5721 + 100] = 32
                        mem[_5721 + 132] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(stor2):
                            revert with 0, 'Address: call to non-contract'
                        _5937 = mem[_5865]
                        mem[_5721 + 164 len ceil32(mem[_5865])] = mem[_5865 + 32 len ceil32(mem[_5865])]
                        if ceil32(_5937) > _5937:
                            mem[_5721 + _5937 + 164] = 0
                        call stor2 with:
                             gas gas_remaining wei
                            args mem[_5721 + 168 len _5937 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_5721 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_5721 + 196] == bool(mem[_5721 + 196])
                                if not mem[_5721 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if 1 == uint8(s):
                        if stor6[arg1].field_2816 < stor6[arg1].field_2816:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = arg1
                        mem[32] = 6
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2)
                        staticcall stor2.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5262 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5506 = mem[_5262]
                        if mem[_5262] >= 0:
                            _5791 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = 0
                            _5895 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                            mem[64] = mem[64] + 164
                            mem[_5791 + 100] = 32
                            mem[_5791 + 132] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(stor2):
                                revert with 0, 'Address: call to non-contract'
                            _5951 = mem[_5895]
                            mem[_5791 + 164 len ceil32(mem[_5895])] = mem[_5895 + 32 len ceil32(mem[_5895])]
                            if ceil32(_5951) > _5951:
                                mem[_5791 + _5951 + 164] = 0
                            call stor2 with:
                                 gas gas_remaining wei
                                args mem[_5791 + 168 len _5951 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[_5791 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_5791 + 196] == bool(mem[_5791 + 196])
                                    if not mem[_5791 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            _5792 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _5506
                            _5897 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                            mem[64] = mem[64] + 164
                            mem[_5792 + 100] = 32
                            mem[_5792 + 132] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(stor2):
                                revert with 0, 'Address: call to non-contract'
                            _5952 = mem[_5897]
                            mem[_5792 + 164 len ceil32(mem[_5897])] = mem[_5897 + 32 len ceil32(mem[_5897])]
                            if ceil32(_5952) > _5952:
                                mem[_5792 + _5952 + 164] = 0
                            call stor2 with:
                                 gas gas_remaining wei
                                args mem[_5792 + 168 len _5952 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[_5792 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_5792 + 196] == bool(mem[_5792 + 196])
                                    if not mem[_5792 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require uint8(s - 1) < stor6[arg1].field_1024
                        require uint8(s - 1) < stor6[arg1].field_2048
                        if not stor6[arg1].field_512:
                            if stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                            if (0 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]) + stor6[arg1].field_2816 < stor6[arg1].field_2816:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = arg1
                            mem[32] = 6
                            stor6[arg1].field_2816 += 0 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5950 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5964 = mem[_5950]
                            if mem[_5950] >= 0 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]:
                                _5977 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                                _6007 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                                mem[64] = mem[64] + 164
                                mem[_5977 + 100] = 32
                                mem[_5977 + 132] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(stor2):
                                    revert with 0, 'Address: call to non-contract'
                                _6185 = mem[_6007]
                                mem[_5977 + 164 len ceil32(mem[_6007])] = mem[_6007 + 32 len ceil32(mem[_6007])]
                                if ceil32(_6185) > _6185:
                                    mem[_5977 + _6185 + 164] = 0
                                call stor2 with:
                                     gas gas_remaining wei
                                    args mem[_5977 + 168 len _6185 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[_5977 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_5977 + 196] == bool(mem[_5977 + 196])
                                        if not mem[_5977 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                _5978 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _5964
                                _6009 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                                mem[64] = mem[64] + 164
                                mem[_5978 + 100] = 32
                                mem[_5978 + 132] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(stor2):
                                    revert with 0, 'Address: call to non-contract'
                                _6186 = mem[_6009]
                                mem[_5978 + 164 len ceil32(mem[_6009])] = mem[_6009 + 32 len ceil32(mem[_6009])]
                                if ceil32(_6186) > _6186:
                                    mem[_5978 + _6186 + 164] = 0
                                call stor2 with:
                                     gas gas_remaining wei
                                    args mem[_5978 + 168 len _6186 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[_5978 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_5978 + 196] == bool(mem[_5978 + 196])
                                        if not mem[_5978 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / stor6[arg1].field_512 != stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                            if (stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / 100 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]) + stor6[arg1].field_2816 < stor6[arg1].field_2816:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = arg1
                            mem[32] = 6
                            stor6[arg1].field_2816 += stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / 100 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5956 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5968 = mem[_5956]
                            if mem[_5956] >= stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / 100 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]:
                                _5991 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] * stor6[arg1].field_512 / 100 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]
                                _6023 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                                mem[64] = mem[64] + 164
                                mem[_5991 + 100] = 32
                                mem[_5991 + 132] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(stor2):
                                    revert with 0, 'Address: call to non-contract'
                                _6223 = mem[_6023]
                                mem[_5991 + 164 len ceil32(mem[_6023])] = mem[_6023 + 32 len ceil32(mem[_6023])]
                                if ceil32(_6223) > _6223:
                                    mem[_5991 + _6223 + 164] = 0
                                call stor2 with:
                                     gas gas_remaining wei
                                    args mem[_5991 + 168 len _6223 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[_5991 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_5991 + 196] == bool(mem[_5991 + 196])
                                        if not mem[_5991 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                _5992 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _5968
                                _6025 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                                mem[64] = mem[64] + 164
                                mem[_5992 + 100] = 32
                                mem[_5992 + 132] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(stor2):
                                    revert with 0, 'Address: call to non-contract'
                                _6224 = mem[_6025]
                                mem[_5992 + 164 len ceil32(mem[_6025])] = mem[_6025 + 32 len ceil32(mem[_6025])]
                                if ceil32(_6224) > _6224:
                                    mem[_5992 + _6224 + 164] = 0
                                call stor2 with:
                                     gas gas_remaining wei
                                    args mem[_5992 + 168 len _6224 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[_5992 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_5992 + 196] == bool(mem[_5992 + 196])
                                        if not mem[_5992 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function drawWinningNumbers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not timerAddress:
        if stor6[arg1].field_1536 > block.timestamp:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot set winning numbers during lottery'
        require uint8(stor6[arg1].field_256) <= 3
        if not uint8(stor6[arg1].field_256):
            uint8(stor6[arg1].field_256) = 2
            emit RequestNumbers(arg1);
            require ext_code.size(stor3)
            staticcall stor3.0xc4e41b22 with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 128] = block.difficulty
            mem[ceil32(return_data.size) + 160] = block.timestamp
            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 96] = 96
            require uint8(stor6[arg1].field_256) <= 3
            if uint8(stor6[arg1].field_256) != 2:
                revert with 0, 'Draw numbers first'
            mem[0] = arg1
            mem[32] = 6
            uint8(stor6[arg1].field_256) = 3
            require sub_075dc415 <= test266151307()
            mem[ceil32(return_data.size) + 224] = sub_075dc415
            mem[64] = ceil32(return_data.size) + (32 * sub_075dc415) + 256
            if not sub_075dc415:
                idx = 0
                while idx < sub_075dc415:
                    mem[mem[64] + 32] = sha3(block.difficulty, block.timestamp, ext_call.return_data[0])
                    mem[mem[64] + 64] = idx
                    _2070 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if maxRange <= 0:
                        revert with 0, 'SafeMath: modulo by zero'
                    require maxRange
                    require idx < mem[ceil32(return_data.size) + 224]
                    mem[(32 * idx) + ceil32(return_data.size) + 256] = uint16(sha3(mem[_2070 + 32 len mem[_2070]]) % maxRange)
                    idx = idx + 1
                    continue 
                mem[32] = 6
                stor6[arg1].field_1792 = mem[ceil32(return_data.size) + 224]
                mem[0] = sha3(arg1, 6) + 7
                if not mem[ceil32(return_data.size) + 224]:
                    s = sha3(sha3(arg1, 6) + 7)
                    while sha3(sha3(arg1, 6) + 7) + (stor6[arg1].field_1792 + 15 / 16) > sub_075dc415:
                        uint8(stor5.field_160) = 0
                        s = sub_075dc415 + 1
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.0xc4e41b22 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4029 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4037 = mem[_4029]
                    mem[0] = arg1
                    mem[32] = 6
                    stor6[arg1].field_2560 = _4037
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4101 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = 1
                    s = mem[_4101]
                    while idx < arg1:
                        t = 1
                        u = 0
                        while uint16(t) < stor6[idx].field_1024:
                            require uint16(t) < stor6[idx].field_2048
                            if stor((Mask(12, 4, t) >> 4) + ('array', 8, ('map', ('var', 0), ('name', 'stor6', 6))))[uint8(t)] <= 0:
                                mem[0] = idx
                                mem[32] = 6
                                t = t + 1
                                u = u
                                continue 
                            require uint16(t) < stor6[idx].field_1024
                            if stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u < u:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = idx
                            mem[32] = 6
                            t = t + 1
                            u = stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u
                            continue 
                        if not stor6[idx].field_512:
                            mem[0] = idx
                            mem[32] = 6
                            if stor6[idx].field_2816 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > stor6[idx].field_2816 + s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = idx + 1
                            s = stor6[idx].field_2816 + s
                            continue 
                        if u * stor6[idx].field_512 / stor6[idx].field_512 != u:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[0] = idx
                        mem[32] = 6
                        if stor6[idx].field_2816 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if u * stor6[idx].field_512 / 100 > stor6[idx].field_2816 + s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        idx = idx + 1
                        s = stor6[idx].field_2816 + s - (u * stor6[idx].field_512 / 100)
                        continue 
                    stor6[arg1].field_512 = s
                    require sub_075dc415 <= test266151307()
                    _5909 = mem[64]
                    mem[mem[64]] = sub_075dc415
                    mem[64] = mem[64] + (32 * sub_075dc415) + 32
                    if not sub_075dc415:
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7838 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7893 = mem[_7838]
                            require mem[_7838] <= test266151307()
                            require _7838 + return_data.size > _7838 + mem[_7838] + 31
                            _7973 = mem[_7838 + mem[_7838]]
                            require mem[_7838 + mem[_7838]] <= test266151307()
                            require (32 * mem[_7838 + mem[_7838]]) + 32 >= 0 and _7838 + ceil32(return_data.size) + (32 * mem[_7838 + mem[_7838]]) + 32 <= test266151307()
                            mem[64] = _7838 + ceil32(return_data.size) + (32 * mem[_7838 + mem[_7838]]) + 32
                            mem[_7838 + ceil32(return_data.size)] = _7973
                            require return_data.size >= _7893 + (32 * _7973) + 32
                            t = _7838 + _7893 + 32
                            u = _7838 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _7973:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _9486 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_9486] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_9486]
                                    require s < mem[_7838 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _7838 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9486 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_9486 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_9486]
                                        require s < mem[_7838 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _7838 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9486 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_9486 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _9486 + 64
                                    t = 2
                                    while _9486 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _12045 = mem[_9486]
                                    s = 0
                                    t = 0
                                    while s < _12045:
                                        require s < mem[_9486]
                                        require s < mem[_7838 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _12045 = mem[_9486]
                                        if mem[(32 * s) + _7838 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9486 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_5909]
                                mem[(32 * uint8(t - 1)) + _5909 + 32] = uint16(mem[(32 * uint8(t - 1)) + _5909 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _7710 = mem[_5909]
                        stor6[arg1].field_2048 = mem[_5909]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _7710:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9613 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_9613]);
                        else:
                            s = 0
                            idx = _5909 + 32
                            while _5909 + (32 * _7710) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_7710) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_7710) >> 4) + Mask(254, 1, None + -(floor32(_7710) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_7710) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12301 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12301]);
                    else:
                        mem[_5909 + 32 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7840 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7894 = mem[_7840]
                            require mem[_7840] <= test266151307()
                            require _7840 + return_data.size > _7840 + mem[_7840] + 31
                            _7974 = mem[_7840 + mem[_7840]]
                            require mem[_7840 + mem[_7840]] <= test266151307()
                            require (32 * mem[_7840 + mem[_7840]]) + 32 >= 0 and _7840 + ceil32(return_data.size) + (32 * mem[_7840 + mem[_7840]]) + 32 <= test266151307()
                            mem[64] = _7840 + ceil32(return_data.size) + (32 * mem[_7840 + mem[_7840]]) + 32
                            mem[_7840 + ceil32(return_data.size)] = _7974
                            require return_data.size >= _7894 + (32 * _7974) + 32
                            t = _7840 + _7894 + 32
                            u = _7840 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _7974:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _9488 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_9488] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_9488]
                                    require s < mem[_7840 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _7840 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9488 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_9488 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_9488]
                                        require s < mem[_7840 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _7840 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9488 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_9488 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _9488 + 64
                                    t = 2
                                    while _9488 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _12046 = mem[_9488]
                                    s = 0
                                    t = 0
                                    while s < _12046:
                                        require s < mem[_9488]
                                        require s < mem[_7840 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _12046 = mem[_9488]
                                        if mem[(32 * s) + _7840 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9488 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_5909]
                                mem[(32 * uint8(t - 1)) + _5909 + 32] = uint16(mem[(32 * uint8(t - 1)) + _5909 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _7713 = mem[_5909]
                        stor6[arg1].field_2048 = mem[_5909]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _7713:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9615 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_9615]);
                        else:
                            s = 0
                            idx = _5909 + 32
                            while _5909 + (32 * _7713) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_7713) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_7713) >> 4) + Mask(254, 1, None + -(floor32(_7713) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_7713) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12302 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12302]);
                else:
                    s = 0
                    idx = ceil32(return_data.size) + 256
                    while ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + 224]) + 256 > idx:
                        stor6[arg1][7].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][7].field_0
                        s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                        idx = idx + 32
                        continue 
                    idx = floor32(mem[ceil32(return_data.size) + 224]) >> 4
                    s = sha3(sha3(arg1, 6) + 7)
                    while idx:
                        stor[s] = !(65535 * 256^idx) and stor[s]
                        idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                        s = (idx + 3 / 32) + s
                        continue 
                    idx = (floor32(mem[ceil32(return_data.size) + 224]) >> 4) + Mask(254, 1, None + -(floor32(mem[ceil32(return_data.size) + 224]) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(mem[ceil32(return_data.size) + 224]) >> 4) + 3) >> 1
                    while stor6[arg1].field_1792 + 15 / 16 > idx:
                        stor6[arg1][idx + 7].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.0xc4e41b22 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7842 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7896 = mem[_7842]
                    mem[0] = arg1
                    mem[32] = 6
                    stor6[arg1].field_2560 = _7896
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8106 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = 1
                    s = mem[_8106]
                    while idx < arg1:
                        t = 1
                        u = 0
                        while uint16(t) < stor6[idx].field_1024:
                            require uint16(t) < stor6[idx].field_2048
                            if stor((Mask(12, 4, t) >> 4) + ('array', 8, ('map', ('var', 0), ('name', 'stor6', 6))))[uint8(t)] <= 0:
                                mem[0] = idx
                                mem[32] = 6
                                t = t + 1
                                u = u
                                continue 
                            require uint16(t) < stor6[idx].field_1024
                            if stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u < u:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = idx
                            mem[32] = 6
                            t = t + 1
                            u = stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u
                            continue 
                        if not stor6[idx].field_512:
                            mem[0] = idx
                            mem[32] = 6
                            if stor6[idx].field_2816 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > stor6[idx].field_2816 + s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = idx + 1
                            s = stor6[idx].field_2816 + s
                            continue 
                        if u * stor6[idx].field_512 / stor6[idx].field_512 != u:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[0] = idx
                        mem[32] = 6
                        if stor6[idx].field_2816 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if u * stor6[idx].field_512 / 100 > stor6[idx].field_2816 + s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        idx = idx + 1
                        s = stor6[idx].field_2816 + s - (u * stor6[idx].field_512 / 100)
                        continue 
                    stor6[arg1].field_512 = s
                    require sub_075dc415 <= test266151307()
                    _9539 = mem[64]
                    mem[mem[64]] = sub_075dc415
                    mem[64] = mem[64] + (32 * sub_075dc415) + 32
                    if not sub_075dc415:
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11200 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11299 = mem[_11200]
                            require mem[_11200] <= test266151307()
                            require _11200 + return_data.size > _11200 + mem[_11200] + 31
                            _11407 = mem[_11200 + mem[_11200]]
                            require mem[_11200 + mem[_11200]] <= test266151307()
                            require (32 * mem[_11200 + mem[_11200]]) + 32 >= 0 and _11200 + ceil32(return_data.size) + (32 * mem[_11200 + mem[_11200]]) + 32 <= test266151307()
                            mem[64] = _11200 + ceil32(return_data.size) + (32 * mem[_11200 + mem[_11200]]) + 32
                            mem[_11200 + ceil32(return_data.size)] = _11407
                            require return_data.size >= _11299 + (32 * _11407) + 32
                            t = _11200 + _11299 + 32
                            u = _11200 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _11407:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _12114 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_12114] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_12114]
                                    require s < mem[_11200 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _11200 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12114 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_12114 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_12114]
                                        require s < mem[_11200 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _11200 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12114 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_12114 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _12114 + 64
                                    t = 2
                                    while _12114 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _13165 = mem[_12114]
                                    s = 0
                                    t = 0
                                    while s < _13165:
                                        require s < mem[_12114]
                                        require s < mem[_11200 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _13165 = mem[_12114]
                                        if mem[(32 * s) + _11200 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12114 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_9539]
                                mem[(32 * uint8(t - 1)) + _9539 + 32] = uint16(mem[(32 * uint8(t - 1)) + _9539 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _10882 = mem[_9539]
                        stor6[arg1].field_2048 = mem[_9539]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _10882:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12303 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12303]);
                        else:
                            s = 0
                            idx = _9539 + 32
                            while _9539 + (32 * _10882) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_10882) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_10882) >> 4) + Mask(254, 1, None + -(floor32(_10882) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_10882) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13309 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_13309]);
                    else:
                        mem[_9539 + 32 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11202 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11300 = mem[_11202]
                            require mem[_11202] <= test266151307()
                            require _11202 + return_data.size > _11202 + mem[_11202] + 31
                            _11408 = mem[_11202 + mem[_11202]]
                            require mem[_11202 + mem[_11202]] <= test266151307()
                            require (32 * mem[_11202 + mem[_11202]]) + 32 >= 0 and _11202 + ceil32(return_data.size) + (32 * mem[_11202 + mem[_11202]]) + 32 <= test266151307()
                            mem[64] = _11202 + ceil32(return_data.size) + (32 * mem[_11202 + mem[_11202]]) + 32
                            mem[_11202 + ceil32(return_data.size)] = _11408
                            require return_data.size >= _11300 + (32 * _11408) + 32
                            t = _11202 + _11300 + 32
                            u = _11202 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _11408:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _12116 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_12116] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_12116]
                                    require s < mem[_11202 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _11202 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12116 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_12116 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_12116]
                                        require s < mem[_11202 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _11202 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12116 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_12116 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _12116 + 64
                                    t = 2
                                    while _12116 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _13166 = mem[_12116]
                                    s = 0
                                    t = 0
                                    while s < _13166:
                                        require s < mem[_12116]
                                        require s < mem[_11202 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _13166 = mem[_12116]
                                        if mem[(32 * s) + _11202 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12116 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_9539]
                                mem[(32 * uint8(t - 1)) + _9539 + 32] = uint16(mem[(32 * uint8(t - 1)) + _9539 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _10885 = mem[_9539]
                        stor6[arg1].field_2048 = mem[_9539]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _10885:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12305 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12305]);
                        else:
                            s = 0
                            idx = _9539 + 32
                            while _9539 + (32 * _10885) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_10885) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_10885) >> 4) + Mask(254, 1, None + -(floor32(_10885) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_10885) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13310 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_13310]);
            else:
                mem[ceil32(return_data.size) + 256 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
                idx = 0
                while idx < sub_075dc415:
                    mem[mem[64] + 32] = sha3(block.difficulty, block.timestamp, ext_call.return_data[0])
                    mem[mem[64] + 64] = idx
                    _2074 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if maxRange <= 0:
                        revert with 0, 'SafeMath: modulo by zero'
                    require maxRange
                    require idx < mem[ceil32(return_data.size) + 224]
                    mem[(32 * idx) + ceil32(return_data.size) + 256] = uint16(sha3(mem[_2074 + 32 len mem[_2074]]) % maxRange)
                    idx = idx + 1
                    continue 
                mem[32] = 6
                stor6[arg1].field_1792 = mem[ceil32(return_data.size) + 224]
                mem[0] = sha3(arg1, 6) + 7
                if not mem[ceil32(return_data.size) + 224]:
                    s = sha3(sha3(arg1, 6) + 7)
                    while sha3(sha3(arg1, 6) + 7) + (stor6[arg1].field_1792 + 15 / 16) > sub_075dc415:
                        uint8(stor5.field_160) = 0
                        s = sub_075dc415 + 1
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.0xc4e41b22 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4030 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4038 = mem[_4030]
                    mem[0] = arg1
                    mem[32] = 6
                    stor6[arg1].field_2560 = _4038
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4103 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = 1
                    s = mem[_4103]
                    while idx < arg1:
                        t = 1
                        u = 0
                        while uint16(t) < stor6[idx].field_1024:
                            require uint16(t) < stor6[idx].field_2048
                            if stor((Mask(12, 4, t) >> 4) + ('array', 8, ('map', ('var', 0), ('name', 'stor6', 6))))[uint8(t)] <= 0:
                                mem[0] = idx
                                mem[32] = 6
                                t = t + 1
                                u = u
                                continue 
                            require uint16(t) < stor6[idx].field_1024
                            if stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u < u:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = idx
                            mem[32] = 6
                            t = t + 1
                            u = stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u
                            continue 
                        if not stor6[idx].field_512:
                            mem[0] = idx
                            mem[32] = 6
                            if stor6[idx].field_2816 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > stor6[idx].field_2816 + s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = idx + 1
                            s = stor6[idx].field_2816 + s
                            continue 
                        if u * stor6[idx].field_512 / stor6[idx].field_512 != u:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[0] = idx
                        mem[32] = 6
                        if stor6[idx].field_2816 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if u * stor6[idx].field_512 / 100 > stor6[idx].field_2816 + s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        idx = idx + 1
                        s = stor6[idx].field_2816 + s - (u * stor6[idx].field_512 / 100)
                        continue 
                    stor6[arg1].field_512 = s
                    require sub_075dc415 <= test266151307()
                    _5911 = mem[64]
                    mem[mem[64]] = sub_075dc415
                    mem[64] = mem[64] + (32 * sub_075dc415) + 32
                    if not sub_075dc415:
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7844 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7897 = mem[_7844]
                            require mem[_7844] <= test266151307()
                            require _7844 + return_data.size > _7844 + mem[_7844] + 31
                            _7977 = mem[_7844 + mem[_7844]]
                            require mem[_7844 + mem[_7844]] <= test266151307()
                            require (32 * mem[_7844 + mem[_7844]]) + 32 >= 0 and _7844 + ceil32(return_data.size) + (32 * mem[_7844 + mem[_7844]]) + 32 <= test266151307()
                            mem[64] = _7844 + ceil32(return_data.size) + (32 * mem[_7844 + mem[_7844]]) + 32
                            mem[_7844 + ceil32(return_data.size)] = _7977
                            require return_data.size >= _7897 + (32 * _7977) + 32
                            t = _7844 + _7897 + 32
                            u = _7844 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _7977:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _9492 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_9492] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_9492]
                                    require s < mem[_7844 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _7844 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9492 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_9492 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_9492]
                                        require s < mem[_7844 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _7844 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9492 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_9492 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _9492 + 64
                                    t = 2
                                    while _9492 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _12047 = mem[_9492]
                                    s = 0
                                    t = 0
                                    while s < _12047:
                                        require s < mem[_9492]
                                        require s < mem[_7844 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _12047 = mem[_9492]
                                        if mem[(32 * s) + _7844 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9492 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_5911]
                                mem[(32 * uint8(t - 1)) + _5911 + 32] = uint16(mem[(32 * uint8(t - 1)) + _5911 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _7717 = mem[_5911]
                        stor6[arg1].field_2048 = mem[_5911]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _7717:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9620 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_9620]);
                        else:
                            s = 0
                            idx = _5911 + 32
                            while _5911 + (32 * _7717) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_7717) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_7717) >> 4) + Mask(254, 1, None + -(floor32(_7717) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_7717) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12307 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12307]);
                    else:
                        mem[_5911 + 32 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7846 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7898 = mem[_7846]
                            require mem[_7846] <= test266151307()
                            require _7846 + return_data.size > _7846 + mem[_7846] + 31
                            _7978 = mem[_7846 + mem[_7846]]
                            require mem[_7846 + mem[_7846]] <= test266151307()
                            require (32 * mem[_7846 + mem[_7846]]) + 32 >= 0 and _7846 + ceil32(return_data.size) + (32 * mem[_7846 + mem[_7846]]) + 32 <= test266151307()
                            mem[64] = _7846 + ceil32(return_data.size) + (32 * mem[_7846 + mem[_7846]]) + 32
                            mem[_7846 + ceil32(return_data.size)] = _7978
                            require return_data.size >= _7898 + (32 * _7978) + 32
                            t = _7846 + _7898 + 32
                            u = _7846 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _7978:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _9494 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_9494] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_9494]
                                    require s < mem[_7846 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _7846 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9494 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_9494 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_9494]
                                        require s < mem[_7846 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _7846 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9494 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_9494 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _9494 + 64
                                    t = 2
                                    while _9494 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _12048 = mem[_9494]
                                    s = 0
                                    t = 0
                                    while s < _12048:
                                        require s < mem[_9494]
                                        require s < mem[_7846 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _12048 = mem[_9494]
                                        if mem[(32 * s) + _7846 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9494 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_5911]
                                mem[(32 * uint8(t - 1)) + _5911 + 32] = uint16(mem[(32 * uint8(t - 1)) + _5911 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _7720 = mem[_5911]
                        stor6[arg1].field_2048 = mem[_5911]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _7720:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9622 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_9622]);
                        else:
                            s = 0
                            idx = _5911 + 32
                            while _5911 + (32 * _7720) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_7720) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_7720) >> 4) + Mask(254, 1, None + -(floor32(_7720) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_7720) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12308 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12308]);
                else:
                    s = 0
                    idx = ceil32(return_data.size) + 256
                    while ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + 224]) + 256 > idx:
                        stor6[arg1][7].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][7].field_0
                        s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                        idx = idx + 32
                        continue 
                    idx = floor32(mem[ceil32(return_data.size) + 224]) >> 4
                    s = sha3(sha3(arg1, 6) + 7)
                    while idx:
                        stor[s] = !(65535 * 256^idx) and stor[s]
                        idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                        s = (idx + 3 / 32) + s
                        continue 
                    idx = (floor32(mem[ceil32(return_data.size) + 224]) >> 4) + Mask(254, 1, None + -(floor32(mem[ceil32(return_data.size) + 224]) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(mem[ceil32(return_data.size) + 224]) >> 4) + 3) >> 1
                    while stor6[arg1].field_1792 + 15 / 16 > idx:
                        stor6[arg1][idx + 7].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.0xc4e41b22 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7848 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7900 = mem[_7848]
                    mem[0] = arg1
                    mem[32] = 6
                    stor6[arg1].field_2560 = _7900
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8112 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = 1
                    s = mem[_8112]
                    while idx < arg1:
                        t = 1
                        u = 0
                        while uint16(t) < stor6[idx].field_1024:
                            require uint16(t) < stor6[idx].field_2048
                            if stor((Mask(12, 4, t) >> 4) + ('array', 8, ('map', ('var', 0), ('name', 'stor6', 6))))[uint8(t)] <= 0:
                                mem[0] = idx
                                mem[32] = 6
                                t = t + 1
                                u = u
                                continue 
                            require uint16(t) < stor6[idx].field_1024
                            if stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u < u:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = idx
                            mem[32] = 6
                            t = t + 1
                            u = stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u
                            continue 
                        if not stor6[idx].field_512:
                            mem[0] = idx
                            mem[32] = 6
                            if stor6[idx].field_2816 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > stor6[idx].field_2816 + s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = idx + 1
                            s = stor6[idx].field_2816 + s
                            continue 
                        if u * stor6[idx].field_512 / stor6[idx].field_512 != u:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[0] = idx
                        mem[32] = 6
                        if stor6[idx].field_2816 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if u * stor6[idx].field_512 / 100 > stor6[idx].field_2816 + s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        idx = idx + 1
                        s = stor6[idx].field_2816 + s - (u * stor6[idx].field_512 / 100)
                        continue 
                    stor6[arg1].field_512 = s
                    require sub_075dc415 <= test266151307()
                    _9547 = mem[64]
                    mem[mem[64]] = sub_075dc415
                    mem[64] = mem[64] + (32 * sub_075dc415) + 32
                    if not sub_075dc415:
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11207 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11308 = mem[_11207]
                            require mem[_11207] <= test266151307()
                            require _11207 + return_data.size > _11207 + mem[_11207] + 31
                            _11412 = mem[_11207 + mem[_11207]]
                            require mem[_11207 + mem[_11207]] <= test266151307()
                            require (32 * mem[_11207 + mem[_11207]]) + 32 >= 0 and _11207 + ceil32(return_data.size) + (32 * mem[_11207 + mem[_11207]]) + 32 <= test266151307()
                            mem[64] = _11207 + ceil32(return_data.size) + (32 * mem[_11207 + mem[_11207]]) + 32
                            mem[_11207 + ceil32(return_data.size)] = _11412
                            require return_data.size >= _11308 + (32 * _11412) + 32
                            t = _11207 + _11308 + 32
                            u = _11207 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _11412:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _12122 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_12122] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_12122]
                                    require s < mem[_11207 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _11207 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12122 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_12122 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_12122]
                                        require s < mem[_11207 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _11207 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12122 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_12122 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _12122 + 64
                                    t = 2
                                    while _12122 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _13167 = mem[_12122]
                                    s = 0
                                    t = 0
                                    while s < _13167:
                                        require s < mem[_12122]
                                        require s < mem[_11207 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _13167 = mem[_12122]
                                        if mem[(32 * s) + _11207 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12122 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_9547]
                                mem[(32 * uint8(t - 1)) + _9547 + 32] = uint16(mem[(32 * uint8(t - 1)) + _9547 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _10893 = mem[_9547]
                        stor6[arg1].field_2048 = mem[_9547]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _10893:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12309 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12309]);
                        else:
                            s = 0
                            idx = _9547 + 32
                            while _9547 + (32 * _10893) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_10893) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_10893) >> 4) + Mask(254, 1, None + -(floor32(_10893) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_10893) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13311 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_13311]);
                    else:
                        mem[_9547 + 32 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11209 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11309 = mem[_11209]
                            require mem[_11209] <= test266151307()
                            require _11209 + return_data.size > _11209 + mem[_11209] + 31
                            _11413 = mem[_11209 + mem[_11209]]
                            require mem[_11209 + mem[_11209]] <= test266151307()
                            require (32 * mem[_11209 + mem[_11209]]) + 32 >= 0 and _11209 + ceil32(return_data.size) + (32 * mem[_11209 + mem[_11209]]) + 32 <= test266151307()
                            mem[64] = _11209 + ceil32(return_data.size) + (32 * mem[_11209 + mem[_11209]]) + 32
                            mem[_11209 + ceil32(return_data.size)] = _11413
                            require return_data.size >= _11309 + (32 * _11413) + 32
                            t = _11209 + _11309 + 32
                            u = _11209 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _11413:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _12124 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_12124] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_12124]
                                    require s < mem[_11209 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _11209 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12124 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_12124 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_12124]
                                        require s < mem[_11209 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _11209 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12124 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_12124 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _12124 + 64
                                    t = 2
                                    while _12124 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _13168 = mem[_12124]
                                    s = 0
                                    t = 0
                                    while s < _13168:
                                        require s < mem[_12124]
                                        require s < mem[_11209 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _13168 = mem[_12124]
                                        if mem[(32 * s) + _11209 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12124 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_9547]
                                mem[(32 * uint8(t - 1)) + _9547 + 32] = uint16(mem[(32 * uint8(t - 1)) + _9547 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _10896 = mem[_9547]
                        stor6[arg1].field_2048 = mem[_9547]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _10896:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12311 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12311]);
                        else:
                            s = 0
                            idx = _9547 + 32
                            while _9547 + (32 * _10896) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_10896) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_10896) >> 4) + Mask(254, 1, None + -(floor32(_10896) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_10896) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13312 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_13312]);
        else:
            require uint8(stor6[arg1].field_256) <= 3
            if uint8(stor6[arg1].field_256) != 1:
                revert with 0, 'Lottery State incorrect for draw'
            uint8(stor6[arg1].field_256) = 2
            emit RequestNumbers(arg1);
            require ext_code.size(stor3)
            staticcall stor3.0xc4e41b22 with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 128] = block.difficulty
            mem[ceil32(return_data.size) + 160] = block.timestamp
            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 96] = 96
            require uint8(stor6[arg1].field_256) <= 3
            if uint8(stor6[arg1].field_256) != 2:
                revert with 0, 'Draw numbers first'
            mem[0] = arg1
            mem[32] = 6
            uint8(stor6[arg1].field_256) = 3
            require sub_075dc415 <= test266151307()
            mem[ceil32(return_data.size) + 224] = sub_075dc415
            mem[64] = ceil32(return_data.size) + (32 * sub_075dc415) + 256
            if not sub_075dc415:
                idx = 0
                while idx < sub_075dc415:
                    mem[mem[64] + 32] = sha3(block.difficulty, block.timestamp, ext_call.return_data[0])
                    mem[mem[64] + 64] = idx
                    _2078 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if maxRange <= 0:
                        revert with 0, 'SafeMath: modulo by zero'
                    require maxRange
                    require idx < mem[ceil32(return_data.size) + 224]
                    mem[(32 * idx) + ceil32(return_data.size) + 256] = uint16(sha3(mem[_2078 + 32 len mem[_2078]]) % maxRange)
                    idx = idx + 1
                    continue 
                mem[32] = 6
                stor6[arg1].field_1792 = mem[ceil32(return_data.size) + 224]
                mem[0] = sha3(arg1, 6) + 7
                if not mem[ceil32(return_data.size) + 224]:
                    s = sha3(sha3(arg1, 6) + 7)
                    while sha3(sha3(arg1, 6) + 7) + (stor6[arg1].field_1792 + 15 / 16) > sub_075dc415:
                        uint8(stor5.field_160) = 0
                        s = sub_075dc415 + 1
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.0xc4e41b22 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4031 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4039 = mem[_4031]
                    mem[0] = arg1
                    mem[32] = 6
                    stor6[arg1].field_2560 = _4039
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4105 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = 1
                    s = mem[_4105]
                    while idx < arg1:
                        t = 1
                        u = 0
                        while uint16(t) < stor6[idx].field_1024:
                            require uint16(t) < stor6[idx].field_2048
                            if stor((Mask(12, 4, t) >> 4) + ('array', 8, ('map', ('var', 0), ('name', 'stor6', 6))))[uint8(t)] <= 0:
                                mem[0] = idx
                                mem[32] = 6
                                t = t + 1
                                u = u
                                continue 
                            require uint16(t) < stor6[idx].field_1024
                            if stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u < u:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = idx
                            mem[32] = 6
                            t = t + 1
                            u = stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u
                            continue 
                        if not stor6[idx].field_512:
                            mem[0] = idx
                            mem[32] = 6
                            if stor6[idx].field_2816 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > stor6[idx].field_2816 + s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = idx + 1
                            s = stor6[idx].field_2816 + s
                            continue 
                        if u * stor6[idx].field_512 / stor6[idx].field_512 != u:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[0] = idx
                        mem[32] = 6
                        if stor6[idx].field_2816 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if u * stor6[idx].field_512 / 100 > stor6[idx].field_2816 + s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        idx = idx + 1
                        s = stor6[idx].field_2816 + s - (u * stor6[idx].field_512 / 100)
                        continue 
                    stor6[arg1].field_512 = s
                    require sub_075dc415 <= test266151307()
                    _5913 = mem[64]
                    mem[mem[64]] = sub_075dc415
                    mem[64] = mem[64] + (32 * sub_075dc415) + 32
                    if not sub_075dc415:
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7850 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7901 = mem[_7850]
                            require mem[_7850] <= test266151307()
                            require _7850 + return_data.size > _7850 + mem[_7850] + 31
                            _7981 = mem[_7850 + mem[_7850]]
                            require mem[_7850 + mem[_7850]] <= test266151307()
                            require (32 * mem[_7850 + mem[_7850]]) + 32 >= 0 and _7850 + ceil32(return_data.size) + (32 * mem[_7850 + mem[_7850]]) + 32 <= test266151307()
                            mem[64] = _7850 + ceil32(return_data.size) + (32 * mem[_7850 + mem[_7850]]) + 32
                            mem[_7850 + ceil32(return_data.size)] = _7981
                            require return_data.size >= _7901 + (32 * _7981) + 32
                            t = _7850 + _7901 + 32
                            u = _7850 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _7981:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _9498 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_9498] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_9498]
                                    require s < mem[_7850 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _7850 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9498 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_9498 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_9498]
                                        require s < mem[_7850 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _7850 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9498 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_9498 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _9498 + 64
                                    t = 2
                                    while _9498 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _12049 = mem[_9498]
                                    s = 0
                                    t = 0
                                    while s < _12049:
                                        require s < mem[_9498]
                                        require s < mem[_7850 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _12049 = mem[_9498]
                                        if mem[(32 * s) + _7850 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9498 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_5913]
                                mem[(32 * uint8(t - 1)) + _5913 + 32] = uint16(mem[(32 * uint8(t - 1)) + _5913 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _7724 = mem[_5913]
                        stor6[arg1].field_2048 = mem[_5913]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _7724:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9627 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_9627]);
                        else:
                            s = 0
                            idx = _5913 + 32
                            while _5913 + (32 * _7724) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_7724) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_7724) >> 4) + Mask(254, 1, None + -(floor32(_7724) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_7724) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12313 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12313]);
                    else:
                        mem[_5913 + 32 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7852 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7902 = mem[_7852]
                            require mem[_7852] <= test266151307()
                            require _7852 + return_data.size > _7852 + mem[_7852] + 31
                            _7982 = mem[_7852 + mem[_7852]]
                            require mem[_7852 + mem[_7852]] <= test266151307()
                            require (32 * mem[_7852 + mem[_7852]]) + 32 >= 0 and _7852 + ceil32(return_data.size) + (32 * mem[_7852 + mem[_7852]]) + 32 <= test266151307()
                            mem[64] = _7852 + ceil32(return_data.size) + (32 * mem[_7852 + mem[_7852]]) + 32
                            mem[_7852 + ceil32(return_data.size)] = _7982
                            require return_data.size >= _7902 + (32 * _7982) + 32
                            t = _7852 + _7902 + 32
                            u = _7852 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _7982:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _9500 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_9500] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_9500]
                                    require s < mem[_7852 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _7852 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9500 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_9500 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_9500]
                                        require s < mem[_7852 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _7852 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9500 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_9500 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _9500 + 64
                                    t = 2
                                    while _9500 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _12050 = mem[_9500]
                                    s = 0
                                    t = 0
                                    while s < _12050:
                                        require s < mem[_9500]
                                        require s < mem[_7852 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _12050 = mem[_9500]
                                        if mem[(32 * s) + _7852 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9500 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_5913]
                                mem[(32 * uint8(t - 1)) + _5913 + 32] = uint16(mem[(32 * uint8(t - 1)) + _5913 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _7727 = mem[_5913]
                        stor6[arg1].field_2048 = mem[_5913]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _7727:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9629 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_9629]);
                        else:
                            s = 0
                            idx = _5913 + 32
                            while _5913 + (32 * _7727) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_7727) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_7727) >> 4) + Mask(254, 1, None + -(floor32(_7727) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_7727) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12314 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12314]);
                else:
                    s = 0
                    idx = ceil32(return_data.size) + 256
                    while ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + 224]) + 256 > idx:
                        stor6[arg1][7].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][7].field_0
                        s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                        idx = idx + 32
                        continue 
                    idx = floor32(mem[ceil32(return_data.size) + 224]) >> 4
                    s = sha3(sha3(arg1, 6) + 7)
                    while idx:
                        stor[s] = !(65535 * 256^idx) and stor[s]
                        idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                        s = (idx + 3 / 32) + s
                        continue 
                    idx = (floor32(mem[ceil32(return_data.size) + 224]) >> 4) + Mask(254, 1, None + -(floor32(mem[ceil32(return_data.size) + 224]) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(mem[ceil32(return_data.size) + 224]) >> 4) + 3) >> 1
                    while stor6[arg1].field_1792 + 15 / 16 > idx:
                        stor6[arg1][idx + 7].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.0xc4e41b22 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7854 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7904 = mem[_7854]
                    mem[0] = arg1
                    mem[32] = 6
                    stor6[arg1].field_2560 = _7904
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8118 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = 1
                    s = mem[_8118]
                    while idx < arg1:
                        t = 1
                        u = 0
                        while uint16(t) < stor6[idx].field_1024:
                            require uint16(t) < stor6[idx].field_2048
                            if stor((Mask(12, 4, t) >> 4) + ('array', 8, ('map', ('var', 0), ('name', 'stor6', 6))))[uint8(t)] <= 0:
                                mem[0] = idx
                                mem[32] = 6
                                t = t + 1
                                u = u
                                continue 
                            require uint16(t) < stor6[idx].field_1024
                            if stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u < u:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = idx
                            mem[32] = 6
                            t = t + 1
                            u = stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u
                            continue 
                        if not stor6[idx].field_512:
                            mem[0] = idx
                            mem[32] = 6
                            if stor6[idx].field_2816 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > stor6[idx].field_2816 + s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = idx + 1
                            s = stor6[idx].field_2816 + s
                            continue 
                        if u * stor6[idx].field_512 / stor6[idx].field_512 != u:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[0] = idx
                        mem[32] = 6
                        if stor6[idx].field_2816 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if u * stor6[idx].field_512 / 100 > stor6[idx].field_2816 + s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        idx = idx + 1
                        s = stor6[idx].field_2816 + s - (u * stor6[idx].field_512 / 100)
                        continue 
                    stor6[arg1].field_512 = s
                    require sub_075dc415 <= test266151307()
                    _9555 = mem[64]
                    mem[mem[64]] = sub_075dc415
                    mem[64] = mem[64] + (32 * sub_075dc415) + 32
                    if not sub_075dc415:
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11214 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11317 = mem[_11214]
                            require mem[_11214] <= test266151307()
                            require _11214 + return_data.size > _11214 + mem[_11214] + 31
                            _11417 = mem[_11214 + mem[_11214]]
                            require mem[_11214 + mem[_11214]] <= test266151307()
                            require (32 * mem[_11214 + mem[_11214]]) + 32 >= 0 and _11214 + ceil32(return_data.size) + (32 * mem[_11214 + mem[_11214]]) + 32 <= test266151307()
                            mem[64] = _11214 + ceil32(return_data.size) + (32 * mem[_11214 + mem[_11214]]) + 32
                            mem[_11214 + ceil32(return_data.size)] = _11417
                            require return_data.size >= _11317 + (32 * _11417) + 32
                            t = _11214 + _11317 + 32
                            u = _11214 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _11417:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _12130 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_12130] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_12130]
                                    require s < mem[_11214 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _11214 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12130 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_12130 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_12130]
                                        require s < mem[_11214 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _11214 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12130 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_12130 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _12130 + 64
                                    t = 2
                                    while _12130 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _13169 = mem[_12130]
                                    s = 0
                                    t = 0
                                    while s < _13169:
                                        require s < mem[_12130]
                                        require s < mem[_11214 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _13169 = mem[_12130]
                                        if mem[(32 * s) + _11214 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12130 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_9555]
                                mem[(32 * uint8(t - 1)) + _9555 + 32] = uint16(mem[(32 * uint8(t - 1)) + _9555 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _10904 = mem[_9555]
                        stor6[arg1].field_2048 = mem[_9555]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _10904:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12315 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12315]);
                        else:
                            s = 0
                            idx = _9555 + 32
                            while _9555 + (32 * _10904) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_10904) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_10904) >> 4) + Mask(254, 1, None + -(floor32(_10904) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_10904) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13313 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_13313]);
                    else:
                        mem[_9555 + 32 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11216 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11318 = mem[_11216]
                            require mem[_11216] <= test266151307()
                            require _11216 + return_data.size > _11216 + mem[_11216] + 31
                            _11418 = mem[_11216 + mem[_11216]]
                            require mem[_11216 + mem[_11216]] <= test266151307()
                            require (32 * mem[_11216 + mem[_11216]]) + 32 >= 0 and _11216 + ceil32(return_data.size) + (32 * mem[_11216 + mem[_11216]]) + 32 <= test266151307()
                            mem[64] = _11216 + ceil32(return_data.size) + (32 * mem[_11216 + mem[_11216]]) + 32
                            mem[_11216 + ceil32(return_data.size)] = _11418
                            require return_data.size >= _11318 + (32 * _11418) + 32
                            t = _11216 + _11318 + 32
                            u = _11216 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _11418:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _12132 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_12132] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_12132]
                                    require s < mem[_11216 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _11216 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12132 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_12132 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_12132]
                                        require s < mem[_11216 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _11216 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12132 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_12132 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _12132 + 64
                                    t = 2
                                    while _12132 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _13170 = mem[_12132]
                                    s = 0
                                    t = 0
                                    while s < _13170:
                                        require s < mem[_12132]
                                        require s < mem[_11216 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _13170 = mem[_12132]
                                        if mem[(32 * s) + _11216 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12132 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_9555]
                                mem[(32 * uint8(t - 1)) + _9555 + 32] = uint16(mem[(32 * uint8(t - 1)) + _9555 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _10907 = mem[_9555]
                        stor6[arg1].field_2048 = mem[_9555]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _10907:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12317 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12317]);
                        else:
                            s = 0
                            idx = _9555 + 32
                            while _9555 + (32 * _10907) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_10907) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_10907) >> 4) + Mask(254, 1, None + -(floor32(_10907) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_10907) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13314 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_13314]);
            else:
                mem[ceil32(return_data.size) + 256 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
                idx = 0
                while idx < sub_075dc415:
                    mem[mem[64] + 32] = sha3(block.difficulty, block.timestamp, ext_call.return_data[0])
                    mem[mem[64] + 64] = idx
                    _2082 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if maxRange <= 0:
                        revert with 0, 'SafeMath: modulo by zero'
                    require maxRange
                    require idx < mem[ceil32(return_data.size) + 224]
                    mem[(32 * idx) + ceil32(return_data.size) + 256] = uint16(sha3(mem[_2082 + 32 len mem[_2082]]) % maxRange)
                    idx = idx + 1
                    continue 
                mem[32] = 6
                stor6[arg1].field_1792 = mem[ceil32(return_data.size) + 224]
                mem[0] = sha3(arg1, 6) + 7
                if not mem[ceil32(return_data.size) + 224]:
                    s = sha3(sha3(arg1, 6) + 7)
                    while sha3(sha3(arg1, 6) + 7) + (stor6[arg1].field_1792 + 15 / 16) > sub_075dc415:
                        uint8(stor5.field_160) = 0
                        s = sub_075dc415 + 1
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.0xc4e41b22 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4032 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4040 = mem[_4032]
                    mem[0] = arg1
                    mem[32] = 6
                    stor6[arg1].field_2560 = _4040
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4107 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = 1
                    s = mem[_4107]
                    while idx < arg1:
                        t = 1
                        u = 0
                        while uint16(t) < stor6[idx].field_1024:
                            require uint16(t) < stor6[idx].field_2048
                            if stor((Mask(12, 4, t) >> 4) + ('array', 8, ('map', ('var', 0), ('name', 'stor6', 6))))[uint8(t)] <= 0:
                                mem[0] = idx
                                mem[32] = 6
                                t = t + 1
                                u = u
                                continue 
                            require uint16(t) < stor6[idx].field_1024
                            if stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u < u:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = idx
                            mem[32] = 6
                            t = t + 1
                            u = stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u
                            continue 
                        if not stor6[idx].field_512:
                            mem[0] = idx
                            mem[32] = 6
                            if stor6[idx].field_2816 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > stor6[idx].field_2816 + s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = idx + 1
                            s = stor6[idx].field_2816 + s
                            continue 
                        if u * stor6[idx].field_512 / stor6[idx].field_512 != u:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[0] = idx
                        mem[32] = 6
                        if stor6[idx].field_2816 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if u * stor6[idx].field_512 / 100 > stor6[idx].field_2816 + s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        idx = idx + 1
                        s = stor6[idx].field_2816 + s - (u * stor6[idx].field_512 / 100)
                        continue 
                    stor6[arg1].field_512 = s
                    require sub_075dc415 <= test266151307()
                    _5915 = mem[64]
                    mem[mem[64]] = sub_075dc415
                    mem[64] = mem[64] + (32 * sub_075dc415) + 32
                    if not sub_075dc415:
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7856 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7905 = mem[_7856]
                            require mem[_7856] <= test266151307()
                            require _7856 + return_data.size > _7856 + mem[_7856] + 31
                            _7985 = mem[_7856 + mem[_7856]]
                            require mem[_7856 + mem[_7856]] <= test266151307()
                            require (32 * mem[_7856 + mem[_7856]]) + 32 >= 0 and _7856 + ceil32(return_data.size) + (32 * mem[_7856 + mem[_7856]]) + 32 <= test266151307()
                            mem[64] = _7856 + ceil32(return_data.size) + (32 * mem[_7856 + mem[_7856]]) + 32
                            mem[_7856 + ceil32(return_data.size)] = _7985
                            require return_data.size >= _7905 + (32 * _7985) + 32
                            t = _7856 + _7905 + 32
                            u = _7856 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _7985:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _9504 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_9504] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_9504]
                                    require s < mem[_7856 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _7856 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9504 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_9504 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_9504]
                                        require s < mem[_7856 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _7856 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9504 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_9504 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _9504 + 64
                                    t = 2
                                    while _9504 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _12051 = mem[_9504]
                                    s = 0
                                    t = 0
                                    while s < _12051:
                                        require s < mem[_9504]
                                        require s < mem[_7856 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _12051 = mem[_9504]
                                        if mem[(32 * s) + _7856 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9504 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_5915]
                                mem[(32 * uint8(t - 1)) + _5915 + 32] = uint16(mem[(32 * uint8(t - 1)) + _5915 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _7731 = mem[_5915]
                        stor6[arg1].field_2048 = mem[_5915]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _7731:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9634 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_9634]);
                        else:
                            s = 0
                            idx = _5915 + 32
                            while _5915 + (32 * _7731) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_7731) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_7731) >> 4) + Mask(254, 1, None + -(floor32(_7731) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_7731) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12319 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12319]);
                    else:
                        mem[_5915 + 32 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7858 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7906 = mem[_7858]
                            require mem[_7858] <= test266151307()
                            require _7858 + return_data.size > _7858 + mem[_7858] + 31
                            _7986 = mem[_7858 + mem[_7858]]
                            require mem[_7858 + mem[_7858]] <= test266151307()
                            require (32 * mem[_7858 + mem[_7858]]) + 32 >= 0 and _7858 + ceil32(return_data.size) + (32 * mem[_7858 + mem[_7858]]) + 32 <= test266151307()
                            mem[64] = _7858 + ceil32(return_data.size) + (32 * mem[_7858 + mem[_7858]]) + 32
                            mem[_7858 + ceil32(return_data.size)] = _7986
                            require return_data.size >= _7906 + (32 * _7986) + 32
                            t = _7858 + _7906 + 32
                            u = _7858 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _7986:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _9506 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_9506] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_9506]
                                    require s < mem[_7858 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _7858 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9506 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_9506 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_9506]
                                        require s < mem[_7858 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _7858 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9506 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_9506 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _9506 + 64
                                    t = 2
                                    while _9506 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _12052 = mem[_9506]
                                    s = 0
                                    t = 0
                                    while s < _12052:
                                        require s < mem[_9506]
                                        require s < mem[_7858 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _12052 = mem[_9506]
                                        if mem[(32 * s) + _7858 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9506 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_5915]
                                mem[(32 * uint8(t - 1)) + _5915 + 32] = uint16(mem[(32 * uint8(t - 1)) + _5915 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _7734 = mem[_5915]
                        stor6[arg1].field_2048 = mem[_5915]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _7734:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9636 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_9636]);
                        else:
                            s = 0
                            idx = _5915 + 32
                            while _5915 + (32 * _7734) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_7734) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_7734) >> 4) + Mask(254, 1, None + -(floor32(_7734) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_7734) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12320 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12320]);
                else:
                    s = 0
                    idx = ceil32(return_data.size) + 256
                    while ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + 224]) + 256 > idx:
                        stor6[arg1][7].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][7].field_0
                        s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                        idx = idx + 32
                        continue 
                    idx = floor32(mem[ceil32(return_data.size) + 224]) >> 4
                    s = sha3(sha3(arg1, 6) + 7)
                    while idx:
                        stor[s] = !(65535 * 256^idx) and stor[s]
                        idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                        s = (idx + 3 / 32) + s
                        continue 
                    idx = (floor32(mem[ceil32(return_data.size) + 224]) >> 4) + Mask(254, 1, None + -(floor32(mem[ceil32(return_data.size) + 224]) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(mem[ceil32(return_data.size) + 224]) >> 4) + 3) >> 1
                    while stor6[arg1].field_1792 + 15 / 16 > idx:
                        stor6[arg1][idx + 7].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.0xc4e41b22 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7860 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7908 = mem[_7860]
                    mem[0] = arg1
                    mem[32] = 6
                    stor6[arg1].field_2560 = _7908
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8124 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = 1
                    s = mem[_8124]
                    while idx < arg1:
                        t = 1
                        u = 0
                        while uint16(t) < stor6[idx].field_1024:
                            require uint16(t) < stor6[idx].field_2048
                            if stor((Mask(12, 4, t) >> 4) + ('array', 8, ('map', ('var', 0), ('name', 'stor6', 6))))[uint8(t)] <= 0:
                                mem[0] = idx
                                mem[32] = 6
                                t = t + 1
                                u = u
                                continue 
                            require uint16(t) < stor6[idx].field_1024
                            if stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u < u:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = idx
                            mem[32] = 6
                            t = t + 1
                            u = stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u
                            continue 
                        if not stor6[idx].field_512:
                            mem[0] = idx
                            mem[32] = 6
                            if stor6[idx].field_2816 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > stor6[idx].field_2816 + s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = idx + 1
                            s = stor6[idx].field_2816 + s
                            continue 
                        if u * stor6[idx].field_512 / stor6[idx].field_512 != u:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[0] = idx
                        mem[32] = 6
                        if stor6[idx].field_2816 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if u * stor6[idx].field_512 / 100 > stor6[idx].field_2816 + s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        idx = idx + 1
                        s = stor6[idx].field_2816 + s - (u * stor6[idx].field_512 / 100)
                        continue 
                    stor6[arg1].field_512 = s
                    require sub_075dc415 <= test266151307()
                    _9563 = mem[64]
                    mem[mem[64]] = sub_075dc415
                    mem[64] = mem[64] + (32 * sub_075dc415) + 32
                    if not sub_075dc415:
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11221 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11326 = mem[_11221]
                            require mem[_11221] <= test266151307()
                            require _11221 + return_data.size > _11221 + mem[_11221] + 31
                            _11422 = mem[_11221 + mem[_11221]]
                            require mem[_11221 + mem[_11221]] <= test266151307()
                            require (32 * mem[_11221 + mem[_11221]]) + 32 >= 0 and _11221 + ceil32(return_data.size) + (32 * mem[_11221 + mem[_11221]]) + 32 <= test266151307()
                            mem[64] = _11221 + ceil32(return_data.size) + (32 * mem[_11221 + mem[_11221]]) + 32
                            mem[_11221 + ceil32(return_data.size)] = _11422
                            require return_data.size >= _11326 + (32 * _11422) + 32
                            t = _11221 + _11326 + 32
                            u = _11221 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _11422:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _12138 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_12138] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_12138]
                                    require s < mem[_11221 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _11221 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12138 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_12138 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_12138]
                                        require s < mem[_11221 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _11221 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12138 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_12138 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _12138 + 64
                                    t = 2
                                    while _12138 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _13171 = mem[_12138]
                                    s = 0
                                    t = 0
                                    while s < _13171:
                                        require s < mem[_12138]
                                        require s < mem[_11221 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _13171 = mem[_12138]
                                        if mem[(32 * s) + _11221 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12138 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_9563]
                                mem[(32 * uint8(t - 1)) + _9563 + 32] = uint16(mem[(32 * uint8(t - 1)) + _9563 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _10915 = mem[_9563]
                        stor6[arg1].field_2048 = mem[_9563]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _10915:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12321 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12321]);
                        else:
                            s = 0
                            idx = _9563 + 32
                            while _9563 + (32 * _10915) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_10915) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_10915) >> 4) + Mask(254, 1, None + -(floor32(_10915) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_10915) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13315 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_13315]);
                    else:
                        mem[_9563 + 32 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11223 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11327 = mem[_11223]
                            require mem[_11223] <= test266151307()
                            require _11223 + return_data.size > _11223 + mem[_11223] + 31
                            _11423 = mem[_11223 + mem[_11223]]
                            require mem[_11223 + mem[_11223]] <= test266151307()
                            require (32 * mem[_11223 + mem[_11223]]) + 32 >= 0 and _11223 + ceil32(return_data.size) + (32 * mem[_11223 + mem[_11223]]) + 32 <= test266151307()
                            mem[64] = _11223 + ceil32(return_data.size) + (32 * mem[_11223 + mem[_11223]]) + 32
                            mem[_11223 + ceil32(return_data.size)] = _11423
                            require return_data.size >= _11327 + (32 * _11423) + 32
                            t = _11223 + _11327 + 32
                            u = _11223 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _11423:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _12140 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_12140] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_12140]
                                    require s < mem[_11223 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _11223 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12140 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_12140 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_12140]
                                        require s < mem[_11223 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _11223 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12140 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_12140 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _12140 + 64
                                    t = 2
                                    while _12140 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _13172 = mem[_12140]
                                    s = 0
                                    t = 0
                                    while s < _13172:
                                        require s < mem[_12140]
                                        require s < mem[_11223 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _13172 = mem[_12140]
                                        if mem[(32 * s) + _11223 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12140 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_9563]
                                mem[(32 * uint8(t - 1)) + _9563 + 32] = uint16(mem[(32 * uint8(t - 1)) + _9563 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _10918 = mem[_9563]
                        stor6[arg1].field_2048 = mem[_9563]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _10918:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12323 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12323]);
                        else:
                            s = 0
                            idx = _9563 + 32
                            while _9563 + (32 * _10918) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_10918) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_10918) >> 4) + Mask(254, 1, None + -(floor32(_10918) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_10918) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13316 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_13316]);
    else:
        require ext_code.size(timerAddress)
        staticcall timerAddress.0x29cb924d with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if stor6[arg1].field_1536 > ext_call.return_data[0]:
            revert with 0, 'Cannot set winning numbers during lottery'
        require uint8(stor6[arg1].field_256) <= 3
        if not uint8(stor6[arg1].field_256):
            uint8(stor6[arg1].field_256) = 2
            emit RequestNumbers(arg1);
            require ext_code.size(stor3)
            staticcall stor3.0xc4e41b22 with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 128] = block.difficulty
            mem[(2 * ceil32(return_data.size)) + 160] = block.timestamp
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 96] = 96
            require uint8(stor6[arg1].field_256) <= 3
            if uint8(stor6[arg1].field_256) != 2:
                revert with 0, 'Draw numbers first'
            mem[0] = arg1
            mem[32] = 6
            uint8(stor6[arg1].field_256) = 3
            require sub_075dc415 <= test266151307()
            mem[(2 * ceil32(return_data.size)) + 224] = sub_075dc415
            mem[64] = (2 * ceil32(return_data.size)) + (32 * sub_075dc415) + 256
            if not sub_075dc415:
                idx = 0
                while idx < sub_075dc415:
                    mem[mem[64] + 32] = sha3(block.difficulty, block.timestamp, ext_call.return_data[0])
                    mem[mem[64] + 64] = idx
                    _2086 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if maxRange <= 0:
                        revert with 0, 'SafeMath: modulo by zero'
                    require maxRange
                    require idx < mem[(2 * ceil32(return_data.size)) + 224]
                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 256] = uint16(sha3(mem[_2086 + 32 len mem[_2086]]) % maxRange)
                    idx = idx + 1
                    continue 
                mem[32] = 6
                stor6[arg1].field_1792 = mem[(2 * ceil32(return_data.size)) + 224]
                mem[0] = sha3(arg1, 6) + 7
                if not mem[(2 * ceil32(return_data.size)) + 224]:
                    s = sha3(sha3(arg1, 6) + 7)
                    while sha3(sha3(arg1, 6) + 7) + (stor6[arg1].field_1792 + 15 / 16) > sub_075dc415:
                        uint8(stor5.field_160) = 0
                        s = sub_075dc415 + 1
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.0xc4e41b22 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4033 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4041 = mem[_4033]
                    mem[0] = arg1
                    mem[32] = 6
                    stor6[arg1].field_2560 = _4041
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4109 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = 1
                    s = mem[_4109]
                    while idx < arg1:
                        t = 1
                        u = 0
                        while uint16(t) < stor6[idx].field_1024:
                            require uint16(t) < stor6[idx].field_2048
                            if stor((Mask(12, 4, t) >> 4) + ('array', 8, ('map', ('var', 0), ('name', 'stor6', 6))))[uint8(t)] <= 0:
                                mem[0] = idx
                                mem[32] = 6
                                t = t + 1
                                u = u
                                continue 
                            require uint16(t) < stor6[idx].field_1024
                            if stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u < u:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = idx
                            mem[32] = 6
                            t = t + 1
                            u = stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u
                            continue 
                        if not stor6[idx].field_512:
                            mem[0] = idx
                            mem[32] = 6
                            if stor6[idx].field_2816 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > stor6[idx].field_2816 + s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = idx + 1
                            s = stor6[idx].field_2816 + s
                            continue 
                        if u * stor6[idx].field_512 / stor6[idx].field_512 != u:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[0] = idx
                        mem[32] = 6
                        if stor6[idx].field_2816 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if u * stor6[idx].field_512 / 100 > stor6[idx].field_2816 + s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        idx = idx + 1
                        s = stor6[idx].field_2816 + s - (u * stor6[idx].field_512 / 100)
                        continue 
                    stor6[arg1].field_512 = s
                    require sub_075dc415 <= test266151307()
                    _5917 = mem[64]
                    mem[mem[64]] = sub_075dc415
                    mem[64] = mem[64] + (32 * sub_075dc415) + 32
                    if not sub_075dc415:
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7862 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7909 = mem[_7862]
                            require mem[_7862] <= test266151307()
                            require _7862 + return_data.size > _7862 + mem[_7862] + 31
                            _7989 = mem[_7862 + mem[_7862]]
                            require mem[_7862 + mem[_7862]] <= test266151307()
                            require (32 * mem[_7862 + mem[_7862]]) + 32 >= 0 and _7862 + ceil32(return_data.size) + (32 * mem[_7862 + mem[_7862]]) + 32 <= test266151307()
                            mem[64] = _7862 + ceil32(return_data.size) + (32 * mem[_7862 + mem[_7862]]) + 32
                            mem[_7862 + ceil32(return_data.size)] = _7989
                            require return_data.size >= _7909 + (32 * _7989) + 32
                            t = _7862 + _7909 + 32
                            u = _7862 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _7989:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _9510 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_9510] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_9510]
                                    require s < mem[_7862 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _7862 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9510 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_9510 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_9510]
                                        require s < mem[_7862 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _7862 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9510 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_9510 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _9510 + 64
                                    t = 2
                                    while _9510 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _12053 = mem[_9510]
                                    s = 0
                                    t = 0
                                    while s < _12053:
                                        require s < mem[_9510]
                                        require s < mem[_7862 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _12053 = mem[_9510]
                                        if mem[(32 * s) + _7862 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9510 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_5917]
                                mem[(32 * uint8(t - 1)) + _5917 + 32] = uint16(mem[(32 * uint8(t - 1)) + _5917 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _7738 = mem[_5917]
                        stor6[arg1].field_2048 = mem[_5917]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _7738:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9641 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_9641]);
                        else:
                            s = 0
                            idx = _5917 + 32
                            while _5917 + (32 * _7738) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_7738) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_7738) >> 4) + Mask(254, 1, None + -(floor32(_7738) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_7738) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12325 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12325]);
                    else:
                        mem[_5917 + 32 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7864 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7910 = mem[_7864]
                            require mem[_7864] <= test266151307()
                            require _7864 + return_data.size > _7864 + mem[_7864] + 31
                            _7990 = mem[_7864 + mem[_7864]]
                            require mem[_7864 + mem[_7864]] <= test266151307()
                            require (32 * mem[_7864 + mem[_7864]]) + 32 >= 0 and _7864 + ceil32(return_data.size) + (32 * mem[_7864 + mem[_7864]]) + 32 <= test266151307()
                            mem[64] = _7864 + ceil32(return_data.size) + (32 * mem[_7864 + mem[_7864]]) + 32
                            mem[_7864 + ceil32(return_data.size)] = _7990
                            require return_data.size >= _7910 + (32 * _7990) + 32
                            t = _7864 + _7910 + 32
                            u = _7864 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _7990:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _9512 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_9512] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_9512]
                                    require s < mem[_7864 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _7864 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9512 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_9512 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_9512]
                                        require s < mem[_7864 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _7864 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9512 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_9512 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _9512 + 64
                                    t = 2
                                    while _9512 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _12054 = mem[_9512]
                                    s = 0
                                    t = 0
                                    while s < _12054:
                                        require s < mem[_9512]
                                        require s < mem[_7864 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _12054 = mem[_9512]
                                        if mem[(32 * s) + _7864 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9512 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_5917]
                                mem[(32 * uint8(t - 1)) + _5917 + 32] = uint16(mem[(32 * uint8(t - 1)) + _5917 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _7741 = mem[_5917]
                        stor6[arg1].field_2048 = mem[_5917]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _7741:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9643 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_9643]);
                        else:
                            s = 0
                            idx = _5917 + 32
                            while _5917 + (32 * _7741) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_7741) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_7741) >> 4) + Mask(254, 1, None + -(floor32(_7741) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_7741) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12326 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12326]);
                else:
                    s = 0
                    idx = (2 * ceil32(return_data.size)) + 256
                    while (2 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 224]) + 256 > idx:
                        stor6[arg1][7].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][7].field_0
                        s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                        idx = idx + 32
                        continue 
                    idx = floor32(mem[(2 * ceil32(return_data.size)) + 224]) >> 4
                    s = sha3(sha3(arg1, 6) + 7)
                    while idx:
                        stor[s] = !(65535 * 256^idx) and stor[s]
                        idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                        s = (idx + 3 / 32) + s
                        continue 
                    idx = (floor32(mem[(2 * ceil32(return_data.size)) + 224]) >> 4) + Mask(254, 1, None + -(floor32(mem[(2 * ceil32(return_data.size)) + 224]) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(mem[(2 * ceil32(return_data.size)) + 224]) >> 4) + 3) >> 1
                    while stor6[arg1].field_1792 + 15 / 16 > idx:
                        stor6[arg1][idx + 7].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.0xc4e41b22 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7866 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7912 = mem[_7866]
                    mem[0] = arg1
                    mem[32] = 6
                    stor6[arg1].field_2560 = _7912
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8130 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = 1
                    s = mem[_8130]
                    while idx < arg1:
                        t = 1
                        u = 0
                        while uint16(t) < stor6[idx].field_1024:
                            require uint16(t) < stor6[idx].field_2048
                            if stor((Mask(12, 4, t) >> 4) + ('array', 8, ('map', ('var', 0), ('name', 'stor6', 6))))[uint8(t)] <= 0:
                                mem[0] = idx
                                mem[32] = 6
                                t = t + 1
                                u = u
                                continue 
                            require uint16(t) < stor6[idx].field_1024
                            if stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u < u:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = idx
                            mem[32] = 6
                            t = t + 1
                            u = stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u
                            continue 
                        if not stor6[idx].field_512:
                            mem[0] = idx
                            mem[32] = 6
                            if stor6[idx].field_2816 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > stor6[idx].field_2816 + s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = idx + 1
                            s = stor6[idx].field_2816 + s
                            continue 
                        if u * stor6[idx].field_512 / stor6[idx].field_512 != u:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[0] = idx
                        mem[32] = 6
                        if stor6[idx].field_2816 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if u * stor6[idx].field_512 / 100 > stor6[idx].field_2816 + s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        idx = idx + 1
                        s = stor6[idx].field_2816 + s - (u * stor6[idx].field_512 / 100)
                        continue 
                    stor6[arg1].field_512 = s
                    require sub_075dc415 <= test266151307()
                    _9571 = mem[64]
                    mem[mem[64]] = sub_075dc415
                    mem[64] = mem[64] + (32 * sub_075dc415) + 32
                    if not sub_075dc415:
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11228 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11335 = mem[_11228]
                            require mem[_11228] <= test266151307()
                            require _11228 + return_data.size > _11228 + mem[_11228] + 31
                            _11427 = mem[_11228 + mem[_11228]]
                            require mem[_11228 + mem[_11228]] <= test266151307()
                            require (32 * mem[_11228 + mem[_11228]]) + 32 >= 0 and _11228 + ceil32(return_data.size) + (32 * mem[_11228 + mem[_11228]]) + 32 <= test266151307()
                            mem[64] = _11228 + ceil32(return_data.size) + (32 * mem[_11228 + mem[_11228]]) + 32
                            mem[_11228 + ceil32(return_data.size)] = _11427
                            require return_data.size >= _11335 + (32 * _11427) + 32
                            t = _11228 + _11335 + 32
                            u = _11228 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _11427:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _12146 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_12146] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_12146]
                                    require s < mem[_11228 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _11228 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12146 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_12146 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_12146]
                                        require s < mem[_11228 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _11228 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12146 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_12146 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _12146 + 64
                                    t = 2
                                    while _12146 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _13173 = mem[_12146]
                                    s = 0
                                    t = 0
                                    while s < _13173:
                                        require s < mem[_12146]
                                        require s < mem[_11228 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _13173 = mem[_12146]
                                        if mem[(32 * s) + _11228 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12146 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_9571]
                                mem[(32 * uint8(t - 1)) + _9571 + 32] = uint16(mem[(32 * uint8(t - 1)) + _9571 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _10926 = mem[_9571]
                        stor6[arg1].field_2048 = mem[_9571]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _10926:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12327 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12327]);
                        else:
                            s = 0
                            idx = _9571 + 32
                            while _9571 + (32 * _10926) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_10926) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_10926) >> 4) + Mask(254, 1, None + -(floor32(_10926) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_10926) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13317 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_13317]);
                    else:
                        mem[_9571 + 32 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11230 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11336 = mem[_11230]
                            require mem[_11230] <= test266151307()
                            require _11230 + return_data.size > _11230 + mem[_11230] + 31
                            _11428 = mem[_11230 + mem[_11230]]
                            require mem[_11230 + mem[_11230]] <= test266151307()
                            require (32 * mem[_11230 + mem[_11230]]) + 32 >= 0 and _11230 + ceil32(return_data.size) + (32 * mem[_11230 + mem[_11230]]) + 32 <= test266151307()
                            mem[64] = _11230 + ceil32(return_data.size) + (32 * mem[_11230 + mem[_11230]]) + 32
                            mem[_11230 + ceil32(return_data.size)] = _11428
                            require return_data.size >= _11336 + (32 * _11428) + 32
                            t = _11230 + _11336 + 32
                            u = _11230 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _11428:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _12148 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_12148] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_12148]
                                    require s < mem[_11230 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _11230 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12148 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_12148 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_12148]
                                        require s < mem[_11230 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _11230 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12148 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_12148 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _12148 + 64
                                    t = 2
                                    while _12148 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _13174 = mem[_12148]
                                    s = 0
                                    t = 0
                                    while s < _13174:
                                        require s < mem[_12148]
                                        require s < mem[_11230 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _13174 = mem[_12148]
                                        if mem[(32 * s) + _11230 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12148 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_9571]
                                mem[(32 * uint8(t - 1)) + _9571 + 32] = uint16(mem[(32 * uint8(t - 1)) + _9571 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _10929 = mem[_9571]
                        stor6[arg1].field_2048 = mem[_9571]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _10929:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12329 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12329]);
                        else:
                            s = 0
                            idx = _9571 + 32
                            while _9571 + (32 * _10929) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_10929) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_10929) >> 4) + Mask(254, 1, None + -(floor32(_10929) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_10929) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13318 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_13318]);
            else:
                mem[(2 * ceil32(return_data.size)) + 256 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
                idx = 0
                while idx < sub_075dc415:
                    mem[mem[64] + 32] = sha3(block.difficulty, block.timestamp, ext_call.return_data[0])
                    mem[mem[64] + 64] = idx
                    _2090 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if maxRange <= 0:
                        revert with 0, 'SafeMath: modulo by zero'
                    require maxRange
                    require idx < mem[(2 * ceil32(return_data.size)) + 224]
                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 256] = uint16(sha3(mem[_2090 + 32 len mem[_2090]]) % maxRange)
                    idx = idx + 1
                    continue 
                mem[32] = 6
                stor6[arg1].field_1792 = mem[(2 * ceil32(return_data.size)) + 224]
                mem[0] = sha3(arg1, 6) + 7
                if not mem[(2 * ceil32(return_data.size)) + 224]:
                    s = sha3(sha3(arg1, 6) + 7)
                    while sha3(sha3(arg1, 6) + 7) + (stor6[arg1].field_1792 + 15 / 16) > sub_075dc415:
                        uint8(stor5.field_160) = 0
                        s = sub_075dc415 + 1
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.0xc4e41b22 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4034 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4042 = mem[_4034]
                    mem[0] = arg1
                    mem[32] = 6
                    stor6[arg1].field_2560 = _4042
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4111 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = 1
                    s = mem[_4111]
                    while idx < arg1:
                        t = 1
                        u = 0
                        while uint16(t) < stor6[idx].field_1024:
                            require uint16(t) < stor6[idx].field_2048
                            if stor((Mask(12, 4, t) >> 4) + ('array', 8, ('map', ('var', 0), ('name', 'stor6', 6))))[uint8(t)] <= 0:
                                mem[0] = idx
                                mem[32] = 6
                                t = t + 1
                                u = u
                                continue 
                            require uint16(t) < stor6[idx].field_1024
                            if stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u < u:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = idx
                            mem[32] = 6
                            t = t + 1
                            u = stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u
                            continue 
                        if not stor6[idx].field_512:
                            mem[0] = idx
                            mem[32] = 6
                            if stor6[idx].field_2816 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > stor6[idx].field_2816 + s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = idx + 1
                            s = stor6[idx].field_2816 + s
                            continue 
                        if u * stor6[idx].field_512 / stor6[idx].field_512 != u:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[0] = idx
                        mem[32] = 6
                        if stor6[idx].field_2816 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if u * stor6[idx].field_512 / 100 > stor6[idx].field_2816 + s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        idx = idx + 1
                        s = stor6[idx].field_2816 + s - (u * stor6[idx].field_512 / 100)
                        continue 
                    stor6[arg1].field_512 = s
                    require sub_075dc415 <= test266151307()
                    _5919 = mem[64]
                    mem[mem[64]] = sub_075dc415
                    mem[64] = mem[64] + (32 * sub_075dc415) + 32
                    if not sub_075dc415:
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7868 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7913 = mem[_7868]
                            require mem[_7868] <= test266151307()
                            require _7868 + return_data.size > _7868 + mem[_7868] + 31
                            _7993 = mem[_7868 + mem[_7868]]
                            require mem[_7868 + mem[_7868]] <= test266151307()
                            require (32 * mem[_7868 + mem[_7868]]) + 32 >= 0 and _7868 + ceil32(return_data.size) + (32 * mem[_7868 + mem[_7868]]) + 32 <= test266151307()
                            mem[64] = _7868 + ceil32(return_data.size) + (32 * mem[_7868 + mem[_7868]]) + 32
                            mem[_7868 + ceil32(return_data.size)] = _7993
                            require return_data.size >= _7913 + (32 * _7993) + 32
                            t = _7868 + _7913 + 32
                            u = _7868 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _7993:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _9516 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_9516] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_9516]
                                    require s < mem[_7868 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _7868 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9516 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_9516 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_9516]
                                        require s < mem[_7868 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _7868 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9516 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_9516 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _9516 + 64
                                    t = 2
                                    while _9516 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _12055 = mem[_9516]
                                    s = 0
                                    t = 0
                                    while s < _12055:
                                        require s < mem[_9516]
                                        require s < mem[_7868 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _12055 = mem[_9516]
                                        if mem[(32 * s) + _7868 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9516 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_5919]
                                mem[(32 * uint8(t - 1)) + _5919 + 32] = uint16(mem[(32 * uint8(t - 1)) + _5919 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _7745 = mem[_5919]
                        stor6[arg1].field_2048 = mem[_5919]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _7745:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9648 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_9648]);
                        else:
                            s = 0
                            idx = _5919 + 32
                            while _5919 + (32 * _7745) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_7745) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_7745) >> 4) + Mask(254, 1, None + -(floor32(_7745) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_7745) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12331 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12331]);
                    else:
                        mem[_5919 + 32 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7870 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7914 = mem[_7870]
                            require mem[_7870] <= test266151307()
                            require _7870 + return_data.size > _7870 + mem[_7870] + 31
                            _7994 = mem[_7870 + mem[_7870]]
                            require mem[_7870 + mem[_7870]] <= test266151307()
                            require (32 * mem[_7870 + mem[_7870]]) + 32 >= 0 and _7870 + ceil32(return_data.size) + (32 * mem[_7870 + mem[_7870]]) + 32 <= test266151307()
                            mem[64] = _7870 + ceil32(return_data.size) + (32 * mem[_7870 + mem[_7870]]) + 32
                            mem[_7870 + ceil32(return_data.size)] = _7994
                            require return_data.size >= _7914 + (32 * _7994) + 32
                            t = _7870 + _7914 + 32
                            u = _7870 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _7994:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _9518 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_9518] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_9518]
                                    require s < mem[_7870 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _7870 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9518 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_9518 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_9518]
                                        require s < mem[_7870 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _7870 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9518 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_9518 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _9518 + 64
                                    t = 2
                                    while _9518 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _12056 = mem[_9518]
                                    s = 0
                                    t = 0
                                    while s < _12056:
                                        require s < mem[_9518]
                                        require s < mem[_7870 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _12056 = mem[_9518]
                                        if mem[(32 * s) + _7870 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9518 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_5919]
                                mem[(32 * uint8(t - 1)) + _5919 + 32] = uint16(mem[(32 * uint8(t - 1)) + _5919 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _7748 = mem[_5919]
                        stor6[arg1].field_2048 = mem[_5919]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _7748:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9650 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_9650]);
                        else:
                            s = 0
                            idx = _5919 + 32
                            while _5919 + (32 * _7748) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_7748) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_7748) >> 4) + Mask(254, 1, None + -(floor32(_7748) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_7748) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12332 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12332]);
                else:
                    s = 0
                    idx = (2 * ceil32(return_data.size)) + 256
                    while (2 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 224]) + 256 > idx:
                        stor6[arg1][7].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][7].field_0
                        s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                        idx = idx + 32
                        continue 
                    idx = floor32(mem[(2 * ceil32(return_data.size)) + 224]) >> 4
                    s = sha3(sha3(arg1, 6) + 7)
                    while idx:
                        stor[s] = !(65535 * 256^idx) and stor[s]
                        idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                        s = (idx + 3 / 32) + s
                        continue 
                    idx = (floor32(mem[(2 * ceil32(return_data.size)) + 224]) >> 4) + Mask(254, 1, None + -(floor32(mem[(2 * ceil32(return_data.size)) + 224]) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(mem[(2 * ceil32(return_data.size)) + 224]) >> 4) + 3) >> 1
                    while stor6[arg1].field_1792 + 15 / 16 > idx:
                        stor6[arg1][idx + 7].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.0xc4e41b22 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7872 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7916 = mem[_7872]
                    mem[0] = arg1
                    mem[32] = 6
                    stor6[arg1].field_2560 = _7916
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8136 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = 1
                    s = mem[_8136]
                    while idx < arg1:
                        t = 1
                        u = 0
                        while uint16(t) < stor6[idx].field_1024:
                            require uint16(t) < stor6[idx].field_2048
                            if stor((Mask(12, 4, t) >> 4) + ('array', 8, ('map', ('var', 0), ('name', 'stor6', 6))))[uint8(t)] <= 0:
                                mem[0] = idx
                                mem[32] = 6
                                t = t + 1
                                u = u
                                continue 
                            require uint16(t) < stor6[idx].field_1024
                            if stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u < u:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = idx
                            mem[32] = 6
                            t = t + 1
                            u = stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u
                            continue 
                        if not stor6[idx].field_512:
                            mem[0] = idx
                            mem[32] = 6
                            if stor6[idx].field_2816 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > stor6[idx].field_2816 + s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = idx + 1
                            s = stor6[idx].field_2816 + s
                            continue 
                        if u * stor6[idx].field_512 / stor6[idx].field_512 != u:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[0] = idx
                        mem[32] = 6
                        if stor6[idx].field_2816 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if u * stor6[idx].field_512 / 100 > stor6[idx].field_2816 + s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        idx = idx + 1
                        s = stor6[idx].field_2816 + s - (u * stor6[idx].field_512 / 100)
                        continue 
                    stor6[arg1].field_512 = s
                    require sub_075dc415 <= test266151307()
                    _9579 = mem[64]
                    mem[mem[64]] = sub_075dc415
                    mem[64] = mem[64] + (32 * sub_075dc415) + 32
                    if not sub_075dc415:
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11235 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11344 = mem[_11235]
                            require mem[_11235] <= test266151307()
                            require _11235 + return_data.size > _11235 + mem[_11235] + 31
                            _11432 = mem[_11235 + mem[_11235]]
                            require mem[_11235 + mem[_11235]] <= test266151307()
                            require (32 * mem[_11235 + mem[_11235]]) + 32 >= 0 and _11235 + ceil32(return_data.size) + (32 * mem[_11235 + mem[_11235]]) + 32 <= test266151307()
                            mem[64] = _11235 + ceil32(return_data.size) + (32 * mem[_11235 + mem[_11235]]) + 32
                            mem[_11235 + ceil32(return_data.size)] = _11432
                            require return_data.size >= _11344 + (32 * _11432) + 32
                            t = _11235 + _11344 + 32
                            u = _11235 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _11432:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _12154 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_12154] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_12154]
                                    require s < mem[_11235 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _11235 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12154 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_12154 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_12154]
                                        require s < mem[_11235 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _11235 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12154 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_12154 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _12154 + 64
                                    t = 2
                                    while _12154 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _13175 = mem[_12154]
                                    s = 0
                                    t = 0
                                    while s < _13175:
                                        require s < mem[_12154]
                                        require s < mem[_11235 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _13175 = mem[_12154]
                                        if mem[(32 * s) + _11235 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12154 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_9579]
                                mem[(32 * uint8(t - 1)) + _9579 + 32] = uint16(mem[(32 * uint8(t - 1)) + _9579 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _10937 = mem[_9579]
                        stor6[arg1].field_2048 = mem[_9579]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _10937:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12333 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12333]);
                        else:
                            s = 0
                            idx = _9579 + 32
                            while _9579 + (32 * _10937) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_10937) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_10937) >> 4) + Mask(254, 1, None + -(floor32(_10937) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_10937) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13319 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_13319]);
                    else:
                        mem[_9579 + 32 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11237 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11345 = mem[_11237]
                            require mem[_11237] <= test266151307()
                            require _11237 + return_data.size > _11237 + mem[_11237] + 31
                            _11433 = mem[_11237 + mem[_11237]]
                            require mem[_11237 + mem[_11237]] <= test266151307()
                            require (32 * mem[_11237 + mem[_11237]]) + 32 >= 0 and _11237 + ceil32(return_data.size) + (32 * mem[_11237 + mem[_11237]]) + 32 <= test266151307()
                            mem[64] = _11237 + ceil32(return_data.size) + (32 * mem[_11237 + mem[_11237]]) + 32
                            mem[_11237 + ceil32(return_data.size)] = _11433
                            require return_data.size >= _11345 + (32 * _11433) + 32
                            t = _11237 + _11345 + 32
                            u = _11237 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _11433:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _12156 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_12156] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_12156]
                                    require s < mem[_11237 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _11237 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12156 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_12156 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_12156]
                                        require s < mem[_11237 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _11237 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12156 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_12156 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _12156 + 64
                                    t = 2
                                    while _12156 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _13176 = mem[_12156]
                                    s = 0
                                    t = 0
                                    while s < _13176:
                                        require s < mem[_12156]
                                        require s < mem[_11237 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _13176 = mem[_12156]
                                        if mem[(32 * s) + _11237 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12156 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_9579]
                                mem[(32 * uint8(t - 1)) + _9579 + 32] = uint16(mem[(32 * uint8(t - 1)) + _9579 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _10940 = mem[_9579]
                        stor6[arg1].field_2048 = mem[_9579]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _10940:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12335 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12335]);
                        else:
                            s = 0
                            idx = _9579 + 32
                            while _9579 + (32 * _10940) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_10940) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_10940) >> 4) + Mask(254, 1, None + -(floor32(_10940) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_10940) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13320 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_13320]);
        else:
            require uint8(stor6[arg1].field_256) <= 3
            if uint8(stor6[arg1].field_256) != 1:
                revert with 0, 'Lottery State incorrect for draw'
            uint8(stor6[arg1].field_256) = 2
            emit RequestNumbers(arg1);
            require ext_code.size(stor3)
            staticcall stor3.0xc4e41b22 with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 128] = block.difficulty
            mem[(2 * ceil32(return_data.size)) + 160] = block.timestamp
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 96] = 96
            require uint8(stor6[arg1].field_256) <= 3
            if uint8(stor6[arg1].field_256) != 2:
                revert with 0, 'Draw numbers first'
            mem[0] = arg1
            mem[32] = 6
            uint8(stor6[arg1].field_256) = 3
            require sub_075dc415 <= test266151307()
            mem[(2 * ceil32(return_data.size)) + 224] = sub_075dc415
            mem[64] = (2 * ceil32(return_data.size)) + (32 * sub_075dc415) + 256
            if not sub_075dc415:
                idx = 0
                while idx < sub_075dc415:
                    mem[mem[64] + 32] = sha3(block.difficulty, block.timestamp, ext_call.return_data[0])
                    mem[mem[64] + 64] = idx
                    _2094 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if maxRange <= 0:
                        revert with 0, 'SafeMath: modulo by zero'
                    require maxRange
                    require idx < mem[(2 * ceil32(return_data.size)) + 224]
                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 256] = uint16(sha3(mem[_2094 + 32 len mem[_2094]]) % maxRange)
                    idx = idx + 1
                    continue 
                mem[32] = 6
                stor6[arg1].field_1792 = mem[(2 * ceil32(return_data.size)) + 224]
                mem[0] = sha3(arg1, 6) + 7
                if not mem[(2 * ceil32(return_data.size)) + 224]:
                    s = sha3(sha3(arg1, 6) + 7)
                    while sha3(sha3(arg1, 6) + 7) + (stor6[arg1].field_1792 + 15 / 16) > sub_075dc415:
                        uint8(stor5.field_160) = 0
                        s = sub_075dc415 + 1
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.0xc4e41b22 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4035 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4043 = mem[_4035]
                    mem[0] = arg1
                    mem[32] = 6
                    stor6[arg1].field_2560 = _4043
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4113 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = 1
                    s = mem[_4113]
                    while idx < arg1:
                        t = 1
                        u = 0
                        while uint16(t) < stor6[idx].field_1024:
                            require uint16(t) < stor6[idx].field_2048
                            if stor((Mask(12, 4, t) >> 4) + ('array', 8, ('map', ('var', 0), ('name', 'stor6', 6))))[uint8(t)] <= 0:
                                mem[0] = idx
                                mem[32] = 6
                                t = t + 1
                                u = u
                                continue 
                            require uint16(t) < stor6[idx].field_1024
                            if stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u < u:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = idx
                            mem[32] = 6
                            t = t + 1
                            u = stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u
                            continue 
                        if not stor6[idx].field_512:
                            mem[0] = idx
                            mem[32] = 6
                            if stor6[idx].field_2816 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > stor6[idx].field_2816 + s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = idx + 1
                            s = stor6[idx].field_2816 + s
                            continue 
                        if u * stor6[idx].field_512 / stor6[idx].field_512 != u:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[0] = idx
                        mem[32] = 6
                        if stor6[idx].field_2816 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if u * stor6[idx].field_512 / 100 > stor6[idx].field_2816 + s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        idx = idx + 1
                        s = stor6[idx].field_2816 + s - (u * stor6[idx].field_512 / 100)
                        continue 
                    stor6[arg1].field_512 = s
                    require sub_075dc415 <= test266151307()
                    _5921 = mem[64]
                    mem[mem[64]] = sub_075dc415
                    mem[64] = mem[64] + (32 * sub_075dc415) + 32
                    if not sub_075dc415:
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7874 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7917 = mem[_7874]
                            require mem[_7874] <= test266151307()
                            require _7874 + return_data.size > _7874 + mem[_7874] + 31
                            _7997 = mem[_7874 + mem[_7874]]
                            require mem[_7874 + mem[_7874]] <= test266151307()
                            require (32 * mem[_7874 + mem[_7874]]) + 32 >= 0 and _7874 + ceil32(return_data.size) + (32 * mem[_7874 + mem[_7874]]) + 32 <= test266151307()
                            mem[64] = _7874 + ceil32(return_data.size) + (32 * mem[_7874 + mem[_7874]]) + 32
                            mem[_7874 + ceil32(return_data.size)] = _7997
                            require return_data.size >= _7917 + (32 * _7997) + 32
                            t = _7874 + _7917 + 32
                            u = _7874 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _7997:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _9522 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_9522] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_9522]
                                    require s < mem[_7874 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _7874 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9522 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_9522 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_9522]
                                        require s < mem[_7874 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _7874 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9522 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_9522 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _9522 + 64
                                    t = 2
                                    while _9522 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _12057 = mem[_9522]
                                    s = 0
                                    t = 0
                                    while s < _12057:
                                        require s < mem[_9522]
                                        require s < mem[_7874 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _12057 = mem[_9522]
                                        if mem[(32 * s) + _7874 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9522 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_5921]
                                mem[(32 * uint8(t - 1)) + _5921 + 32] = uint16(mem[(32 * uint8(t - 1)) + _5921 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _7752 = mem[_5921]
                        stor6[arg1].field_2048 = mem[_5921]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _7752:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9655 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_9655]);
                        else:
                            s = 0
                            idx = _5921 + 32
                            while _5921 + (32 * _7752) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_7752) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_7752) >> 4) + Mask(254, 1, None + -(floor32(_7752) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_7752) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12337 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12337]);
                    else:
                        mem[_5921 + 32 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7876 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7918 = mem[_7876]
                            require mem[_7876] <= test266151307()
                            require _7876 + return_data.size > _7876 + mem[_7876] + 31
                            _7998 = mem[_7876 + mem[_7876]]
                            require mem[_7876 + mem[_7876]] <= test266151307()
                            require (32 * mem[_7876 + mem[_7876]]) + 32 >= 0 and _7876 + ceil32(return_data.size) + (32 * mem[_7876 + mem[_7876]]) + 32 <= test266151307()
                            mem[64] = _7876 + ceil32(return_data.size) + (32 * mem[_7876 + mem[_7876]]) + 32
                            mem[_7876 + ceil32(return_data.size)] = _7998
                            require return_data.size >= _7918 + (32 * _7998) + 32
                            t = _7876 + _7918 + 32
                            u = _7876 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _7998:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _9524 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_9524] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_9524]
                                    require s < mem[_7876 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _7876 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9524 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_9524 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_9524]
                                        require s < mem[_7876 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _7876 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9524 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_9524 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _9524 + 64
                                    t = 2
                                    while _9524 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _12058 = mem[_9524]
                                    s = 0
                                    t = 0
                                    while s < _12058:
                                        require s < mem[_9524]
                                        require s < mem[_7876 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _12058 = mem[_9524]
                                        if mem[(32 * s) + _7876 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9524 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_5921]
                                mem[(32 * uint8(t - 1)) + _5921 + 32] = uint16(mem[(32 * uint8(t - 1)) + _5921 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _7755 = mem[_5921]
                        stor6[arg1].field_2048 = mem[_5921]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _7755:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9657 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_9657]);
                        else:
                            s = 0
                            idx = _5921 + 32
                            while _5921 + (32 * _7755) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_7755) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_7755) >> 4) + Mask(254, 1, None + -(floor32(_7755) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_7755) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12338 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12338]);
                else:
                    s = 0
                    idx = (2 * ceil32(return_data.size)) + 256
                    while (2 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 224]) + 256 > idx:
                        stor6[arg1][7].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][7].field_0
                        s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                        idx = idx + 32
                        continue 
                    idx = floor32(mem[(2 * ceil32(return_data.size)) + 224]) >> 4
                    s = sha3(sha3(arg1, 6) + 7)
                    while idx:
                        stor[s] = !(65535 * 256^idx) and stor[s]
                        idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                        s = (idx + 3 / 32) + s
                        continue 
                    idx = (floor32(mem[(2 * ceil32(return_data.size)) + 224]) >> 4) + Mask(254, 1, None + -(floor32(mem[(2 * ceil32(return_data.size)) + 224]) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(mem[(2 * ceil32(return_data.size)) + 224]) >> 4) + 3) >> 1
                    while stor6[arg1].field_1792 + 15 / 16 > idx:
                        stor6[arg1][idx + 7].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.0xc4e41b22 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7878 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7920 = mem[_7878]
                    mem[0] = arg1
                    mem[32] = 6
                    stor6[arg1].field_2560 = _7920
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8142 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = 1
                    s = mem[_8142]
                    while idx < arg1:
                        t = 1
                        u = 0
                        while uint16(t) < stor6[idx].field_1024:
                            require uint16(t) < stor6[idx].field_2048
                            if stor((Mask(12, 4, t) >> 4) + ('array', 8, ('map', ('var', 0), ('name', 'stor6', 6))))[uint8(t)] <= 0:
                                mem[0] = idx
                                mem[32] = 6
                                t = t + 1
                                u = u
                                continue 
                            require uint16(t) < stor6[idx].field_1024
                            if stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u < u:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = idx
                            mem[32] = 6
                            t = t + 1
                            u = stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u
                            continue 
                        if not stor6[idx].field_512:
                            mem[0] = idx
                            mem[32] = 6
                            if stor6[idx].field_2816 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > stor6[idx].field_2816 + s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = idx + 1
                            s = stor6[idx].field_2816 + s
                            continue 
                        if u * stor6[idx].field_512 / stor6[idx].field_512 != u:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[0] = idx
                        mem[32] = 6
                        if stor6[idx].field_2816 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if u * stor6[idx].field_512 / 100 > stor6[idx].field_2816 + s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        idx = idx + 1
                        s = stor6[idx].field_2816 + s - (u * stor6[idx].field_512 / 100)
                        continue 
                    stor6[arg1].field_512 = s
                    require sub_075dc415 <= test266151307()
                    _9587 = mem[64]
                    mem[mem[64]] = sub_075dc415
                    mem[64] = mem[64] + (32 * sub_075dc415) + 32
                    if not sub_075dc415:
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11242 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11353 = mem[_11242]
                            require mem[_11242] <= test266151307()
                            require _11242 + return_data.size > _11242 + mem[_11242] + 31
                            _11437 = mem[_11242 + mem[_11242]]
                            require mem[_11242 + mem[_11242]] <= test266151307()
                            require (32 * mem[_11242 + mem[_11242]]) + 32 >= 0 and _11242 + ceil32(return_data.size) + (32 * mem[_11242 + mem[_11242]]) + 32 <= test266151307()
                            mem[64] = _11242 + ceil32(return_data.size) + (32 * mem[_11242 + mem[_11242]]) + 32
                            mem[_11242 + ceil32(return_data.size)] = _11437
                            require return_data.size >= _11353 + (32 * _11437) + 32
                            t = _11242 + _11353 + 32
                            u = _11242 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _11437:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _12162 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_12162] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_12162]
                                    require s < mem[_11242 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _11242 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12162 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_12162 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_12162]
                                        require s < mem[_11242 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _11242 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12162 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_12162 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _12162 + 64
                                    t = 2
                                    while _12162 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _13177 = mem[_12162]
                                    s = 0
                                    t = 0
                                    while s < _13177:
                                        require s < mem[_12162]
                                        require s < mem[_11242 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _13177 = mem[_12162]
                                        if mem[(32 * s) + _11242 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12162 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_9587]
                                mem[(32 * uint8(t - 1)) + _9587 + 32] = uint16(mem[(32 * uint8(t - 1)) + _9587 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _10948 = mem[_9587]
                        stor6[arg1].field_2048 = mem[_9587]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _10948:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12339 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12339]);
                        else:
                            s = 0
                            idx = _9587 + 32
                            while _9587 + (32 * _10948) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_10948) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_10948) >> 4) + Mask(254, 1, None + -(floor32(_10948) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_10948) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13321 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_13321]);
                    else:
                        mem[_9587 + 32 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11244 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11354 = mem[_11244]
                            require mem[_11244] <= test266151307()
                            require _11244 + return_data.size > _11244 + mem[_11244] + 31
                            _11438 = mem[_11244 + mem[_11244]]
                            require mem[_11244 + mem[_11244]] <= test266151307()
                            require (32 * mem[_11244 + mem[_11244]]) + 32 >= 0 and _11244 + ceil32(return_data.size) + (32 * mem[_11244 + mem[_11244]]) + 32 <= test266151307()
                            mem[64] = _11244 + ceil32(return_data.size) + (32 * mem[_11244 + mem[_11244]]) + 32
                            mem[_11244 + ceil32(return_data.size)] = _11438
                            require return_data.size >= _11354 + (32 * _11438) + 32
                            t = _11244 + _11354 + 32
                            u = _11244 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _11438:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _12164 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_12164] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_12164]
                                    require s < mem[_11244 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _11244 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12164 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_12164 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_12164]
                                        require s < mem[_11244 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _11244 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12164 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_12164 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _12164 + 64
                                    t = 2
                                    while _12164 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _13178 = mem[_12164]
                                    s = 0
                                    t = 0
                                    while s < _13178:
                                        require s < mem[_12164]
                                        require s < mem[_11244 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _13178 = mem[_12164]
                                        if mem[(32 * s) + _11244 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12164 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_9587]
                                mem[(32 * uint8(t - 1)) + _9587 + 32] = uint16(mem[(32 * uint8(t - 1)) + _9587 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _10951 = mem[_9587]
                        stor6[arg1].field_2048 = mem[_9587]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _10951:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12341 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12341]);
                        else:
                            s = 0
                            idx = _9587 + 32
                            while _9587 + (32 * _10951) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_10951) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_10951) >> 4) + Mask(254, 1, None + -(floor32(_10951) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_10951) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13322 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_13322]);
            else:
                mem[(2 * ceil32(return_data.size)) + 256 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
                idx = 0
                while idx < sub_075dc415:
                    mem[mem[64] + 32] = sha3(block.difficulty, block.timestamp, ext_call.return_data[0])
                    mem[mem[64] + 64] = idx
                    _2098 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if maxRange <= 0:
                        revert with 0, 'SafeMath: modulo by zero'
                    require maxRange
                    require idx < mem[(2 * ceil32(return_data.size)) + 224]
                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 256] = uint16(sha3(mem[_2098 + 32 len mem[_2098]]) % maxRange)
                    idx = idx + 1
                    continue 
                mem[32] = 6
                stor6[arg1].field_1792 = mem[(2 * ceil32(return_data.size)) + 224]
                mem[0] = sha3(arg1, 6) + 7
                if not mem[(2 * ceil32(return_data.size)) + 224]:
                    s = sha3(sha3(arg1, 6) + 7)
                    while sha3(sha3(arg1, 6) + 7) + (stor6[arg1].field_1792 + 15 / 16) > sub_075dc415:
                        uint8(stor5.field_160) = 0
                        s = sub_075dc415 + 1
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.0xc4e41b22 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4036 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4044 = mem[_4036]
                    mem[0] = arg1
                    mem[32] = 6
                    stor6[arg1].field_2560 = _4044
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4115 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = 1
                    s = mem[_4115]
                    while idx < arg1:
                        t = 1
                        u = 0
                        while uint16(t) < stor6[idx].field_1024:
                            require uint16(t) < stor6[idx].field_2048
                            if stor((Mask(12, 4, t) >> 4) + ('array', 8, ('map', ('var', 0), ('name', 'stor6', 6))))[uint8(t)] <= 0:
                                mem[0] = idx
                                mem[32] = 6
                                t = t + 1
                                u = u
                                continue 
                            require uint16(t) < stor6[idx].field_1024
                            if stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u < u:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = idx
                            mem[32] = 6
                            t = t + 1
                            u = stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u
                            continue 
                        if not stor6[idx].field_512:
                            mem[0] = idx
                            mem[32] = 6
                            if stor6[idx].field_2816 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > stor6[idx].field_2816 + s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = idx + 1
                            s = stor6[idx].field_2816 + s
                            continue 
                        if u * stor6[idx].field_512 / stor6[idx].field_512 != u:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[0] = idx
                        mem[32] = 6
                        if stor6[idx].field_2816 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if u * stor6[idx].field_512 / 100 > stor6[idx].field_2816 + s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        idx = idx + 1
                        s = stor6[idx].field_2816 + s - (u * stor6[idx].field_512 / 100)
                        continue 
                    stor6[arg1].field_512 = s
                    require sub_075dc415 <= test266151307()
                    _5923 = mem[64]
                    mem[mem[64]] = sub_075dc415
                    mem[64] = mem[64] + (32 * sub_075dc415) + 32
                    if not sub_075dc415:
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7880 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7921 = mem[_7880]
                            require mem[_7880] <= test266151307()
                            require _7880 + return_data.size > _7880 + mem[_7880] + 31
                            _8001 = mem[_7880 + mem[_7880]]
                            require mem[_7880 + mem[_7880]] <= test266151307()
                            require (32 * mem[_7880 + mem[_7880]]) + 32 >= 0 and _7880 + ceil32(return_data.size) + (32 * mem[_7880 + mem[_7880]]) + 32 <= test266151307()
                            mem[64] = _7880 + ceil32(return_data.size) + (32 * mem[_7880 + mem[_7880]]) + 32
                            mem[_7880 + ceil32(return_data.size)] = _8001
                            require return_data.size >= _7921 + (32 * _8001) + 32
                            t = _7880 + _7921 + 32
                            u = _7880 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _8001:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _9528 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_9528] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_9528]
                                    require s < mem[_7880 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _7880 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9528 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_9528 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_9528]
                                        require s < mem[_7880 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _7880 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9528 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_9528 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _9528 + 64
                                    t = 2
                                    while _9528 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _12059 = mem[_9528]
                                    s = 0
                                    t = 0
                                    while s < _12059:
                                        require s < mem[_9528]
                                        require s < mem[_7880 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _12059 = mem[_9528]
                                        if mem[(32 * s) + _7880 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9528 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_5923]
                                mem[(32 * uint8(t - 1)) + _5923 + 32] = uint16(mem[(32 * uint8(t - 1)) + _5923 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _7759 = mem[_5923]
                        stor6[arg1].field_2048 = mem[_5923]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _7759:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9662 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_9662]);
                        else:
                            s = 0
                            idx = _5923 + 32
                            while _5923 + (32 * _7759) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_7759) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_7759) >> 4) + Mask(254, 1, None + -(floor32(_7759) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_7759) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12343 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12343]);
                    else:
                        mem[_5923 + 32 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7882 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7922 = mem[_7882]
                            require mem[_7882] <= test266151307()
                            require _7882 + return_data.size > _7882 + mem[_7882] + 31
                            _8002 = mem[_7882 + mem[_7882]]
                            require mem[_7882 + mem[_7882]] <= test266151307()
                            require (32 * mem[_7882 + mem[_7882]]) + 32 >= 0 and _7882 + ceil32(return_data.size) + (32 * mem[_7882 + mem[_7882]]) + 32 <= test266151307()
                            mem[64] = _7882 + ceil32(return_data.size) + (32 * mem[_7882 + mem[_7882]]) + 32
                            mem[_7882 + ceil32(return_data.size)] = _8002
                            require return_data.size >= _7922 + (32 * _8002) + 32
                            t = _7882 + _7922 + 32
                            u = _7882 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _8002:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _9530 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_9530] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_9530]
                                    require s < mem[_7882 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _7882 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9530 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_9530 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_9530]
                                        require s < mem[_7882 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _7882 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9530 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_9530 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _9530 + 64
                                    t = 2
                                    while _9530 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _12060 = mem[_9530]
                                    s = 0
                                    t = 0
                                    while s < _12060:
                                        require s < mem[_9530]
                                        require s < mem[_7882 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _12060 = mem[_9530]
                                        if mem[(32 * s) + _7882 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _9530 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_5923]
                                mem[(32 * uint8(t - 1)) + _5923 + 32] = uint16(mem[(32 * uint8(t - 1)) + _5923 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _7762 = mem[_5923]
                        stor6[arg1].field_2048 = mem[_5923]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _7762:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9664 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_9664]);
                        else:
                            s = 0
                            idx = _5923 + 32
                            while _5923 + (32 * _7762) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_7762) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_7762) >> 4) + Mask(254, 1, None + -(floor32(_7762) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_7762) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12344 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12344]);
                else:
                    s = 0
                    idx = (2 * ceil32(return_data.size)) + 256
                    while (2 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 224]) + 256 > idx:
                        stor6[arg1][7].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][7].field_0
                        s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                        idx = idx + 32
                        continue 
                    idx = floor32(mem[(2 * ceil32(return_data.size)) + 224]) >> 4
                    s = sha3(sha3(arg1, 6) + 7)
                    while idx:
                        stor[s] = !(65535 * 256^idx) and stor[s]
                        idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                        s = (idx + 3 / 32) + s
                        continue 
                    idx = (floor32(mem[(2 * ceil32(return_data.size)) + 224]) >> 4) + Mask(254, 1, None + -(floor32(mem[(2 * ceil32(return_data.size)) + 224]) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(mem[(2 * ceil32(return_data.size)) + 224]) >> 4) + 3) >> 1
                    while stor6[arg1].field_1792 + 15 / 16 > idx:
                        stor6[arg1][idx + 7].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.0xc4e41b22 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7884 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7924 = mem[_7884]
                    mem[0] = arg1
                    mem[32] = 6
                    stor6[arg1].field_2560 = _7924
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8148 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = 1
                    s = mem[_8148]
                    while idx < arg1:
                        t = 1
                        u = 0
                        while uint16(t) < stor6[idx].field_1024:
                            require uint16(t) < stor6[idx].field_2048
                            if stor((Mask(12, 4, t) >> 4) + ('array', 8, ('map', ('var', 0), ('name', 'stor6', 6))))[uint8(t)] <= 0:
                                mem[0] = idx
                                mem[32] = 6
                                t = t + 1
                                u = u
                                continue 
                            require uint16(t) < stor6[idx].field_1024
                            if stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u < u:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = idx
                            mem[32] = 6
                            t = t + 1
                            u = stor(('array', 4, ('map', ('var', 0), ('name', 'stor6', 6))) + (Mask(11, 5, t) >> 5))[uint8(t)] + u
                            continue 
                        if not stor6[idx].field_512:
                            mem[0] = idx
                            mem[32] = 6
                            if stor6[idx].field_2816 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > stor6[idx].field_2816 + s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = idx + 1
                            s = stor6[idx].field_2816 + s
                            continue 
                        if u * stor6[idx].field_512 / stor6[idx].field_512 != u:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[0] = idx
                        mem[32] = 6
                        if stor6[idx].field_2816 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if u * stor6[idx].field_512 / 100 > stor6[idx].field_2816 + s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        idx = idx + 1
                        s = stor6[idx].field_2816 + s - (u * stor6[idx].field_512 / 100)
                        continue 
                    stor6[arg1].field_512 = s
                    require sub_075dc415 <= test266151307()
                    _9595 = mem[64]
                    mem[mem[64]] = sub_075dc415
                    mem[64] = mem[64] + (32 * sub_075dc415) + 32
                    if not sub_075dc415:
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11249 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11362 = mem[_11249]
                            require mem[_11249] <= test266151307()
                            require _11249 + return_data.size > _11249 + mem[_11249] + 31
                            _11442 = mem[_11249 + mem[_11249]]
                            require mem[_11249 + mem[_11249]] <= test266151307()
                            require (32 * mem[_11249 + mem[_11249]]) + 32 >= 0 and _11249 + ceil32(return_data.size) + (32 * mem[_11249 + mem[_11249]]) + 32 <= test266151307()
                            mem[64] = _11249 + ceil32(return_data.size) + (32 * mem[_11249 + mem[_11249]]) + 32
                            mem[_11249 + ceil32(return_data.size)] = _11442
                            require return_data.size >= _11362 + (32 * _11442) + 32
                            t = _11249 + _11362 + 32
                            u = _11249 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _11442:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _12170 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_12170] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_12170]
                                    require s < mem[_11249 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _11249 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12170 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_12170 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_12170]
                                        require s < mem[_11249 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _11249 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12170 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_12170 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _12170 + 64
                                    t = 2
                                    while _12170 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _13179 = mem[_12170]
                                    s = 0
                                    t = 0
                                    while s < _13179:
                                        require s < mem[_12170]
                                        require s < mem[_11249 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _13179 = mem[_12170]
                                        if mem[(32 * s) + _11249 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12170 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_9595]
                                mem[(32 * uint8(t - 1)) + _9595 + 32] = uint16(mem[(32 * uint8(t - 1)) + _9595 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _10959 = mem[_9595]
                        stor6[arg1].field_2048 = mem[_9595]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _10959:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12345 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12345]);
                        else:
                            s = 0
                            idx = _9595 + 32
                            while _9595 + (32 * _10959) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_10959) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_10959) >> 4) + Mask(254, 1, None + -(floor32(_10959) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_10959) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13323 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_13323]);
                    else:
                        mem[_9595 + 32 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
                        mem[0] = arg1
                        mem[32] = 6
                        idx = stor6[arg1].field_2304
                        while idx <= stor6[arg1].field_2560:
                            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = idx
                            require ext_code.size(stor3)
                            staticcall stor3.0x9839eafd with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11251 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11363 = mem[_11251]
                            require mem[_11251] <= test266151307()
                            require _11251 + return_data.size > _11251 + mem[_11251] + 31
                            _11443 = mem[_11251 + mem[_11251]]
                            require mem[_11251 + mem[_11251]] <= test266151307()
                            require (32 * mem[_11251 + mem[_11251]]) + 32 >= 0 and _11251 + ceil32(return_data.size) + (32 * mem[_11251 + mem[_11251]]) + 32 <= test266151307()
                            mem[64] = _11251 + ceil32(return_data.size) + (32 * mem[_11251 + mem[_11251]]) + 32
                            mem[_11251 + ceil32(return_data.size)] = _11443
                            require return_data.size >= _11363 + (32 * _11443) + 32
                            t = _11251 + _11363 + 32
                            u = _11251 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _11443:
                                require mem[t] == mem[t + 30 len 2]
                                mem[u] = mem[t]
                                mem[0] = arg1
                                mem[32] = 6
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            mem[0] = arg1
                            mem[32] = 6
                            _12172 = mem[64]
                            mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                            mem[_12172] = stor6[arg1].field_1792
                            if not stor6[arg1].field_1792:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_12172]
                                    require s < mem[_11251 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _11251 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12172 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[0] = sha3(arg1, 6) + 7
                                mem[_12172 + 32] = uint16(stor6[arg1][7].field_0)
                                if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                    s = 0
                                    t = 0
                                    while s < stor6[arg1].field_1792:
                                        require s < mem[_12172]
                                        require s < mem[_11251 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        if mem[(32 * s) + _11251 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12172 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                else:
                                    mem[_12172 + 64] = uint16(stor6[arg1][7].field_16)
                                    s = _12172 + 64
                                    t = 2
                                    while _12172 + (32 * stor6[arg1].field_1792) > s:
                                        mem[0] = arg1
                                        mem[32] = 6
                                        mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                        s = s + 32
                                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                        continue 
                                    _13180 = mem[_12172]
                                    s = 0
                                    t = 0
                                    while s < _13180:
                                        require s < mem[_12172]
                                        require s < mem[_11251 + ceil32(return_data.size)]
                                        mem[0] = arg1
                                        mem[32] = 6
                                        _13180 = mem[_12172]
                                        if mem[(32 * s) + _11251 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _12172 + 62 len 2]:
                                            s = s + 1
                                            t = t
                                            continue 
                                        s = s + 1
                                        t = t + 1
                                        continue 
                            if uint8(t):
                                require uint8(t - 1) < mem[_9595]
                                mem[(32 * uint8(t - 1)) + _9595 + 32] = uint16(mem[(32 * uint8(t - 1)) + _9595 + 32] + 1)
                            mem[0] = arg1
                            mem[32] = 6
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 6
                        _10962 = mem[_9595]
                        stor6[arg1].field_2048 = mem[_9595]
                        mem[0] = sha3(arg1, 6) + 8
                        if not _10962:
                            idx = 0
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12347 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_12347]);
                        else:
                            s = 0
                            idx = _9595 + 32
                            while _9595 + (32 * _10962) + 32 > idx:
                                stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                idx = idx + 32
                                continue 
                            idx = floor32(_10962) >> 4
                            s = sha3(sha3(arg1, 6) + 8)
                            while idx:
                                stor[s] = !(65535 * 256^idx) and stor[s]
                                idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                                s = (idx + 3 / 32) + s
                                continue 
                            idx = (floor32(_10962) >> 4) + Mask(254, 1, None + -(floor32(_10962) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_10962) >> 4) + 3) >> 1
                            while stor6[arg1].field_2048 + 15 / 16 > idx:
                                stor6[arg1][idx + 8].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.0xc4e41b22 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13324 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit LotteryClose(arg1, mem[_13324]);
}



}
