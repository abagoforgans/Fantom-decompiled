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
    staticcall stor2.0x70a08231 with:
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
            if 0 > s:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor6[idx].field_2816 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = stor6[idx].field_2816 + s
            continue 
        if u * stor6[idx].field_512 / stor6[idx].field_512 != u:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[0] = idx
        mem[32] = 6
        if u * stor6[idx].field_512 / 100 > s:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor6[idx].field_2816 < 0:
            revert with 0, 'SafeMath: addition overflow'
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
    staticcall stor3.getTicketNumbers(uint256 rg1) with:
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
            staticcall stor3.getOwnerOfTicket(uint256 rg1) with:
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
            staticcall stor3.getTicketClaimStatus(uint256 rg1) with:
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
                call stor3.claimTicket(uint256 rg1, uint256 rg2) with:
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
                staticcall stor3.getTicketNumbers(uint256 rg1) with:
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
        staticcall stor2.0x70a08231 with:
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
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
            staticcall stor3.getOwnerOfTicket(uint256 rg1) with:
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
            staticcall stor3.getTicketClaimStatus(uint256 rg1) with:
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
                call stor3.claimTicket(uint256 rg1, uint256 rg2) with:
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
                staticcall stor3.getTicketNumbers(uint256 rg1) with:
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
        staticcall stor2.0x70a08231 with:
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
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
        mem[0] = sha3(arg1, 6) + 8
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
        t = mem[64] + 448
        while idx < stor6[arg1].field_1024:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1152] = mem[640]
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1184] = mem[672]
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1216] = (32 * stor6[arg1].field_1024) + 416
        _493 = mem[mem[704]]
        mem[(64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1408] = mem[mem[704]]
        idx = 0
        s = mem[704] + 32
        t = (64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1440
        while idx < _493:
            mem[t] = mem[s + 30 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1248] = (32 * stor6[arg1].field_1024) + (32 * _493) + 448
        _580 = mem[mem[736]]
        mem[(64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + (32 * _493) + 1440] = mem[mem[736]]
        idx = 0
        s = mem[736] + 32
        t = (64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + (32 * _493) + 1472
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
           len (64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + (32 * _493) + (32 * _580) + -mem[64] + 1472
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
        mem[0] = sha3(arg1, 6) + 8
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
        t = mem[64] + 448
        while idx < stor6[arg1].field_1024:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1152] = mem[640]
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1184] = mem[672]
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1216] = (32 * stor6[arg1].field_1024) + 416
        _495 = mem[mem[704]]
        mem[(64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1408] = mem[mem[704]]
        idx = 0
        s = mem[704] + 32
        t = (64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1440
        while idx < _495:
            mem[t] = mem[s + 30 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1248] = (32 * stor6[arg1].field_1024) + (32 * _495) + 448
        _582 = mem[mem[736]]
        mem[(64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + (32 * _495) + 1440] = mem[mem[736]]
        idx = 0
        s = mem[736] + 32
        t = (64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + (32 * _495) + 1472
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
           len (64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + (32 * _495) + (32 * _582) + -mem[64] + 1472
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
    if not stor6[arg1].field_2048:
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
        t = mem[64] + 448
        while idx < stor6[arg1].field_1024:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1152] = mem[640]
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1184] = mem[672]
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1216] = (32 * stor6[arg1].field_1024) + 416
        _496 = mem[mem[704]]
        mem[(64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1408] = mem[mem[704]]
        idx = 0
        s = mem[704] + 32
        t = (64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1440
        while idx < _496:
            mem[t] = mem[s + 30 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1248] = (32 * stor6[arg1].field_1024) + (32 * _496) + 448
        _583 = mem[mem[736]]
        mem[(64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + (32 * _496) + 1440] = mem[mem[736]]
        idx = 0
        s = mem[736] + 32
        t = (64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + (32 * _496) + 1472
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
           len (64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + (32 * _496) + (32 * _583) + -mem[64] + 1472
    mem[0] = sha3(arg1, 6) + 8
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
    t = mem[64] + 448
    while idx < stor6[arg1].field_1024:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1152] = mem[640]
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1184] = mem[672]
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1216] = (32 * stor6[arg1].field_1024) + 416
    _584 = mem[mem[704]]
    mem[(64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1408] = mem[mem[704]]
    idx = 0
    s = mem[704] + 32
    t = (64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1440
    while idx < _584:
        mem[t] = mem[s + 30 len 2]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + 1248] = (32 * stor6[arg1].field_1024) + (32 * _584) + 448
    _625 = mem[mem[736]]
    mem[(64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + (32 * _584) + 1440] = mem[mem[736]]
    idx = 0
    s = mem[736] + 32
    t = (64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + (32 * _584) + 1472
    while idx < _625:
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
       len (64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * stor6[arg1].field_2048) + (32 * _584) + (32 * _625) + -mem[64] + 1472
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
        require uint8(stor6[arg1].field_256) <= 3
        if uint8(stor6[arg1].field_256) != 3:
            revert with 0, 'Winning Numbers not chosen yet'
        mem[100] = arg2
        require ext_code.size(stor3)
        staticcall stor3.getOwnerOfTicket(uint256 rg1) with:
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
        call stor3.claimTicket(uint256 rg1, uint256 rg2) with:
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
        staticcall stor3.getTicketNumbers(uint256 rg1) with:
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
        mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
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
                staticcall stor2.0x70a08231 with:
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
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                    staticcall stor2.0x70a08231 with:
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
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                        staticcall stor2.0x70a08231 with:
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
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                        staticcall stor2.0x70a08231 with:
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
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                    staticcall stor2.0x70a08231 with:
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
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                        staticcall stor2.0x70a08231 with:
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
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                            staticcall stor2.0x70a08231 with:
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
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                            staticcall stor2.0x70a08231 with:
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
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                    staticcall stor2.0x70a08231 with:
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
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                        staticcall stor2.0x70a08231 with:
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
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                            staticcall stor2.0x70a08231 with:
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
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                            staticcall stor2.0x70a08231 with:
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
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
        require uint8(stor6[arg1].field_256) <= 3
        if uint8(stor6[arg1].field_256) != 3:
            revert with 0, 'Winning Numbers not chosen yet'
        mem[ceil32(return_data.size) + 100] = arg2
        require ext_code.size(stor3)
        staticcall stor3.getOwnerOfTicket(uint256 rg1) with:
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
        call stor3.claimTicket(uint256 rg1, uint256 rg2) with:
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
        staticcall stor3.getTicketNumbers(uint256 rg1) with:
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
        mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
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
                staticcall stor2.0x70a08231 with:
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
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                    staticcall stor2.0x70a08231 with:
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
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                        staticcall stor2.0x70a08231 with:
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
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                        staticcall stor2.0x70a08231 with:
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
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                    staticcall stor2.0x70a08231 with:
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
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                        staticcall stor2.0x70a08231 with:
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
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                            staticcall stor2.0x70a08231 with:
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
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                            staticcall stor2.0x70a08231 with:
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
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                    staticcall stor2.0x70a08231 with:
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
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                        staticcall stor2.0x70a08231 with:
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
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                            staticcall stor2.0x70a08231 with:
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
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                            staticcall stor2.0x70a08231 with:
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
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
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
        if uint8(stor6[arg1].field_256) != 1:
            revert with 0, 'Lottery State incorrect for draw'
        uint8(stor6[arg1].field_256) = 2
        emit RequestNumbers(arg1);
        require ext_code.size(stor3)
        staticcall stor3.getTotalSupply() with:
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
                _1044 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if maxRange <= 0:
                    revert with 0, 'SafeMath: modulo by zero'
                require maxRange
                require idx < mem[ceil32(return_data.size) + 224]
                mem[(32 * idx) + ceil32(return_data.size) + 256] = uint16(sha3(mem[_1044 + 32 len mem[_1044]]) % maxRange)
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
                staticcall stor3.getTotalSupply() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2023 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2027 = mem[_2023]
                mem[0] = arg1
                mem[32] = 6
                stor6[arg1].field_2560 = _2027
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2059 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                idx = 1
                s = mem[_2059]
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
                        if 0 > s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor6[idx].field_2816 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = stor6[idx].field_2816 + s
                        continue 
                    if u * stor6[idx].field_512 / stor6[idx].field_512 != u:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[0] = idx
                    mem[32] = 6
                    if u * stor6[idx].field_512 / 100 > s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor6[idx].field_2816 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = stor6[idx].field_2816 + s - (u * stor6[idx].field_512 / 100)
                    continue 
                stor6[arg1].field_512 = s
                require sub_075dc415 <= test266151307()
                _2963 = mem[64]
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
                        staticcall stor3.getTicketNumbers(uint256 rg1) with:
                                gas gas_remaining wei
                               args idx
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3928 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3955 = mem[_3928]
                        require mem[_3928] <= test266151307()
                        require _3928 + return_data.size > _3928 + mem[_3928] + 31
                        _3995 = mem[_3928 + mem[_3928]]
                        require mem[_3928 + mem[_3928]] <= test266151307()
                        require (32 * mem[_3928 + mem[_3928]]) + 32 >= 0 and _3928 + ceil32(return_data.size) + (32 * mem[_3928 + mem[_3928]]) + 32 <= test266151307()
                        mem[64] = _3928 + ceil32(return_data.size) + (32 * mem[_3928 + mem[_3928]]) + 32
                        mem[_3928 + ceil32(return_data.size)] = _3995
                        require return_data.size >= _3955 + (32 * _3995) + 32
                        t = _3928 + _3955 + 32
                        u = _3928 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _3995:
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
                        _4752 = mem[64]
                        mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                        mem[_4752] = stor6[arg1].field_1792
                        if not stor6[arg1].field_1792:
                            s = 0
                            t = 0
                            while s < stor6[arg1].field_1792:
                                require s < mem[_4752]
                                require s < mem[_3928 + ceil32(return_data.size)]
                                mem[0] = arg1
                                mem[32] = 6
                                if mem[(32 * s) + _3928 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _4752 + 62 len 2]:
                                    s = s + 1
                                    t = t
                                    continue 
                                s = s + 1
                                t = t + 1
                                continue 
                        else:
                            mem[0] = sha3(arg1, 6) + 7
                            mem[_4752 + 32] = uint16(stor6[arg1][7].field_0)
                            if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_4752]
                                    require s < mem[_3928 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _3928 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _4752 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[_4752 + 64] = uint16(stor6[arg1][7].field_16)
                                s = _4752 + 64
                                t = 2
                                while _4752 + (32 * stor6[arg1].field_1792) > s:
                                    mem[0] = arg1
                                    mem[32] = 6
                                    mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                    s = s + 32
                                    t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                    continue 
                                _6031 = mem[_4752]
                                s = 0
                                t = 0
                                while s < _6031:
                                    require s < mem[_4752]
                                    require s < mem[_3928 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    _6031 = mem[_4752]
                                    if mem[(32 * s) + _3928 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _4752 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                        if uint8(t):
                            require uint8(t - 1) < mem[_2963]
                            mem[(32 * uint8(t - 1)) + _2963 + 32] = uint16(mem[(32 * uint8(t - 1)) + _2963 + 32] + 1)
                        mem[0] = arg1
                        mem[32] = 6
                        idx = idx + 1
                        continue 
                    mem[0] = arg1
                    mem[32] = 6
                    _3864 = mem[_2963]
                    stor6[arg1].field_2048 = mem[_2963]
                    mem[0] = sha3(arg1, 6) + 8
                    if not _3864:
                        idx = 0
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4815 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_4815]);
                    else:
                        s = 0
                        idx = _2963 + 32
                        while _2963 + (32 * _3864) + 32 > idx:
                            stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                            idx = idx + 32
                            continue 
                        idx = floor32(_3864) >> 4
                        s = sha3(sha3(arg1, 6) + 8)
                        while idx:
                            stor[s] = !(65535 * 256^idx) and stor[s]
                            idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                            s = (idx + 3 / 32) + s
                            continue 
                        idx = (floor32(_3864) >> 4) + Mask(254, 1, None + -(floor32(_3864) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_3864) >> 4) + 3) >> 1
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6159 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_6159]);
                else:
                    mem[_2963 + 32 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
                    mem[0] = arg1
                    mem[32] = 6
                    idx = stor6[arg1].field_2304
                    while idx <= stor6[arg1].field_2560:
                        mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = idx
                        require ext_code.size(stor3)
                        staticcall stor3.getTicketNumbers(uint256 rg1) with:
                                gas gas_remaining wei
                               args idx
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3930 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3956 = mem[_3930]
                        require mem[_3930] <= test266151307()
                        require _3930 + return_data.size > _3930 + mem[_3930] + 31
                        _3996 = mem[_3930 + mem[_3930]]
                        require mem[_3930 + mem[_3930]] <= test266151307()
                        require (32 * mem[_3930 + mem[_3930]]) + 32 >= 0 and _3930 + ceil32(return_data.size) + (32 * mem[_3930 + mem[_3930]]) + 32 <= test266151307()
                        mem[64] = _3930 + ceil32(return_data.size) + (32 * mem[_3930 + mem[_3930]]) + 32
                        mem[_3930 + ceil32(return_data.size)] = _3996
                        require return_data.size >= _3956 + (32 * _3996) + 32
                        t = _3930 + _3956 + 32
                        u = _3930 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _3996:
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
                        _4754 = mem[64]
                        mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                        mem[_4754] = stor6[arg1].field_1792
                        if not stor6[arg1].field_1792:
                            s = 0
                            t = 0
                            while s < stor6[arg1].field_1792:
                                require s < mem[_4754]
                                require s < mem[_3930 + ceil32(return_data.size)]
                                mem[0] = arg1
                                mem[32] = 6
                                if mem[(32 * s) + _3930 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _4754 + 62 len 2]:
                                    s = s + 1
                                    t = t
                                    continue 
                                s = s + 1
                                t = t + 1
                                continue 
                        else:
                            mem[0] = sha3(arg1, 6) + 7
                            mem[_4754 + 32] = uint16(stor6[arg1][7].field_0)
                            if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_4754]
                                    require s < mem[_3930 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _3930 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _4754 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[_4754 + 64] = uint16(stor6[arg1][7].field_16)
                                s = _4754 + 64
                                t = 2
                                while _4754 + (32 * stor6[arg1].field_1792) > s:
                                    mem[0] = arg1
                                    mem[32] = 6
                                    mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                    s = s + 32
                                    t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                    continue 
                                _6032 = mem[_4754]
                                s = 0
                                t = 0
                                while s < _6032:
                                    require s < mem[_4754]
                                    require s < mem[_3930 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    _6032 = mem[_4754]
                                    if mem[(32 * s) + _3930 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _4754 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                        if uint8(t):
                            require uint8(t - 1) < mem[_2963]
                            mem[(32 * uint8(t - 1)) + _2963 + 32] = uint16(mem[(32 * uint8(t - 1)) + _2963 + 32] + 1)
                        mem[0] = arg1
                        mem[32] = 6
                        idx = idx + 1
                        continue 
                    mem[0] = arg1
                    mem[32] = 6
                    _3867 = mem[_2963]
                    stor6[arg1].field_2048 = mem[_2963]
                    mem[0] = sha3(arg1, 6) + 8
                    if not _3867:
                        idx = 0
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4817 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_4817]);
                    else:
                        s = 0
                        idx = _2963 + 32
                        while _2963 + (32 * _3867) + 32 > idx:
                            stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                            idx = idx + 32
                            continue 
                        idx = floor32(_3867) >> 4
                        s = sha3(sha3(arg1, 6) + 8)
                        while idx:
                            stor[s] = !(65535 * 256^idx) and stor[s]
                            idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                            s = (idx + 3 / 32) + s
                            continue 
                        idx = (floor32(_3867) >> 4) + Mask(254, 1, None + -(floor32(_3867) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_3867) >> 4) + 3) >> 1
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6160 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_6160]);
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
                staticcall stor3.getTotalSupply() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3932 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3958 = mem[_3932]
                mem[0] = arg1
                mem[32] = 6
                stor6[arg1].field_2560 = _3958
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4064 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                idx = 1
                s = mem[_4064]
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
                        if 0 > s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor6[idx].field_2816 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = stor6[idx].field_2816 + s
                        continue 
                    if u * stor6[idx].field_512 / stor6[idx].field_512 != u:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[0] = idx
                    mem[32] = 6
                    if u * stor6[idx].field_512 / 100 > s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor6[idx].field_2816 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = stor6[idx].field_2816 + s - (u * stor6[idx].field_512 / 100)
                    continue 
                stor6[arg1].field_512 = s
                require sub_075dc415 <= test266151307()
                _4781 = mem[64]
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
                        staticcall stor3.getTicketNumbers(uint256 rg1) with:
                                gas gas_remaining wei
                               args idx
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5610 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5661 = mem[_5610]
                        require mem[_5610] <= test266151307()
                        require _5610 + return_data.size > _5610 + mem[_5610] + 31
                        _5713 = mem[_5610 + mem[_5610]]
                        require mem[_5610 + mem[_5610]] <= test266151307()
                        require (32 * mem[_5610 + mem[_5610]]) + 32 >= 0 and _5610 + ceil32(return_data.size) + (32 * mem[_5610 + mem[_5610]]) + 32 <= test266151307()
                        mem[64] = _5610 + ceil32(return_data.size) + (32 * mem[_5610 + mem[_5610]]) + 32
                        mem[_5610 + ceil32(return_data.size)] = _5713
                        require return_data.size >= _5661 + (32 * _5713) + 32
                        t = _5610 + _5661 + 32
                        u = _5610 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _5713:
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
                        _6068 = mem[64]
                        mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                        mem[_6068] = stor6[arg1].field_1792
                        if not stor6[arg1].field_1792:
                            s = 0
                            t = 0
                            while s < stor6[arg1].field_1792:
                                require s < mem[_6068]
                                require s < mem[_5610 + ceil32(return_data.size)]
                                mem[0] = arg1
                                mem[32] = 6
                                if mem[(32 * s) + _5610 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _6068 + 62 len 2]:
                                    s = s + 1
                                    t = t
                                    continue 
                                s = s + 1
                                t = t + 1
                                continue 
                        else:
                            mem[0] = sha3(arg1, 6) + 7
                            mem[_6068 + 32] = uint16(stor6[arg1][7].field_0)
                            if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_6068]
                                    require s < mem[_5610 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _5610 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _6068 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[_6068 + 64] = uint16(stor6[arg1][7].field_16)
                                s = _6068 + 64
                                t = 2
                                while _6068 + (32 * stor6[arg1].field_1792) > s:
                                    mem[0] = arg1
                                    mem[32] = 6
                                    mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                    s = s + 32
                                    t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                    continue 
                                _6591 = mem[_6068]
                                s = 0
                                t = 0
                                while s < _6591:
                                    require s < mem[_6068]
                                    require s < mem[_5610 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    _6591 = mem[_6068]
                                    if mem[(32 * s) + _5610 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _6068 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                        if uint8(t):
                            require uint8(t - 1) < mem[_4781]
                            mem[(32 * uint8(t - 1)) + _4781 + 32] = uint16(mem[(32 * uint8(t - 1)) + _4781 + 32] + 1)
                        mem[0] = arg1
                        mem[32] = 6
                        idx = idx + 1
                        continue 
                    mem[0] = arg1
                    mem[32] = 6
                    _5452 = mem[_4781]
                    stor6[arg1].field_2048 = mem[_4781]
                    mem[0] = sha3(arg1, 6) + 8
                    if not _5452:
                        idx = 0
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6161 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_6161]);
                    else:
                        s = 0
                        idx = _4781 + 32
                        while _4781 + (32 * _5452) + 32 > idx:
                            stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                            idx = idx + 32
                            continue 
                        idx = floor32(_5452) >> 4
                        s = sha3(sha3(arg1, 6) + 8)
                        while idx:
                            stor[s] = !(65535 * 256^idx) and stor[s]
                            idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                            s = (idx + 3 / 32) + s
                            continue 
                        idx = (floor32(_5452) >> 4) + Mask(254, 1, None + -(floor32(_5452) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_5452) >> 4) + 3) >> 1
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6663 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_6663]);
                else:
                    mem[_4781 + 32 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
                    mem[0] = arg1
                    mem[32] = 6
                    idx = stor6[arg1].field_2304
                    while idx <= stor6[arg1].field_2560:
                        mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = idx
                        require ext_code.size(stor3)
                        staticcall stor3.getTicketNumbers(uint256 rg1) with:
                                gas gas_remaining wei
                               args idx
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5612 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5662 = mem[_5612]
                        require mem[_5612] <= test266151307()
                        require _5612 + return_data.size > _5612 + mem[_5612] + 31
                        _5714 = mem[_5612 + mem[_5612]]
                        require mem[_5612 + mem[_5612]] <= test266151307()
                        require (32 * mem[_5612 + mem[_5612]]) + 32 >= 0 and _5612 + ceil32(return_data.size) + (32 * mem[_5612 + mem[_5612]]) + 32 <= test266151307()
                        mem[64] = _5612 + ceil32(return_data.size) + (32 * mem[_5612 + mem[_5612]]) + 32
                        mem[_5612 + ceil32(return_data.size)] = _5714
                        require return_data.size >= _5662 + (32 * _5714) + 32
                        t = _5612 + _5662 + 32
                        u = _5612 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _5714:
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
                        _6070 = mem[64]
                        mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                        mem[_6070] = stor6[arg1].field_1792
                        if not stor6[arg1].field_1792:
                            s = 0
                            t = 0
                            while s < stor6[arg1].field_1792:
                                require s < mem[_6070]
                                require s < mem[_5612 + ceil32(return_data.size)]
                                mem[0] = arg1
                                mem[32] = 6
                                if mem[(32 * s) + _5612 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _6070 + 62 len 2]:
                                    s = s + 1
                                    t = t
                                    continue 
                                s = s + 1
                                t = t + 1
                                continue 
                        else:
                            mem[0] = sha3(arg1, 6) + 7
                            mem[_6070 + 32] = uint16(stor6[arg1][7].field_0)
                            if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_6070]
                                    require s < mem[_5612 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _5612 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _6070 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[_6070 + 64] = uint16(stor6[arg1][7].field_16)
                                s = _6070 + 64
                                t = 2
                                while _6070 + (32 * stor6[arg1].field_1792) > s:
                                    mem[0] = arg1
                                    mem[32] = 6
                                    mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                    s = s + 32
                                    t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                    continue 
                                _6592 = mem[_6070]
                                s = 0
                                t = 0
                                while s < _6592:
                                    require s < mem[_6070]
                                    require s < mem[_5612 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    _6592 = mem[_6070]
                                    if mem[(32 * s) + _5612 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _6070 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                        if uint8(t):
                            require uint8(t - 1) < mem[_4781]
                            mem[(32 * uint8(t - 1)) + _4781 + 32] = uint16(mem[(32 * uint8(t - 1)) + _4781 + 32] + 1)
                        mem[0] = arg1
                        mem[32] = 6
                        idx = idx + 1
                        continue 
                    mem[0] = arg1
                    mem[32] = 6
                    _5455 = mem[_4781]
                    stor6[arg1].field_2048 = mem[_4781]
                    mem[0] = sha3(arg1, 6) + 8
                    if not _5455:
                        idx = 0
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6163 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_6163]);
                    else:
                        s = 0
                        idx = _4781 + 32
                        while _4781 + (32 * _5455) + 32 > idx:
                            stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                            idx = idx + 32
                            continue 
                        idx = floor32(_5455) >> 4
                        s = sha3(sha3(arg1, 6) + 8)
                        while idx:
                            stor[s] = !(65535 * 256^idx) and stor[s]
                            idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                            s = (idx + 3 / 32) + s
                            continue 
                        idx = (floor32(_5455) >> 4) + Mask(254, 1, None + -(floor32(_5455) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_5455) >> 4) + 3) >> 1
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6664 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_6664]);
        else:
            mem[ceil32(return_data.size) + 256 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
            idx = 0
            while idx < sub_075dc415:
                mem[mem[64] + 32] = sha3(block.difficulty, block.timestamp, ext_call.return_data[0])
                mem[mem[64] + 64] = idx
                _1048 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if maxRange <= 0:
                    revert with 0, 'SafeMath: modulo by zero'
                require maxRange
                require idx < mem[ceil32(return_data.size) + 224]
                mem[(32 * idx) + ceil32(return_data.size) + 256] = uint16(sha3(mem[_1048 + 32 len mem[_1048]]) % maxRange)
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
                staticcall stor3.getTotalSupply() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2024 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2028 = mem[_2024]
                mem[0] = arg1
                mem[32] = 6
                stor6[arg1].field_2560 = _2028
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2061 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                idx = 1
                s = mem[_2061]
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
                        if 0 > s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor6[idx].field_2816 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = stor6[idx].field_2816 + s
                        continue 
                    if u * stor6[idx].field_512 / stor6[idx].field_512 != u:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[0] = idx
                    mem[32] = 6
                    if u * stor6[idx].field_512 / 100 > s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor6[idx].field_2816 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = stor6[idx].field_2816 + s - (u * stor6[idx].field_512 / 100)
                    continue 
                stor6[arg1].field_512 = s
                require sub_075dc415 <= test266151307()
                _2965 = mem[64]
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
                        staticcall stor3.getTicketNumbers(uint256 rg1) with:
                                gas gas_remaining wei
                               args idx
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3934 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3959 = mem[_3934]
                        require mem[_3934] <= test266151307()
                        require _3934 + return_data.size > _3934 + mem[_3934] + 31
                        _3999 = mem[_3934 + mem[_3934]]
                        require mem[_3934 + mem[_3934]] <= test266151307()
                        require (32 * mem[_3934 + mem[_3934]]) + 32 >= 0 and _3934 + ceil32(return_data.size) + (32 * mem[_3934 + mem[_3934]]) + 32 <= test266151307()
                        mem[64] = _3934 + ceil32(return_data.size) + (32 * mem[_3934 + mem[_3934]]) + 32
                        mem[_3934 + ceil32(return_data.size)] = _3999
                        require return_data.size >= _3959 + (32 * _3999) + 32
                        t = _3934 + _3959 + 32
                        u = _3934 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _3999:
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
                        _4758 = mem[64]
                        mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                        mem[_4758] = stor6[arg1].field_1792
                        if not stor6[arg1].field_1792:
                            s = 0
                            t = 0
                            while s < stor6[arg1].field_1792:
                                require s < mem[_4758]
                                require s < mem[_3934 + ceil32(return_data.size)]
                                mem[0] = arg1
                                mem[32] = 6
                                if mem[(32 * s) + _3934 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _4758 + 62 len 2]:
                                    s = s + 1
                                    t = t
                                    continue 
                                s = s + 1
                                t = t + 1
                                continue 
                        else:
                            mem[0] = sha3(arg1, 6) + 7
                            mem[_4758 + 32] = uint16(stor6[arg1][7].field_0)
                            if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_4758]
                                    require s < mem[_3934 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _3934 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _4758 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[_4758 + 64] = uint16(stor6[arg1][7].field_16)
                                s = _4758 + 64
                                t = 2
                                while _4758 + (32 * stor6[arg1].field_1792) > s:
                                    mem[0] = arg1
                                    mem[32] = 6
                                    mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                    s = s + 32
                                    t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                    continue 
                                _6033 = mem[_4758]
                                s = 0
                                t = 0
                                while s < _6033:
                                    require s < mem[_4758]
                                    require s < mem[_3934 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    _6033 = mem[_4758]
                                    if mem[(32 * s) + _3934 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _4758 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                        if uint8(t):
                            require uint8(t - 1) < mem[_2965]
                            mem[(32 * uint8(t - 1)) + _2965 + 32] = uint16(mem[(32 * uint8(t - 1)) + _2965 + 32] + 1)
                        mem[0] = arg1
                        mem[32] = 6
                        idx = idx + 1
                        continue 
                    mem[0] = arg1
                    mem[32] = 6
                    _3871 = mem[_2965]
                    stor6[arg1].field_2048 = mem[_2965]
                    mem[0] = sha3(arg1, 6) + 8
                    if not _3871:
                        idx = 0
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4822 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_4822]);
                    else:
                        s = 0
                        idx = _2965 + 32
                        while _2965 + (32 * _3871) + 32 > idx:
                            stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                            idx = idx + 32
                            continue 
                        idx = floor32(_3871) >> 4
                        s = sha3(sha3(arg1, 6) + 8)
                        while idx:
                            stor[s] = !(65535 * 256^idx) and stor[s]
                            idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                            s = (idx + 3 / 32) + s
                            continue 
                        idx = (floor32(_3871) >> 4) + Mask(254, 1, None + -(floor32(_3871) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_3871) >> 4) + 3) >> 1
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6165 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_6165]);
                else:
                    mem[_2965 + 32 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
                    mem[0] = arg1
                    mem[32] = 6
                    idx = stor6[arg1].field_2304
                    while idx <= stor6[arg1].field_2560:
                        mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = idx
                        require ext_code.size(stor3)
                        staticcall stor3.getTicketNumbers(uint256 rg1) with:
                                gas gas_remaining wei
                               args idx
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3936 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3960 = mem[_3936]
                        require mem[_3936] <= test266151307()
                        require _3936 + return_data.size > _3936 + mem[_3936] + 31
                        _4000 = mem[_3936 + mem[_3936]]
                        require mem[_3936 + mem[_3936]] <= test266151307()
                        require (32 * mem[_3936 + mem[_3936]]) + 32 >= 0 and _3936 + ceil32(return_data.size) + (32 * mem[_3936 + mem[_3936]]) + 32 <= test266151307()
                        mem[64] = _3936 + ceil32(return_data.size) + (32 * mem[_3936 + mem[_3936]]) + 32
                        mem[_3936 + ceil32(return_data.size)] = _4000
                        require return_data.size >= _3960 + (32 * _4000) + 32
                        t = _3936 + _3960 + 32
                        u = _3936 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _4000:
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
                        _4760 = mem[64]
                        mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                        mem[_4760] = stor6[arg1].field_1792
                        if not stor6[arg1].field_1792:
                            s = 0
                            t = 0
                            while s < stor6[arg1].field_1792:
                                require s < mem[_4760]
                                require s < mem[_3936 + ceil32(return_data.size)]
                                mem[0] = arg1
                                mem[32] = 6
                                if mem[(32 * s) + _3936 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _4760 + 62 len 2]:
                                    s = s + 1
                                    t = t
                                    continue 
                                s = s + 1
                                t = t + 1
                                continue 
                        else:
                            mem[0] = sha3(arg1, 6) + 7
                            mem[_4760 + 32] = uint16(stor6[arg1][7].field_0)
                            if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_4760]
                                    require s < mem[_3936 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _3936 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _4760 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[_4760 + 64] = uint16(stor6[arg1][7].field_16)
                                s = _4760 + 64
                                t = 2
                                while _4760 + (32 * stor6[arg1].field_1792) > s:
                                    mem[0] = arg1
                                    mem[32] = 6
                                    mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                    s = s + 32
                                    t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                    continue 
                                _6034 = mem[_4760]
                                s = 0
                                t = 0
                                while s < _6034:
                                    require s < mem[_4760]
                                    require s < mem[_3936 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    _6034 = mem[_4760]
                                    if mem[(32 * s) + _3936 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _4760 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                        if uint8(t):
                            require uint8(t - 1) < mem[_2965]
                            mem[(32 * uint8(t - 1)) + _2965 + 32] = uint16(mem[(32 * uint8(t - 1)) + _2965 + 32] + 1)
                        mem[0] = arg1
                        mem[32] = 6
                        idx = idx + 1
                        continue 
                    mem[0] = arg1
                    mem[32] = 6
                    _3874 = mem[_2965]
                    stor6[arg1].field_2048 = mem[_2965]
                    mem[0] = sha3(arg1, 6) + 8
                    if not _3874:
                        idx = 0
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4824 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_4824]);
                    else:
                        s = 0
                        idx = _2965 + 32
                        while _2965 + (32 * _3874) + 32 > idx:
                            stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                            idx = idx + 32
                            continue 
                        idx = floor32(_3874) >> 4
                        s = sha3(sha3(arg1, 6) + 8)
                        while idx:
                            stor[s] = !(65535 * 256^idx) and stor[s]
                            idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                            s = (idx + 3 / 32) + s
                            continue 
                        idx = (floor32(_3874) >> 4) + Mask(254, 1, None + -(floor32(_3874) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_3874) >> 4) + 3) >> 1
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6166 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_6166]);
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
                staticcall stor3.getTotalSupply() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3938 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3962 = mem[_3938]
                mem[0] = arg1
                mem[32] = 6
                stor6[arg1].field_2560 = _3962
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4070 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                idx = 1
                s = mem[_4070]
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
                        if 0 > s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor6[idx].field_2816 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = stor6[idx].field_2816 + s
                        continue 
                    if u * stor6[idx].field_512 / stor6[idx].field_512 != u:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[0] = idx
                    mem[32] = 6
                    if u * stor6[idx].field_512 / 100 > s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor6[idx].field_2816 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = stor6[idx].field_2816 + s - (u * stor6[idx].field_512 / 100)
                    continue 
                stor6[arg1].field_512 = s
                require sub_075dc415 <= test266151307()
                _4789 = mem[64]
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
                        staticcall stor3.getTicketNumbers(uint256 rg1) with:
                                gas gas_remaining wei
                               args idx
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5617 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5670 = mem[_5617]
                        require mem[_5617] <= test266151307()
                        require _5617 + return_data.size > _5617 + mem[_5617] + 31
                        _5718 = mem[_5617 + mem[_5617]]
                        require mem[_5617 + mem[_5617]] <= test266151307()
                        require (32 * mem[_5617 + mem[_5617]]) + 32 >= 0 and _5617 + ceil32(return_data.size) + (32 * mem[_5617 + mem[_5617]]) + 32 <= test266151307()
                        mem[64] = _5617 + ceil32(return_data.size) + (32 * mem[_5617 + mem[_5617]]) + 32
                        mem[_5617 + ceil32(return_data.size)] = _5718
                        require return_data.size >= _5670 + (32 * _5718) + 32
                        t = _5617 + _5670 + 32
                        u = _5617 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _5718:
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
                        _6076 = mem[64]
                        mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                        mem[_6076] = stor6[arg1].field_1792
                        if not stor6[arg1].field_1792:
                            s = 0
                            t = 0
                            while s < stor6[arg1].field_1792:
                                require s < mem[_6076]
                                require s < mem[_5617 + ceil32(return_data.size)]
                                mem[0] = arg1
                                mem[32] = 6
                                if mem[(32 * s) + _5617 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _6076 + 62 len 2]:
                                    s = s + 1
                                    t = t
                                    continue 
                                s = s + 1
                                t = t + 1
                                continue 
                        else:
                            mem[0] = sha3(arg1, 6) + 7
                            mem[_6076 + 32] = uint16(stor6[arg1][7].field_0)
                            if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_6076]
                                    require s < mem[_5617 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _5617 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _6076 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[_6076 + 64] = uint16(stor6[arg1][7].field_16)
                                s = _6076 + 64
                                t = 2
                                while _6076 + (32 * stor6[arg1].field_1792) > s:
                                    mem[0] = arg1
                                    mem[32] = 6
                                    mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                    s = s + 32
                                    t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                    continue 
                                _6593 = mem[_6076]
                                s = 0
                                t = 0
                                while s < _6593:
                                    require s < mem[_6076]
                                    require s < mem[_5617 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    _6593 = mem[_6076]
                                    if mem[(32 * s) + _5617 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _6076 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                        if uint8(t):
                            require uint8(t - 1) < mem[_4789]
                            mem[(32 * uint8(t - 1)) + _4789 + 32] = uint16(mem[(32 * uint8(t - 1)) + _4789 + 32] + 1)
                        mem[0] = arg1
                        mem[32] = 6
                        idx = idx + 1
                        continue 
                    mem[0] = arg1
                    mem[32] = 6
                    _5463 = mem[_4789]
                    stor6[arg1].field_2048 = mem[_4789]
                    mem[0] = sha3(arg1, 6) + 8
                    if not _5463:
                        idx = 0
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6167 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_6167]);
                    else:
                        s = 0
                        idx = _4789 + 32
                        while _4789 + (32 * _5463) + 32 > idx:
                            stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                            idx = idx + 32
                            continue 
                        idx = floor32(_5463) >> 4
                        s = sha3(sha3(arg1, 6) + 8)
                        while idx:
                            stor[s] = !(65535 * 256^idx) and stor[s]
                            idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                            s = (idx + 3 / 32) + s
                            continue 
                        idx = (floor32(_5463) >> 4) + Mask(254, 1, None + -(floor32(_5463) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_5463) >> 4) + 3) >> 1
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6665 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_6665]);
                else:
                    mem[_4789 + 32 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
                    mem[0] = arg1
                    mem[32] = 6
                    idx = stor6[arg1].field_2304
                    while idx <= stor6[arg1].field_2560:
                        mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = idx
                        require ext_code.size(stor3)
                        staticcall stor3.getTicketNumbers(uint256 rg1) with:
                                gas gas_remaining wei
                               args idx
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5619 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5671 = mem[_5619]
                        require mem[_5619] <= test266151307()
                        require _5619 + return_data.size > _5619 + mem[_5619] + 31
                        _5719 = mem[_5619 + mem[_5619]]
                        require mem[_5619 + mem[_5619]] <= test266151307()
                        require (32 * mem[_5619 + mem[_5619]]) + 32 >= 0 and _5619 + ceil32(return_data.size) + (32 * mem[_5619 + mem[_5619]]) + 32 <= test266151307()
                        mem[64] = _5619 + ceil32(return_data.size) + (32 * mem[_5619 + mem[_5619]]) + 32
                        mem[_5619 + ceil32(return_data.size)] = _5719
                        require return_data.size >= _5671 + (32 * _5719) + 32
                        t = _5619 + _5671 + 32
                        u = _5619 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _5719:
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
                        _6078 = mem[64]
                        mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                        mem[_6078] = stor6[arg1].field_1792
                        if not stor6[arg1].field_1792:
                            s = 0
                            t = 0
                            while s < stor6[arg1].field_1792:
                                require s < mem[_6078]
                                require s < mem[_5619 + ceil32(return_data.size)]
                                mem[0] = arg1
                                mem[32] = 6
                                if mem[(32 * s) + _5619 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _6078 + 62 len 2]:
                                    s = s + 1
                                    t = t
                                    continue 
                                s = s + 1
                                t = t + 1
                                continue 
                        else:
                            mem[0] = sha3(arg1, 6) + 7
                            mem[_6078 + 32] = uint16(stor6[arg1][7].field_0)
                            if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_6078]
                                    require s < mem[_5619 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _5619 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _6078 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[_6078 + 64] = uint16(stor6[arg1][7].field_16)
                                s = _6078 + 64
                                t = 2
                                while _6078 + (32 * stor6[arg1].field_1792) > s:
                                    mem[0] = arg1
                                    mem[32] = 6
                                    mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                    s = s + 32
                                    t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                    continue 
                                _6594 = mem[_6078]
                                s = 0
                                t = 0
                                while s < _6594:
                                    require s < mem[_6078]
                                    require s < mem[_5619 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    _6594 = mem[_6078]
                                    if mem[(32 * s) + _5619 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _6078 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                        if uint8(t):
                            require uint8(t - 1) < mem[_4789]
                            mem[(32 * uint8(t - 1)) + _4789 + 32] = uint16(mem[(32 * uint8(t - 1)) + _4789 + 32] + 1)
                        mem[0] = arg1
                        mem[32] = 6
                        idx = idx + 1
                        continue 
                    mem[0] = arg1
                    mem[32] = 6
                    _5466 = mem[_4789]
                    stor6[arg1].field_2048 = mem[_4789]
                    mem[0] = sha3(arg1, 6) + 8
                    if not _5466:
                        idx = 0
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6169 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_6169]);
                    else:
                        s = 0
                        idx = _4789 + 32
                        while _4789 + (32 * _5466) + 32 > idx:
                            stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                            idx = idx + 32
                            continue 
                        idx = floor32(_5466) >> 4
                        s = sha3(sha3(arg1, 6) + 8)
                        while idx:
                            stor[s] = !(65535 * 256^idx) and stor[s]
                            idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                            s = (idx + 3 / 32) + s
                            continue 
                        idx = (floor32(_5466) >> 4) + Mask(254, 1, None + -(floor32(_5466) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_5466) >> 4) + 3) >> 1
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6666 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_6666]);
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
        if uint8(stor6[arg1].field_256) != 1:
            revert with 0, 'Lottery State incorrect for draw'
        uint8(stor6[arg1].field_256) = 2
        emit RequestNumbers(arg1);
        require ext_code.size(stor3)
        staticcall stor3.getTotalSupply() with:
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
                _1052 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if maxRange <= 0:
                    revert with 0, 'SafeMath: modulo by zero'
                require maxRange
                require idx < mem[(2 * ceil32(return_data.size)) + 224]
                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 256] = uint16(sha3(mem[_1052 + 32 len mem[_1052]]) % maxRange)
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
                staticcall stor3.getTotalSupply() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2025 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2029 = mem[_2025]
                mem[0] = arg1
                mem[32] = 6
                stor6[arg1].field_2560 = _2029
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2063 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                idx = 1
                s = mem[_2063]
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
                        if 0 > s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor6[idx].field_2816 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = stor6[idx].field_2816 + s
                        continue 
                    if u * stor6[idx].field_512 / stor6[idx].field_512 != u:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[0] = idx
                    mem[32] = 6
                    if u * stor6[idx].field_512 / 100 > s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor6[idx].field_2816 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = stor6[idx].field_2816 + s - (u * stor6[idx].field_512 / 100)
                    continue 
                stor6[arg1].field_512 = s
                require sub_075dc415 <= test266151307()
                _2967 = mem[64]
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
                        staticcall stor3.getTicketNumbers(uint256 rg1) with:
                                gas gas_remaining wei
                               args idx
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3940 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3963 = mem[_3940]
                        require mem[_3940] <= test266151307()
                        require _3940 + return_data.size > _3940 + mem[_3940] + 31
                        _4003 = mem[_3940 + mem[_3940]]
                        require mem[_3940 + mem[_3940]] <= test266151307()
                        require (32 * mem[_3940 + mem[_3940]]) + 32 >= 0 and _3940 + ceil32(return_data.size) + (32 * mem[_3940 + mem[_3940]]) + 32 <= test266151307()
                        mem[64] = _3940 + ceil32(return_data.size) + (32 * mem[_3940 + mem[_3940]]) + 32
                        mem[_3940 + ceil32(return_data.size)] = _4003
                        require return_data.size >= _3963 + (32 * _4003) + 32
                        t = _3940 + _3963 + 32
                        u = _3940 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _4003:
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
                        _4764 = mem[64]
                        mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                        mem[_4764] = stor6[arg1].field_1792
                        if not stor6[arg1].field_1792:
                            s = 0
                            t = 0
                            while s < stor6[arg1].field_1792:
                                require s < mem[_4764]
                                require s < mem[_3940 + ceil32(return_data.size)]
                                mem[0] = arg1
                                mem[32] = 6
                                if mem[(32 * s) + _3940 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _4764 + 62 len 2]:
                                    s = s + 1
                                    t = t
                                    continue 
                                s = s + 1
                                t = t + 1
                                continue 
                        else:
                            mem[0] = sha3(arg1, 6) + 7
                            mem[_4764 + 32] = uint16(stor6[arg1][7].field_0)
                            if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_4764]
                                    require s < mem[_3940 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _3940 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _4764 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[_4764 + 64] = uint16(stor6[arg1][7].field_16)
                                s = _4764 + 64
                                t = 2
                                while _4764 + (32 * stor6[arg1].field_1792) > s:
                                    mem[0] = arg1
                                    mem[32] = 6
                                    mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                    s = s + 32
                                    t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                    continue 
                                _6035 = mem[_4764]
                                s = 0
                                t = 0
                                while s < _6035:
                                    require s < mem[_4764]
                                    require s < mem[_3940 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    _6035 = mem[_4764]
                                    if mem[(32 * s) + _3940 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _4764 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                        if uint8(t):
                            require uint8(t - 1) < mem[_2967]
                            mem[(32 * uint8(t - 1)) + _2967 + 32] = uint16(mem[(32 * uint8(t - 1)) + _2967 + 32] + 1)
                        mem[0] = arg1
                        mem[32] = 6
                        idx = idx + 1
                        continue 
                    mem[0] = arg1
                    mem[32] = 6
                    _3878 = mem[_2967]
                    stor6[arg1].field_2048 = mem[_2967]
                    mem[0] = sha3(arg1, 6) + 8
                    if not _3878:
                        idx = 0
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4829 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_4829]);
                    else:
                        s = 0
                        idx = _2967 + 32
                        while _2967 + (32 * _3878) + 32 > idx:
                            stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                            idx = idx + 32
                            continue 
                        idx = floor32(_3878) >> 4
                        s = sha3(sha3(arg1, 6) + 8)
                        while idx:
                            stor[s] = !(65535 * 256^idx) and stor[s]
                            idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                            s = (idx + 3 / 32) + s
                            continue 
                        idx = (floor32(_3878) >> 4) + Mask(254, 1, None + -(floor32(_3878) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_3878) >> 4) + 3) >> 1
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6171 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_6171]);
                else:
                    mem[_2967 + 32 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
                    mem[0] = arg1
                    mem[32] = 6
                    idx = stor6[arg1].field_2304
                    while idx <= stor6[arg1].field_2560:
                        mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = idx
                        require ext_code.size(stor3)
                        staticcall stor3.getTicketNumbers(uint256 rg1) with:
                                gas gas_remaining wei
                               args idx
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3942 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3964 = mem[_3942]
                        require mem[_3942] <= test266151307()
                        require _3942 + return_data.size > _3942 + mem[_3942] + 31
                        _4004 = mem[_3942 + mem[_3942]]
                        require mem[_3942 + mem[_3942]] <= test266151307()
                        require (32 * mem[_3942 + mem[_3942]]) + 32 >= 0 and _3942 + ceil32(return_data.size) + (32 * mem[_3942 + mem[_3942]]) + 32 <= test266151307()
                        mem[64] = _3942 + ceil32(return_data.size) + (32 * mem[_3942 + mem[_3942]]) + 32
                        mem[_3942 + ceil32(return_data.size)] = _4004
                        require return_data.size >= _3964 + (32 * _4004) + 32
                        t = _3942 + _3964 + 32
                        u = _3942 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _4004:
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
                        _4766 = mem[64]
                        mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                        mem[_4766] = stor6[arg1].field_1792
                        if not stor6[arg1].field_1792:
                            s = 0
                            t = 0
                            while s < stor6[arg1].field_1792:
                                require s < mem[_4766]
                                require s < mem[_3942 + ceil32(return_data.size)]
                                mem[0] = arg1
                                mem[32] = 6
                                if mem[(32 * s) + _3942 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _4766 + 62 len 2]:
                                    s = s + 1
                                    t = t
                                    continue 
                                s = s + 1
                                t = t + 1
                                continue 
                        else:
                            mem[0] = sha3(arg1, 6) + 7
                            mem[_4766 + 32] = uint16(stor6[arg1][7].field_0)
                            if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_4766]
                                    require s < mem[_3942 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _3942 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _4766 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[_4766 + 64] = uint16(stor6[arg1][7].field_16)
                                s = _4766 + 64
                                t = 2
                                while _4766 + (32 * stor6[arg1].field_1792) > s:
                                    mem[0] = arg1
                                    mem[32] = 6
                                    mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                    s = s + 32
                                    t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                    continue 
                                _6036 = mem[_4766]
                                s = 0
                                t = 0
                                while s < _6036:
                                    require s < mem[_4766]
                                    require s < mem[_3942 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    _6036 = mem[_4766]
                                    if mem[(32 * s) + _3942 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _4766 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                        if uint8(t):
                            require uint8(t - 1) < mem[_2967]
                            mem[(32 * uint8(t - 1)) + _2967 + 32] = uint16(mem[(32 * uint8(t - 1)) + _2967 + 32] + 1)
                        mem[0] = arg1
                        mem[32] = 6
                        idx = idx + 1
                        continue 
                    mem[0] = arg1
                    mem[32] = 6
                    _3881 = mem[_2967]
                    stor6[arg1].field_2048 = mem[_2967]
                    mem[0] = sha3(arg1, 6) + 8
                    if not _3881:
                        idx = 0
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4831 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_4831]);
                    else:
                        s = 0
                        idx = _2967 + 32
                        while _2967 + (32 * _3881) + 32 > idx:
                            stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                            idx = idx + 32
                            continue 
                        idx = floor32(_3881) >> 4
                        s = sha3(sha3(arg1, 6) + 8)
                        while idx:
                            stor[s] = !(65535 * 256^idx) and stor[s]
                            idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                            s = (idx + 3 / 32) + s
                            continue 
                        idx = (floor32(_3881) >> 4) + Mask(254, 1, None + -(floor32(_3881) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_3881) >> 4) + 3) >> 1
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6172 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_6172]);
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
                staticcall stor3.getTotalSupply() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3944 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3966 = mem[_3944]
                mem[0] = arg1
                mem[32] = 6
                stor6[arg1].field_2560 = _3966
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4076 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                idx = 1
                s = mem[_4076]
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
                        if 0 > s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor6[idx].field_2816 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = stor6[idx].field_2816 + s
                        continue 
                    if u * stor6[idx].field_512 / stor6[idx].field_512 != u:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[0] = idx
                    mem[32] = 6
                    if u * stor6[idx].field_512 / 100 > s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor6[idx].field_2816 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = stor6[idx].field_2816 + s - (u * stor6[idx].field_512 / 100)
                    continue 
                stor6[arg1].field_512 = s
                require sub_075dc415 <= test266151307()
                _4797 = mem[64]
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
                        staticcall stor3.getTicketNumbers(uint256 rg1) with:
                                gas gas_remaining wei
                               args idx
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5624 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5679 = mem[_5624]
                        require mem[_5624] <= test266151307()
                        require _5624 + return_data.size > _5624 + mem[_5624] + 31
                        _5723 = mem[_5624 + mem[_5624]]
                        require mem[_5624 + mem[_5624]] <= test266151307()
                        require (32 * mem[_5624 + mem[_5624]]) + 32 >= 0 and _5624 + ceil32(return_data.size) + (32 * mem[_5624 + mem[_5624]]) + 32 <= test266151307()
                        mem[64] = _5624 + ceil32(return_data.size) + (32 * mem[_5624 + mem[_5624]]) + 32
                        mem[_5624 + ceil32(return_data.size)] = _5723
                        require return_data.size >= _5679 + (32 * _5723) + 32
                        t = _5624 + _5679 + 32
                        u = _5624 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _5723:
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
                        _6084 = mem[64]
                        mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                        mem[_6084] = stor6[arg1].field_1792
                        if not stor6[arg1].field_1792:
                            s = 0
                            t = 0
                            while s < stor6[arg1].field_1792:
                                require s < mem[_6084]
                                require s < mem[_5624 + ceil32(return_data.size)]
                                mem[0] = arg1
                                mem[32] = 6
                                if mem[(32 * s) + _5624 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _6084 + 62 len 2]:
                                    s = s + 1
                                    t = t
                                    continue 
                                s = s + 1
                                t = t + 1
                                continue 
                        else:
                            mem[0] = sha3(arg1, 6) + 7
                            mem[_6084 + 32] = uint16(stor6[arg1][7].field_0)
                            if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_6084]
                                    require s < mem[_5624 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _5624 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _6084 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[_6084 + 64] = uint16(stor6[arg1][7].field_16)
                                s = _6084 + 64
                                t = 2
                                while _6084 + (32 * stor6[arg1].field_1792) > s:
                                    mem[0] = arg1
                                    mem[32] = 6
                                    mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                    s = s + 32
                                    t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                    continue 
                                _6595 = mem[_6084]
                                s = 0
                                t = 0
                                while s < _6595:
                                    require s < mem[_6084]
                                    require s < mem[_5624 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    _6595 = mem[_6084]
                                    if mem[(32 * s) + _5624 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _6084 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                        if uint8(t):
                            require uint8(t - 1) < mem[_4797]
                            mem[(32 * uint8(t - 1)) + _4797 + 32] = uint16(mem[(32 * uint8(t - 1)) + _4797 + 32] + 1)
                        mem[0] = arg1
                        mem[32] = 6
                        idx = idx + 1
                        continue 
                    mem[0] = arg1
                    mem[32] = 6
                    _5474 = mem[_4797]
                    stor6[arg1].field_2048 = mem[_4797]
                    mem[0] = sha3(arg1, 6) + 8
                    if not _5474:
                        idx = 0
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6173 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_6173]);
                    else:
                        s = 0
                        idx = _4797 + 32
                        while _4797 + (32 * _5474) + 32 > idx:
                            stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                            idx = idx + 32
                            continue 
                        idx = floor32(_5474) >> 4
                        s = sha3(sha3(arg1, 6) + 8)
                        while idx:
                            stor[s] = !(65535 * 256^idx) and stor[s]
                            idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                            s = (idx + 3 / 32) + s
                            continue 
                        idx = (floor32(_5474) >> 4) + Mask(254, 1, None + -(floor32(_5474) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_5474) >> 4) + 3) >> 1
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6667 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_6667]);
                else:
                    mem[_4797 + 32 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
                    mem[0] = arg1
                    mem[32] = 6
                    idx = stor6[arg1].field_2304
                    while idx <= stor6[arg1].field_2560:
                        mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = idx
                        require ext_code.size(stor3)
                        staticcall stor3.getTicketNumbers(uint256 rg1) with:
                                gas gas_remaining wei
                               args idx
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5626 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5680 = mem[_5626]
                        require mem[_5626] <= test266151307()
                        require _5626 + return_data.size > _5626 + mem[_5626] + 31
                        _5724 = mem[_5626 + mem[_5626]]
                        require mem[_5626 + mem[_5626]] <= test266151307()
                        require (32 * mem[_5626 + mem[_5626]]) + 32 >= 0 and _5626 + ceil32(return_data.size) + (32 * mem[_5626 + mem[_5626]]) + 32 <= test266151307()
                        mem[64] = _5626 + ceil32(return_data.size) + (32 * mem[_5626 + mem[_5626]]) + 32
                        mem[_5626 + ceil32(return_data.size)] = _5724
                        require return_data.size >= _5680 + (32 * _5724) + 32
                        t = _5626 + _5680 + 32
                        u = _5626 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _5724:
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
                        _6086 = mem[64]
                        mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                        mem[_6086] = stor6[arg1].field_1792
                        if not stor6[arg1].field_1792:
                            s = 0
                            t = 0
                            while s < stor6[arg1].field_1792:
                                require s < mem[_6086]
                                require s < mem[_5626 + ceil32(return_data.size)]
                                mem[0] = arg1
                                mem[32] = 6
                                if mem[(32 * s) + _5626 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _6086 + 62 len 2]:
                                    s = s + 1
                                    t = t
                                    continue 
                                s = s + 1
                                t = t + 1
                                continue 
                        else:
                            mem[0] = sha3(arg1, 6) + 7
                            mem[_6086 + 32] = uint16(stor6[arg1][7].field_0)
                            if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_6086]
                                    require s < mem[_5626 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _5626 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _6086 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[_6086 + 64] = uint16(stor6[arg1][7].field_16)
                                s = _6086 + 64
                                t = 2
                                while _6086 + (32 * stor6[arg1].field_1792) > s:
                                    mem[0] = arg1
                                    mem[32] = 6
                                    mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                    s = s + 32
                                    t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                    continue 
                                _6596 = mem[_6086]
                                s = 0
                                t = 0
                                while s < _6596:
                                    require s < mem[_6086]
                                    require s < mem[_5626 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    _6596 = mem[_6086]
                                    if mem[(32 * s) + _5626 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _6086 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                        if uint8(t):
                            require uint8(t - 1) < mem[_4797]
                            mem[(32 * uint8(t - 1)) + _4797 + 32] = uint16(mem[(32 * uint8(t - 1)) + _4797 + 32] + 1)
                        mem[0] = arg1
                        mem[32] = 6
                        idx = idx + 1
                        continue 
                    mem[0] = arg1
                    mem[32] = 6
                    _5477 = mem[_4797]
                    stor6[arg1].field_2048 = mem[_4797]
                    mem[0] = sha3(arg1, 6) + 8
                    if not _5477:
                        idx = 0
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6175 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_6175]);
                    else:
                        s = 0
                        idx = _4797 + 32
                        while _4797 + (32 * _5477) + 32 > idx:
                            stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                            idx = idx + 32
                            continue 
                        idx = floor32(_5477) >> 4
                        s = sha3(sha3(arg1, 6) + 8)
                        while idx:
                            stor[s] = !(65535 * 256^idx) and stor[s]
                            idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                            s = (idx + 3 / 32) + s
                            continue 
                        idx = (floor32(_5477) >> 4) + Mask(254, 1, None + -(floor32(_5477) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_5477) >> 4) + 3) >> 1
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6668 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_6668]);
        else:
            mem[(2 * ceil32(return_data.size)) + 256 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
            idx = 0
            while idx < sub_075dc415:
                mem[mem[64] + 32] = sha3(block.difficulty, block.timestamp, ext_call.return_data[0])
                mem[mem[64] + 64] = idx
                _1056 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if maxRange <= 0:
                    revert with 0, 'SafeMath: modulo by zero'
                require maxRange
                require idx < mem[(2 * ceil32(return_data.size)) + 224]
                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 256] = uint16(sha3(mem[_1056 + 32 len mem[_1056]]) % maxRange)
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
                staticcall stor3.getTotalSupply() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2026 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2030 = mem[_2026]
                mem[0] = arg1
                mem[32] = 6
                stor6[arg1].field_2560 = _2030
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2065 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                idx = 1
                s = mem[_2065]
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
                        if 0 > s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor6[idx].field_2816 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = stor6[idx].field_2816 + s
                        continue 
                    if u * stor6[idx].field_512 / stor6[idx].field_512 != u:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[0] = idx
                    mem[32] = 6
                    if u * stor6[idx].field_512 / 100 > s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor6[idx].field_2816 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = stor6[idx].field_2816 + s - (u * stor6[idx].field_512 / 100)
                    continue 
                stor6[arg1].field_512 = s
                require sub_075dc415 <= test266151307()
                _2969 = mem[64]
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
                        staticcall stor3.getTicketNumbers(uint256 rg1) with:
                                gas gas_remaining wei
                               args idx
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3946 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3967 = mem[_3946]
                        require mem[_3946] <= test266151307()
                        require _3946 + return_data.size > _3946 + mem[_3946] + 31
                        _4007 = mem[_3946 + mem[_3946]]
                        require mem[_3946 + mem[_3946]] <= test266151307()
                        require (32 * mem[_3946 + mem[_3946]]) + 32 >= 0 and _3946 + ceil32(return_data.size) + (32 * mem[_3946 + mem[_3946]]) + 32 <= test266151307()
                        mem[64] = _3946 + ceil32(return_data.size) + (32 * mem[_3946 + mem[_3946]]) + 32
                        mem[_3946 + ceil32(return_data.size)] = _4007
                        require return_data.size >= _3967 + (32 * _4007) + 32
                        t = _3946 + _3967 + 32
                        u = _3946 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _4007:
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
                        _4770 = mem[64]
                        mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                        mem[_4770] = stor6[arg1].field_1792
                        if not stor6[arg1].field_1792:
                            s = 0
                            t = 0
                            while s < stor6[arg1].field_1792:
                                require s < mem[_4770]
                                require s < mem[_3946 + ceil32(return_data.size)]
                                mem[0] = arg1
                                mem[32] = 6
                                if mem[(32 * s) + _3946 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _4770 + 62 len 2]:
                                    s = s + 1
                                    t = t
                                    continue 
                                s = s + 1
                                t = t + 1
                                continue 
                        else:
                            mem[0] = sha3(arg1, 6) + 7
                            mem[_4770 + 32] = uint16(stor6[arg1][7].field_0)
                            if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_4770]
                                    require s < mem[_3946 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _3946 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _4770 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[_4770 + 64] = uint16(stor6[arg1][7].field_16)
                                s = _4770 + 64
                                t = 2
                                while _4770 + (32 * stor6[arg1].field_1792) > s:
                                    mem[0] = arg1
                                    mem[32] = 6
                                    mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                    s = s + 32
                                    t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                    continue 
                                _6037 = mem[_4770]
                                s = 0
                                t = 0
                                while s < _6037:
                                    require s < mem[_4770]
                                    require s < mem[_3946 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    _6037 = mem[_4770]
                                    if mem[(32 * s) + _3946 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _4770 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                        if uint8(t):
                            require uint8(t - 1) < mem[_2969]
                            mem[(32 * uint8(t - 1)) + _2969 + 32] = uint16(mem[(32 * uint8(t - 1)) + _2969 + 32] + 1)
                        mem[0] = arg1
                        mem[32] = 6
                        idx = idx + 1
                        continue 
                    mem[0] = arg1
                    mem[32] = 6
                    _3885 = mem[_2969]
                    stor6[arg1].field_2048 = mem[_2969]
                    mem[0] = sha3(arg1, 6) + 8
                    if not _3885:
                        idx = 0
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4836 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_4836]);
                    else:
                        s = 0
                        idx = _2969 + 32
                        while _2969 + (32 * _3885) + 32 > idx:
                            stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                            idx = idx + 32
                            continue 
                        idx = floor32(_3885) >> 4
                        s = sha3(sha3(arg1, 6) + 8)
                        while idx:
                            stor[s] = !(65535 * 256^idx) and stor[s]
                            idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                            s = (idx + 3 / 32) + s
                            continue 
                        idx = (floor32(_3885) >> 4) + Mask(254, 1, None + -(floor32(_3885) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_3885) >> 4) + 3) >> 1
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6177 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_6177]);
                else:
                    mem[_2969 + 32 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
                    mem[0] = arg1
                    mem[32] = 6
                    idx = stor6[arg1].field_2304
                    while idx <= stor6[arg1].field_2560:
                        mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = idx
                        require ext_code.size(stor3)
                        staticcall stor3.getTicketNumbers(uint256 rg1) with:
                                gas gas_remaining wei
                               args idx
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3948 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3968 = mem[_3948]
                        require mem[_3948] <= test266151307()
                        require _3948 + return_data.size > _3948 + mem[_3948] + 31
                        _4008 = mem[_3948 + mem[_3948]]
                        require mem[_3948 + mem[_3948]] <= test266151307()
                        require (32 * mem[_3948 + mem[_3948]]) + 32 >= 0 and _3948 + ceil32(return_data.size) + (32 * mem[_3948 + mem[_3948]]) + 32 <= test266151307()
                        mem[64] = _3948 + ceil32(return_data.size) + (32 * mem[_3948 + mem[_3948]]) + 32
                        mem[_3948 + ceil32(return_data.size)] = _4008
                        require return_data.size >= _3968 + (32 * _4008) + 32
                        t = _3948 + _3968 + 32
                        u = _3948 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _4008:
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
                        _4772 = mem[64]
                        mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                        mem[_4772] = stor6[arg1].field_1792
                        if not stor6[arg1].field_1792:
                            s = 0
                            t = 0
                            while s < stor6[arg1].field_1792:
                                require s < mem[_4772]
                                require s < mem[_3948 + ceil32(return_data.size)]
                                mem[0] = arg1
                                mem[32] = 6
                                if mem[(32 * s) + _3948 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _4772 + 62 len 2]:
                                    s = s + 1
                                    t = t
                                    continue 
                                s = s + 1
                                t = t + 1
                                continue 
                        else:
                            mem[0] = sha3(arg1, 6) + 7
                            mem[_4772 + 32] = uint16(stor6[arg1][7].field_0)
                            if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_4772]
                                    require s < mem[_3948 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _3948 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _4772 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[_4772 + 64] = uint16(stor6[arg1][7].field_16)
                                s = _4772 + 64
                                t = 2
                                while _4772 + (32 * stor6[arg1].field_1792) > s:
                                    mem[0] = arg1
                                    mem[32] = 6
                                    mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                    s = s + 32
                                    t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                    continue 
                                _6038 = mem[_4772]
                                s = 0
                                t = 0
                                while s < _6038:
                                    require s < mem[_4772]
                                    require s < mem[_3948 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    _6038 = mem[_4772]
                                    if mem[(32 * s) + _3948 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _4772 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                        if uint8(t):
                            require uint8(t - 1) < mem[_2969]
                            mem[(32 * uint8(t - 1)) + _2969 + 32] = uint16(mem[(32 * uint8(t - 1)) + _2969 + 32] + 1)
                        mem[0] = arg1
                        mem[32] = 6
                        idx = idx + 1
                        continue 
                    mem[0] = arg1
                    mem[32] = 6
                    _3888 = mem[_2969]
                    stor6[arg1].field_2048 = mem[_2969]
                    mem[0] = sha3(arg1, 6) + 8
                    if not _3888:
                        idx = 0
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4838 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_4838]);
                    else:
                        s = 0
                        idx = _2969 + 32
                        while _2969 + (32 * _3888) + 32 > idx:
                            stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                            idx = idx + 32
                            continue 
                        idx = floor32(_3888) >> 4
                        s = sha3(sha3(arg1, 6) + 8)
                        while idx:
                            stor[s] = !(65535 * 256^idx) and stor[s]
                            idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                            s = (idx + 3 / 32) + s
                            continue 
                        idx = (floor32(_3888) >> 4) + Mask(254, 1, None + -(floor32(_3888) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_3888) >> 4) + 3) >> 1
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6178 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_6178]);
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
                staticcall stor3.getTotalSupply() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3950 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3970 = mem[_3950]
                mem[0] = arg1
                mem[32] = 6
                stor6[arg1].field_2560 = _3970
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4082 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                idx = 1
                s = mem[_4082]
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
                        if 0 > s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor6[idx].field_2816 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = stor6[idx].field_2816 + s
                        continue 
                    if u * stor6[idx].field_512 / stor6[idx].field_512 != u:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[0] = idx
                    mem[32] = 6
                    if u * stor6[idx].field_512 / 100 > s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor6[idx].field_2816 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = stor6[idx].field_2816 + s - (u * stor6[idx].field_512 / 100)
                    continue 
                stor6[arg1].field_512 = s
                require sub_075dc415 <= test266151307()
                _4805 = mem[64]
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
                        staticcall stor3.getTicketNumbers(uint256 rg1) with:
                                gas gas_remaining wei
                               args idx
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5631 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5688 = mem[_5631]
                        require mem[_5631] <= test266151307()
                        require _5631 + return_data.size > _5631 + mem[_5631] + 31
                        _5728 = mem[_5631 + mem[_5631]]
                        require mem[_5631 + mem[_5631]] <= test266151307()
                        require (32 * mem[_5631 + mem[_5631]]) + 32 >= 0 and _5631 + ceil32(return_data.size) + (32 * mem[_5631 + mem[_5631]]) + 32 <= test266151307()
                        mem[64] = _5631 + ceil32(return_data.size) + (32 * mem[_5631 + mem[_5631]]) + 32
                        mem[_5631 + ceil32(return_data.size)] = _5728
                        require return_data.size >= _5688 + (32 * _5728) + 32
                        t = _5631 + _5688 + 32
                        u = _5631 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _5728:
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
                        _6092 = mem[64]
                        mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                        mem[_6092] = stor6[arg1].field_1792
                        if not stor6[arg1].field_1792:
                            s = 0
                            t = 0
                            while s < stor6[arg1].field_1792:
                                require s < mem[_6092]
                                require s < mem[_5631 + ceil32(return_data.size)]
                                mem[0] = arg1
                                mem[32] = 6
                                if mem[(32 * s) + _5631 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _6092 + 62 len 2]:
                                    s = s + 1
                                    t = t
                                    continue 
                                s = s + 1
                                t = t + 1
                                continue 
                        else:
                            mem[0] = sha3(arg1, 6) + 7
                            mem[_6092 + 32] = uint16(stor6[arg1][7].field_0)
                            if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_6092]
                                    require s < mem[_5631 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _5631 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _6092 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[_6092 + 64] = uint16(stor6[arg1][7].field_16)
                                s = _6092 + 64
                                t = 2
                                while _6092 + (32 * stor6[arg1].field_1792) > s:
                                    mem[0] = arg1
                                    mem[32] = 6
                                    mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                    s = s + 32
                                    t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                    continue 
                                _6597 = mem[_6092]
                                s = 0
                                t = 0
                                while s < _6597:
                                    require s < mem[_6092]
                                    require s < mem[_5631 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    _6597 = mem[_6092]
                                    if mem[(32 * s) + _5631 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _6092 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                        if uint8(t):
                            require uint8(t - 1) < mem[_4805]
                            mem[(32 * uint8(t - 1)) + _4805 + 32] = uint16(mem[(32 * uint8(t - 1)) + _4805 + 32] + 1)
                        mem[0] = arg1
                        mem[32] = 6
                        idx = idx + 1
                        continue 
                    mem[0] = arg1
                    mem[32] = 6
                    _5485 = mem[_4805]
                    stor6[arg1].field_2048 = mem[_4805]
                    mem[0] = sha3(arg1, 6) + 8
                    if not _5485:
                        idx = 0
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6179 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_6179]);
                    else:
                        s = 0
                        idx = _4805 + 32
                        while _4805 + (32 * _5485) + 32 > idx:
                            stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                            idx = idx + 32
                            continue 
                        idx = floor32(_5485) >> 4
                        s = sha3(sha3(arg1, 6) + 8)
                        while idx:
                            stor[s] = !(65535 * 256^idx) and stor[s]
                            idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                            s = (idx + 3 / 32) + s
                            continue 
                        idx = (floor32(_5485) >> 4) + Mask(254, 1, None + -(floor32(_5485) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_5485) >> 4) + 3) >> 1
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6669 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_6669]);
                else:
                    mem[_4805 + 32 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
                    mem[0] = arg1
                    mem[32] = 6
                    idx = stor6[arg1].field_2304
                    while idx <= stor6[arg1].field_2560:
                        mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = idx
                        require ext_code.size(stor3)
                        staticcall stor3.getTicketNumbers(uint256 rg1) with:
                                gas gas_remaining wei
                               args idx
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5633 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5689 = mem[_5633]
                        require mem[_5633] <= test266151307()
                        require _5633 + return_data.size > _5633 + mem[_5633] + 31
                        _5729 = mem[_5633 + mem[_5633]]
                        require mem[_5633 + mem[_5633]] <= test266151307()
                        require (32 * mem[_5633 + mem[_5633]]) + 32 >= 0 and _5633 + ceil32(return_data.size) + (32 * mem[_5633 + mem[_5633]]) + 32 <= test266151307()
                        mem[64] = _5633 + ceil32(return_data.size) + (32 * mem[_5633 + mem[_5633]]) + 32
                        mem[_5633 + ceil32(return_data.size)] = _5729
                        require return_data.size >= _5689 + (32 * _5729) + 32
                        t = _5633 + _5689 + 32
                        u = _5633 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _5729:
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
                        _6094 = mem[64]
                        mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
                        mem[_6094] = stor6[arg1].field_1792
                        if not stor6[arg1].field_1792:
                            s = 0
                            t = 0
                            while s < stor6[arg1].field_1792:
                                require s < mem[_6094]
                                require s < mem[_5633 + ceil32(return_data.size)]
                                mem[0] = arg1
                                mem[32] = 6
                                if mem[(32 * s) + _5633 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _6094 + 62 len 2]:
                                    s = s + 1
                                    t = t
                                    continue 
                                s = s + 1
                                t = t + 1
                                continue 
                        else:
                            mem[0] = sha3(arg1, 6) + 7
                            mem[_6094 + 32] = uint16(stor6[arg1][7].field_0)
                            if (32 * stor6[arg1].field_1792) + 32 <= 64:
                                s = 0
                                t = 0
                                while s < stor6[arg1].field_1792:
                                    require s < mem[_6094]
                                    require s < mem[_5633 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if mem[(32 * s) + _5633 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _6094 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                            else:
                                mem[_6094 + 64] = uint16(stor6[arg1][7].field_16)
                                s = _6094 + 64
                                t = 2
                                while _6094 + (32 * stor6[arg1].field_1792) > s:
                                    mem[0] = arg1
                                    mem[32] = 6
                                    mem[s + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                                    s = s + 32
                                    t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                                    continue 
                                _6598 = mem[_6094]
                                s = 0
                                t = 0
                                while s < _6598:
                                    require s < mem[_6094]
                                    require s < mem[_5633 + ceil32(return_data.size)]
                                    mem[0] = arg1
                                    mem[32] = 6
                                    _6598 = mem[_6094]
                                    if mem[(32 * s) + _5633 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _6094 + 62 len 2]:
                                        s = s + 1
                                        t = t
                                        continue 
                                    s = s + 1
                                    t = t + 1
                                    continue 
                        if uint8(t):
                            require uint8(t - 1) < mem[_4805]
                            mem[(32 * uint8(t - 1)) + _4805 + 32] = uint16(mem[(32 * uint8(t - 1)) + _4805 + 32] + 1)
                        mem[0] = arg1
                        mem[32] = 6
                        idx = idx + 1
                        continue 
                    mem[0] = arg1
                    mem[32] = 6
                    _5488 = mem[_4805]
                    stor6[arg1].field_2048 = mem[_4805]
                    mem[0] = sha3(arg1, 6) + 8
                    if not _5488:
                        idx = 0
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6181 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_6181]);
                    else:
                        s = 0
                        idx = _4805 + 32
                        while _4805 + (32 * _5488) + 32 > idx:
                            stor6[arg1][8].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[arg1][8].field_0
                            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                            idx = idx + 32
                            continue 
                        idx = floor32(_5488) >> 4
                        s = sha3(sha3(arg1, 6) + 8)
                        while idx:
                            stor[s] = !(65535 * 256^idx) and stor[s]
                            idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                            s = (idx + 3 / 32) + s
                            continue 
                        idx = (floor32(_5488) >> 4) + Mask(254, 1, None + -(floor32(_5488) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(_5488) >> 4) + 3) >> 1
                        while stor6[arg1].field_2048 + 15 / 16 > idx:
                            stor6[arg1][idx + 8].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getTotalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6670 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit LotteryClose(arg1, mem[_6670]);
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
                    call stor2.0x23b872dd with:
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
                    _1209 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 96 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                    _1249 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require return_data.size >= _1209 + (32 * _1249) + 32
                    mem[(4 * ceil32(return_data.size)) + 128 len 32 * _1249] = mem[(2 * ceil32(return_data.size)) + _1209 + 128 len 32 * _1249]
                    _1569 = mem[64]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = _1249
                    mem[mem[64] + 192 len 32 * _1249] = mem[(4 * ceil32(return_data.size)) + 128 len 32 * _1249]
                    mem[mem[64] + 32] = (32 * _1249) + 192
                    mem[mem[64] + (32 * _1249) + 192] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + (32 * _1249) + 224
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1569 + 64] = ext_call.return_data[0]
                    mem[_1569 + 96] = ext_call.return_data[32]
                    mem[_1569 + 128] = ext_call.return_data[64]
                    emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                      mem[mem[64] len _1569 + (32 * _1249) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                      msg.sender,
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
                    call stor2.0x23b872dd with:
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
                    _1208 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 96 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                    _1248 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require return_data.size >= _1208 + (32 * _1248) + 32
                    mem[(4 * ceil32(return_data.size)) + 128 len 32 * _1248] = mem[(2 * ceil32(return_data.size)) + _1208 + 128 len 32 * _1248]
                    _1568 = mem[64]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = _1248
                    mem[mem[64] + 192 len 32 * _1248] = mem[(4 * ceil32(return_data.size)) + 128 len 32 * _1248]
                    mem[mem[64] + 32] = (32 * _1248) + 192
                    mem[mem[64] + (32 * _1248) + 192] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + (32 * _1248) + 224
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1568 + 64] = ext_call.return_data[0]
                    mem[_1568 + 96] = ext_call.return_data[32]
                    mem[_1568 + 128] = ext_call.return_data[64]
                    emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                      mem[mem[64] len _1568 + (32 * _1248) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                      msg.sender,
            else:
                if not timerAddress:
                    if stor6[cd[4]].field_1280 < block.timestamp:
                        mem[0] = cd[4]
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
                            call stor2.0x23b872dd with:
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
                            _1211 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + return_data.size + 96 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1251 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1211 + (32 * _1251) + 32
                            mem[(4 * ceil32(return_data.size)) + 128 len 32 * _1251] = mem[(2 * ceil32(return_data.size)) + _1211 + 128 len 32 * _1251]
                            _1571 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1251
                            mem[mem[64] + 192 len 32 * _1251] = mem[(4 * ceil32(return_data.size)) + 128 len 32 * _1251]
                            mem[mem[64] + 32] = (32 * _1251) + 192
                            mem[mem[64] + (32 * _1251) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1251) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1571 + 64] = ext_call.return_data[0]
                            mem[_1571 + 96] = ext_call.return_data[32]
                            mem[_1571 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1571 + (32 * _1251) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
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
                            call stor2.0x23b872dd with:
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
                            _1210 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + return_data.size + 96 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1250 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1210 + (32 * _1250) + 32
                            mem[(4 * ceil32(return_data.size)) + 128 len 32 * _1250] = mem[(2 * ceil32(return_data.size)) + _1210 + 128 len 32 * _1250]
                            _1570 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1250
                            mem[mem[64] + 192 len 32 * _1250] = mem[(4 * ceil32(return_data.size)) + 128 len 32 * _1250]
                            mem[mem[64] + 32] = (32 * _1250) + 192
                            mem[mem[64] + (32 * _1250) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1250) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1570 + 64] = ext_call.return_data[0]
                            mem[_1570 + 96] = ext_call.return_data[32]
                            mem[_1570 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1570 + (32 * _1250) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
                    else:
                        uint8(stor6[cd[4]].field_256) = 1
                        mem[0] = cd[4]
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
                            call stor2.0x23b872dd with:
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
                            _1213 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + return_data.size + 96 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1253 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1213 + (32 * _1253) + 32
                            mem[(4 * ceil32(return_data.size)) + 128 len 32 * _1253] = mem[(2 * ceil32(return_data.size)) + _1213 + 128 len 32 * _1253]
                            _1573 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1253
                            mem[mem[64] + 192 len 32 * _1253] = mem[(4 * ceil32(return_data.size)) + 128 len 32 * _1253]
                            mem[mem[64] + 32] = (32 * _1253) + 192
                            mem[mem[64] + (32 * _1253) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1253) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1573 + 64] = ext_call.return_data[0]
                            mem[_1573 + 96] = ext_call.return_data[32]
                            mem[_1573 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1573 + (32 * _1253) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
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
                            call stor2.0x23b872dd with:
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
                            _1212 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + return_data.size + 96 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1252 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1212 + (32 * _1252) + 32
                            mem[(4 * ceil32(return_data.size)) + 128 len 32 * _1252] = mem[(2 * ceil32(return_data.size)) + _1212 + 128 len 32 * _1252]
                            _1572 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1252
                            mem[mem[64] + 192 len 32 * _1252] = mem[(4 * ceil32(return_data.size)) + 128 len 32 * _1252]
                            mem[mem[64] + 32] = (32 * _1252) + 192
                            mem[mem[64] + (32 * _1252) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1252) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1572 + 64] = ext_call.return_data[0]
                            mem[_1572 + 96] = ext_call.return_data[32]
                            mem[_1572 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1572 + (32 * _1252) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
                else:
                    require ext_code.size(timerAddress)
                    staticcall timerAddress.0x29cb924d with:
                            gas gas_remaining wei
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor6[cd[4]].field_1280 < ext_call.return_data[0]:
                        mem[0] = cd[4]
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
                            call stor2.0x23b872dd with:
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
                            _1215 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + return_data.size + 96 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1255 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1215 + (32 * _1255) + 32
                            mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1255] = mem[(4 * ceil32(return_data.size)) + _1215 + 128 len 32 * _1255]
                            _1575 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1255
                            mem[mem[64] + 192 len 32 * _1255] = mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1255]
                            mem[mem[64] + 32] = (32 * _1255) + 192
                            mem[mem[64] + (32 * _1255) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1255) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1575 + 64] = ext_call.return_data[0]
                            mem[_1575 + 96] = ext_call.return_data[32]
                            mem[_1575 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1575 + (32 * _1255) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
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
                            call stor2.0x23b872dd with:
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
                            _1214 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + return_data.size + 96 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1254 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1214 + (32 * _1254) + 32
                            mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1254] = mem[(4 * ceil32(return_data.size)) + _1214 + 128 len 32 * _1254]
                            _1574 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1254
                            mem[mem[64] + 192 len 32 * _1254] = mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1254]
                            mem[mem[64] + 32] = (32 * _1254) + 192
                            mem[mem[64] + (32 * _1254) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1254) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1574 + 64] = ext_call.return_data[0]
                            mem[_1574 + 96] = ext_call.return_data[32]
                            mem[_1574 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1574 + (32 * _1254) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
                    else:
                        uint8(stor6[cd[4]].field_256) = 1
                        mem[0] = cd[4]
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
                            call stor2.0x23b872dd with:
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
                            _1217 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + return_data.size + 96 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1257 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1217 + (32 * _1257) + 32
                            mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1257] = mem[(4 * ceil32(return_data.size)) + _1217 + 128 len 32 * _1257]
                            _1577 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1257
                            mem[mem[64] + 192 len 32 * _1257] = mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1257]
                            mem[mem[64] + 32] = (32 * _1257) + 192
                            mem[mem[64] + (32 * _1257) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1257) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1577 + 64] = ext_call.return_data[0]
                            mem[_1577 + 96] = ext_call.return_data[32]
                            mem[_1577 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1577 + (32 * _1257) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
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
                            call stor2.0x23b872dd with:
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
                            _1216 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + return_data.size + 96 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1256 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1216 + (32 * _1256) + 32
                            mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1256] = mem[(4 * ceil32(return_data.size)) + _1216 + 128 len 32 * _1256]
                            _1576 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1256
                            mem[mem[64] + 192 len 32 * _1256] = mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1256]
                            mem[mem[64] + 32] = (32 * _1256) + 192
                            mem[mem[64] + (32 * _1256) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1256) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1576 + 64] = ext_call.return_data[0]
                            mem[_1576 + 96] = ext_call.return_data[32]
                            mem[_1576 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1576 + (32 * _1256) + (32 * ('cd', 68).length) + -mem[64] + 224],
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
                    call stor2.0x23b872dd with:
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
                    _1219 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 96 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                    _1259 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                    mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require return_data.size >= _1219 + (32 * _1259) + 32
                    mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1259] = mem[(4 * ceil32(return_data.size)) + _1219 + 128 len 32 * _1259]
                    _1579 = mem[64]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = _1259
                    mem[mem[64] + 192 len 32 * _1259] = mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1259]
                    mem[mem[64] + 32] = (32 * _1259) + 192
                    mem[mem[64] + (32 * _1259) + 192] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + (32 * _1259) + 224
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1579 + 64] = ext_call.return_data[0]
                    mem[_1579 + 96] = ext_call.return_data[32]
                    mem[_1579 + 128] = ext_call.return_data[64]
                    emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                      mem[mem[64] len _1579 + (32 * _1259) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                      msg.sender,
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
                    call stor2.0x23b872dd with:
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
                    _1218 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 96 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                    _1258 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                    mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require return_data.size >= _1218 + (32 * _1258) + 32
                    mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1258] = mem[(4 * ceil32(return_data.size)) + _1218 + 128 len 32 * _1258]
                    _1578 = mem[64]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = _1258
                    mem[mem[64] + 192 len 32 * _1258] = mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1258]
                    mem[mem[64] + 32] = (32 * _1258) + 192
                    mem[mem[64] + (32 * _1258) + 192] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + (32 * _1258) + 224
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1578 + 64] = ext_call.return_data[0]
                    mem[_1578 + 96] = ext_call.return_data[32]
                    mem[_1578 + 128] = ext_call.return_data[64]
                    emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                      mem[mem[64] len _1578 + (32 * _1258) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                      msg.sender,
            else:
                if not timerAddress:
                    if stor6[cd[4]].field_1280 < block.timestamp:
                        mem[0] = cd[4]
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
                            call stor2.0x23b872dd with:
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
                            _1221 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + return_data.size + 96 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1261 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1221 + (32 * _1261) + 32
                            mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1261] = mem[(4 * ceil32(return_data.size)) + _1221 + 128 len 32 * _1261]
                            _1581 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1261
                            mem[mem[64] + 192 len 32 * _1261] = mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1261]
                            mem[mem[64] + 32] = (32 * _1261) + 192
                            mem[mem[64] + (32 * _1261) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1261) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1581 + 64] = ext_call.return_data[0]
                            mem[_1581 + 96] = ext_call.return_data[32]
                            mem[_1581 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1581 + (32 * _1261) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
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
                            call stor2.0x23b872dd with:
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
                            _1220 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + return_data.size + 96 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1260 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1220 + (32 * _1260) + 32
                            mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1260] = mem[(4 * ceil32(return_data.size)) + _1220 + 128 len 32 * _1260]
                            _1580 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1260
                            mem[mem[64] + 192 len 32 * _1260] = mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1260]
                            mem[mem[64] + 32] = (32 * _1260) + 192
                            mem[mem[64] + (32 * _1260) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1260) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1580 + 64] = ext_call.return_data[0]
                            mem[_1580 + 96] = ext_call.return_data[32]
                            mem[_1580 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1580 + (32 * _1260) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
                    else:
                        uint8(stor6[cd[4]].field_256) = 1
                        mem[0] = cd[4]
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
                            call stor2.0x23b872dd with:
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
                            _1223 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + return_data.size + 96 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1263 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1223 + (32 * _1263) + 32
                            mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1263] = mem[(4 * ceil32(return_data.size)) + _1223 + 128 len 32 * _1263]
                            _1583 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1263
                            mem[mem[64] + 192 len 32 * _1263] = mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1263]
                            mem[mem[64] + 32] = (32 * _1263) + 192
                            mem[mem[64] + (32 * _1263) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1263) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1583 + 64] = ext_call.return_data[0]
                            mem[_1583 + 96] = ext_call.return_data[32]
                            mem[_1583 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1583 + (32 * _1263) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
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
                            call stor2.0x23b872dd with:
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
                            _1222 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + return_data.size + 96 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1262 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1222 + (32 * _1262) + 32
                            mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1262] = mem[(4 * ceil32(return_data.size)) + _1222 + 128 len 32 * _1262]
                            _1582 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1262
                            mem[mem[64] + 192 len 32 * _1262] = mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1262]
                            mem[mem[64] + 32] = (32 * _1262) + 192
                            mem[mem[64] + (32 * _1262) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1262) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1582 + 64] = ext_call.return_data[0]
                            mem[_1582 + 96] = ext_call.return_data[32]
                            mem[_1582 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1582 + (32 * _1262) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
                else:
                    require ext_code.size(timerAddress)
                    staticcall timerAddress.0x29cb924d with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor6[cd[4]].field_1280 < ext_call.return_data[0]:
                        mem[0] = cd[4]
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
                            call stor2.0x23b872dd with:
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
                            _1225 = mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + return_data.size + 96 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1265 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(7 * ceil32(return_data.size)) + 96] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1225 + (32 * _1265) + 32
                            mem[(7 * ceil32(return_data.size)) + 128 len 32 * _1265] = mem[(6 * ceil32(return_data.size)) + _1225 + 128 len 32 * _1265]
                            _1585 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1265
                            mem[mem[64] + 192 len 32 * _1265] = mem[(7 * ceil32(return_data.size)) + 128 len 32 * _1265]
                            mem[mem[64] + 32] = (32 * _1265) + 192
                            mem[mem[64] + (32 * _1265) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1265) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1585 + 64] = ext_call.return_data[0]
                            mem[_1585 + 96] = ext_call.return_data[32]
                            mem[_1585 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1585 + (32 * _1265) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
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
                            call stor2.0x23b872dd with:
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
                            _1224 = mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + return_data.size + 96 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1264 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(7 * ceil32(return_data.size)) + 96] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1224 + (32 * _1264) + 32
                            mem[(7 * ceil32(return_data.size)) + 128 len 32 * _1264] = mem[(6 * ceil32(return_data.size)) + _1224 + 128 len 32 * _1264]
                            _1584 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1264
                            mem[mem[64] + 192 len 32 * _1264] = mem[(7 * ceil32(return_data.size)) + 128 len 32 * _1264]
                            mem[mem[64] + 32] = (32 * _1264) + 192
                            mem[mem[64] + (32 * _1264) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1264) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1584 + 64] = ext_call.return_data[0]
                            mem[_1584 + 96] = ext_call.return_data[32]
                            mem[_1584 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1584 + (32 * _1264) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
                    else:
                        uint8(stor6[cd[4]].field_256) = 1
                        mem[0] = cd[4]
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
                            call stor2.0x23b872dd with:
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
                            _1227 = mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + return_data.size + 96 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1267 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(7 * ceil32(return_data.size)) + 96] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1227 + (32 * _1267) + 32
                            mem[(7 * ceil32(return_data.size)) + 128 len 32 * _1267] = mem[(6 * ceil32(return_data.size)) + _1227 + 128 len 32 * _1267]
                            _1587 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1267
                            mem[mem[64] + 192 len 32 * _1267] = mem[(7 * ceil32(return_data.size)) + 128 len 32 * _1267]
                            mem[mem[64] + 32] = (32 * _1267) + 192
                            mem[mem[64] + (32 * _1267) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1267) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1587 + 64] = ext_call.return_data[0]
                            mem[_1587 + 96] = ext_call.return_data[32]
                            mem[_1587 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1587 + (32 * _1267) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
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
                            call stor2.0x23b872dd with:
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
                            _1226 = mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + return_data.size + 96 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1266 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(7 * ceil32(return_data.size)) + 96] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1226 + (32 * _1266) + 32
                            mem[(7 * ceil32(return_data.size)) + 128 len 32 * _1266] = mem[(6 * ceil32(return_data.size)) + _1226 + 128 len 32 * _1266]
                            _1586 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1266
                            mem[mem[64] + 192 len 32 * _1266] = mem[(7 * ceil32(return_data.size)) + 128 len 32 * _1266]
                            mem[mem[64] + 32] = (32 * _1266) + 192
                            mem[mem[64] + (32 * _1266) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1266) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1586 + 64] = ext_call.return_data[0]
                            mem[_1586 + 96] = ext_call.return_data[32]
                            mem[_1586 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1586 + (32 * _1266) + (32 * ('cd', 68).length) + -mem[64] + 224],
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
                    call stor2.0x23b872dd with:
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
                    _1229 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 96 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                    _1269 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                    mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require return_data.size >= _1229 + (32 * _1269) + 32
                    mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1269] = mem[(4 * ceil32(return_data.size)) + _1229 + 128 len 32 * _1269]
                    _1589 = mem[64]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = _1269
                    mem[mem[64] + 192 len 32 * _1269] = mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1269]
                    mem[mem[64] + 32] = (32 * _1269) + 192
                    mem[mem[64] + (32 * _1269) + 192] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + (32 * _1269) + 224
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1589 + 64] = ext_call.return_data[0]
                    mem[_1589 + 96] = ext_call.return_data[32]
                    mem[_1589 + 128] = ext_call.return_data[64]
                    emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                      mem[mem[64] len _1589 + (32 * _1269) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                      msg.sender,
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
                    call stor2.0x23b872dd with:
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
                    _1228 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 96 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                    _1268 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                    mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require return_data.size >= _1228 + (32 * _1268) + 32
                    mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1268] = mem[(4 * ceil32(return_data.size)) + _1228 + 128 len 32 * _1268]
                    _1588 = mem[64]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = _1268
                    mem[mem[64] + 192 len 32 * _1268] = mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1268]
                    mem[mem[64] + 32] = (32 * _1268) + 192
                    mem[mem[64] + (32 * _1268) + 192] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + (32 * _1268) + 224
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1588 + 64] = ext_call.return_data[0]
                    mem[_1588 + 96] = ext_call.return_data[32]
                    mem[_1588 + 128] = ext_call.return_data[64]
                    emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                      mem[mem[64] len _1588 + (32 * _1268) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                      msg.sender,
            else:
                if not timerAddress:
                    if stor6[cd[4]].field_1280 < block.timestamp:
                        mem[0] = cd[4]
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
                            call stor2.0x23b872dd with:
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
                            _1231 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + return_data.size + 96 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1271 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1231 + (32 * _1271) + 32
                            mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1271] = mem[(4 * ceil32(return_data.size)) + _1231 + 128 len 32 * _1271]
                            _1591 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1271
                            mem[mem[64] + 192 len 32 * _1271] = mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1271]
                            mem[mem[64] + 32] = (32 * _1271) + 192
                            mem[mem[64] + (32 * _1271) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1271) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1591 + 64] = ext_call.return_data[0]
                            mem[_1591 + 96] = ext_call.return_data[32]
                            mem[_1591 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1591 + (32 * _1271) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
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
                            call stor2.0x23b872dd with:
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
                            _1230 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + return_data.size + 96 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1270 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1230 + (32 * _1270) + 32
                            mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1270] = mem[(4 * ceil32(return_data.size)) + _1230 + 128 len 32 * _1270]
                            _1590 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1270
                            mem[mem[64] + 192 len 32 * _1270] = mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1270]
                            mem[mem[64] + 32] = (32 * _1270) + 192
                            mem[mem[64] + (32 * _1270) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1270) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1590 + 64] = ext_call.return_data[0]
                            mem[_1590 + 96] = ext_call.return_data[32]
                            mem[_1590 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1590 + (32 * _1270) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
                    else:
                        uint8(stor6[cd[4]].field_256) = 1
                        mem[0] = cd[4]
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
                            call stor2.0x23b872dd with:
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
                            _1233 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + return_data.size + 96 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1273 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1233 + (32 * _1273) + 32
                            mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1273] = mem[(4 * ceil32(return_data.size)) + _1233 + 128 len 32 * _1273]
                            _1593 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1273
                            mem[mem[64] + 192 len 32 * _1273] = mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1273]
                            mem[mem[64] + 32] = (32 * _1273) + 192
                            mem[mem[64] + (32 * _1273) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1273) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1593 + 64] = ext_call.return_data[0]
                            mem[_1593 + 96] = ext_call.return_data[32]
                            mem[_1593 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1593 + (32 * _1273) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
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
                            call stor2.0x23b872dd with:
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
                            _1232 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + return_data.size + 96 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1272 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1232 + (32 * _1272) + 32
                            mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1272] = mem[(4 * ceil32(return_data.size)) + _1232 + 128 len 32 * _1272]
                            _1592 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1272
                            mem[mem[64] + 192 len 32 * _1272] = mem[(6 * ceil32(return_data.size)) + 128 len 32 * _1272]
                            mem[mem[64] + 32] = (32 * _1272) + 192
                            mem[mem[64] + (32 * _1272) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1272) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1592 + 64] = ext_call.return_data[0]
                            mem[_1592 + 96] = ext_call.return_data[32]
                            mem[_1592 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1592 + (32 * _1272) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
                else:
                    require ext_code.size(timerAddress)
                    staticcall timerAddress.0x29cb924d with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor6[cd[4]].field_1280 < ext_call.return_data[0]:
                        mem[0] = cd[4]
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
                            call stor2.0x23b872dd with:
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
                            _1235 = mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + return_data.size + 96 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1275 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(7 * ceil32(return_data.size)) + 96] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1235 + (32 * _1275) + 32
                            mem[(7 * ceil32(return_data.size)) + 128 len 32 * _1275] = mem[(6 * ceil32(return_data.size)) + _1235 + 128 len 32 * _1275]
                            _1595 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1275
                            mem[mem[64] + 192 len 32 * _1275] = mem[(7 * ceil32(return_data.size)) + 128 len 32 * _1275]
                            mem[mem[64] + 32] = (32 * _1275) + 192
                            mem[mem[64] + (32 * _1275) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1275) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1595 + 64] = ext_call.return_data[0]
                            mem[_1595 + 96] = ext_call.return_data[32]
                            mem[_1595 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1595 + (32 * _1275) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
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
                            call stor2.0x23b872dd with:
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
                            _1234 = mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + return_data.size + 96 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1274 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(7 * ceil32(return_data.size)) + 96] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1234 + (32 * _1274) + 32
                            mem[(7 * ceil32(return_data.size)) + 128 len 32 * _1274] = mem[(6 * ceil32(return_data.size)) + _1234 + 128 len 32 * _1274]
                            _1594 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1274
                            mem[mem[64] + 192 len 32 * _1274] = mem[(7 * ceil32(return_data.size)) + 128 len 32 * _1274]
                            mem[mem[64] + 32] = (32 * _1274) + 192
                            mem[mem[64] + (32 * _1274) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1274) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1594 + 64] = ext_call.return_data[0]
                            mem[_1594 + 96] = ext_call.return_data[32]
                            mem[_1594 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1594 + (32 * _1274) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
                    else:
                        uint8(stor6[cd[4]].field_256) = 1
                        mem[0] = cd[4]
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
                            call stor2.0x23b872dd with:
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
                            _1237 = mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + return_data.size + 96 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1277 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(7 * ceil32(return_data.size)) + 96] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1237 + (32 * _1277) + 32
                            mem[(7 * ceil32(return_data.size)) + 128 len 32 * _1277] = mem[(6 * ceil32(return_data.size)) + _1237 + 128 len 32 * _1277]
                            _1597 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1277
                            mem[mem[64] + 192 len 32 * _1277] = mem[(7 * ceil32(return_data.size)) + 128 len 32 * _1277]
                            mem[mem[64] + 32] = (32 * _1277) + 192
                            mem[mem[64] + (32 * _1277) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1277) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1597 + 64] = ext_call.return_data[0]
                            mem[_1597 + 96] = ext_call.return_data[32]
                            mem[_1597 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1597 + (32 * _1277) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
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
                            call stor2.0x23b872dd with:
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
                            _1236 = mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + return_data.size + 96 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1276 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(7 * ceil32(return_data.size)) + 96] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1236 + (32 * _1276) + 32
                            mem[(7 * ceil32(return_data.size)) + 128 len 32 * _1276] = mem[(6 * ceil32(return_data.size)) + _1236 + 128 len 32 * _1276]
                            _1596 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1276
                            mem[mem[64] + 192 len 32 * _1276] = mem[(7 * ceil32(return_data.size)) + 128 len 32 * _1276]
                            mem[mem[64] + 32] = (32 * _1276) + 192
                            mem[mem[64] + (32 * _1276) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1276) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1596 + 64] = ext_call.return_data[0]
                            mem[_1596 + 96] = ext_call.return_data[32]
                            mem[_1596 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1596 + (32 * _1276) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
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
                    call stor2.0x23b872dd with:
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
                    _1239 = mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require (6 * ceil32(return_data.size)) + return_data.size + 96 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                    _1279 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                    require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                    mem[(7 * ceil32(return_data.size)) + 96] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require return_data.size >= _1239 + (32 * _1279) + 32
                    mem[(7 * ceil32(return_data.size)) + 128 len 32 * _1279] = mem[(6 * ceil32(return_data.size)) + _1239 + 128 len 32 * _1279]
                    _1599 = mem[64]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = _1279
                    mem[mem[64] + 192 len 32 * _1279] = mem[(7 * ceil32(return_data.size)) + 128 len 32 * _1279]
                    mem[mem[64] + 32] = (32 * _1279) + 192
                    mem[mem[64] + (32 * _1279) + 192] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + (32 * _1279) + 224
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1599 + 64] = ext_call.return_data[0]
                    mem[_1599 + 96] = ext_call.return_data[32]
                    mem[_1599 + 128] = ext_call.return_data[64]
                    emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                      mem[mem[64] len _1599 + (32 * _1279) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                      msg.sender,
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
                    call stor2.0x23b872dd with:
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
                    _1238 = mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require (6 * ceil32(return_data.size)) + return_data.size + 96 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                    _1278 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                    require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                    mem[(7 * ceil32(return_data.size)) + 96] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                    require return_data.size >= _1238 + (32 * _1278) + 32
                    mem[(7 * ceil32(return_data.size)) + 128 len 32 * _1278] = mem[(6 * ceil32(return_data.size)) + _1238 + 128 len 32 * _1278]
                    _1598 = mem[64]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = _1278
                    mem[mem[64] + 192 len 32 * _1278] = mem[(7 * ceil32(return_data.size)) + 128 len 32 * _1278]
                    mem[mem[64] + 32] = (32 * _1278) + 192
                    mem[mem[64] + (32 * _1278) + 192] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + (32 * _1278) + 224
                    while idx < ('cd', 68).length:
                        require cd[s] == uint16(cd[s])
                        mem[t] = uint16(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1598 + 64] = ext_call.return_data[0]
                    mem[_1598 + 96] = ext_call.return_data[32]
                    mem[_1598 + 128] = ext_call.return_data[64]
                    emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                      mem[mem[64] len _1598 + (32 * _1278) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                      msg.sender,
            else:
                if not timerAddress:
                    if stor6[cd[4]].field_1280 < block.timestamp:
                        mem[0] = cd[4]
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
                            call stor2.0x23b872dd with:
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
                            _1241 = mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + return_data.size + 96 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1281 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(7 * ceil32(return_data.size)) + 96] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1241 + (32 * _1281) + 32
                            mem[(7 * ceil32(return_data.size)) + 128 len 32 * _1281] = mem[(6 * ceil32(return_data.size)) + _1241 + 128 len 32 * _1281]
                            _1601 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1281
                            mem[mem[64] + 192 len 32 * _1281] = mem[(7 * ceil32(return_data.size)) + 128 len 32 * _1281]
                            mem[mem[64] + 32] = (32 * _1281) + 192
                            mem[mem[64] + (32 * _1281) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1281) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1601 + 64] = ext_call.return_data[0]
                            mem[_1601 + 96] = ext_call.return_data[32]
                            mem[_1601 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1601 + (32 * _1281) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
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
                            call stor2.0x23b872dd with:
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
                            _1240 = mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + return_data.size + 96 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1280 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(7 * ceil32(return_data.size)) + 96] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1240 + (32 * _1280) + 32
                            mem[(7 * ceil32(return_data.size)) + 128 len 32 * _1280] = mem[(6 * ceil32(return_data.size)) + _1240 + 128 len 32 * _1280]
                            _1600 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1280
                            mem[mem[64] + 192 len 32 * _1280] = mem[(7 * ceil32(return_data.size)) + 128 len 32 * _1280]
                            mem[mem[64] + 32] = (32 * _1280) + 192
                            mem[mem[64] + (32 * _1280) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1280) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1600 + 64] = ext_call.return_data[0]
                            mem[_1600 + 96] = ext_call.return_data[32]
                            mem[_1600 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1600 + (32 * _1280) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
                    else:
                        uint8(stor6[cd[4]].field_256) = 1
                        mem[0] = cd[4]
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
                            call stor2.0x23b872dd with:
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
                            _1243 = mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + return_data.size + 96 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1283 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(7 * ceil32(return_data.size)) + 96] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1243 + (32 * _1283) + 32
                            mem[(7 * ceil32(return_data.size)) + 128 len 32 * _1283] = mem[(6 * ceil32(return_data.size)) + _1243 + 128 len 32 * _1283]
                            _1603 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1283
                            mem[mem[64] + 192 len 32 * _1283] = mem[(7 * ceil32(return_data.size)) + 128 len 32 * _1283]
                            mem[mem[64] + 32] = (32 * _1283) + 192
                            mem[mem[64] + (32 * _1283) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1283) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1603 + 64] = ext_call.return_data[0]
                            mem[_1603 + 96] = ext_call.return_data[32]
                            mem[_1603 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1603 + (32 * _1283) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
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
                            call stor2.0x23b872dd with:
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
                            _1242 = mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + return_data.size + 96 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1282 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(7 * ceil32(return_data.size)) + 96] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1242 + (32 * _1282) + 32
                            mem[(7 * ceil32(return_data.size)) + 128 len 32 * _1282] = mem[(6 * ceil32(return_data.size)) + _1242 + 128 len 32 * _1282]
                            _1602 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1282
                            mem[mem[64] + 192 len 32 * _1282] = mem[(7 * ceil32(return_data.size)) + 128 len 32 * _1282]
                            mem[mem[64] + 32] = (32 * _1282) + 192
                            mem[mem[64] + (32 * _1282) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1282) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1602 + 64] = ext_call.return_data[0]
                            mem[_1602 + 96] = ext_call.return_data[32]
                            mem[_1602 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1602 + (32 * _1282) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
                else:
                    require ext_code.size(timerAddress)
                    staticcall timerAddress.0x29cb924d with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor6[cd[4]].field_1280 < ext_call.return_data[0]:
                        mem[0] = cd[4]
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
                            mem[(4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[(6 * ceil32(return_data.size)) + 100] = msg.sender
                            mem[(6 * ceil32(return_data.size)) + 132] = this.address
                            mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[64]
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), ext_call.return_data[64]
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(7 * ceil32(return_data.size)) + 96] = 0x5e3261d000000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + 100] = msg.sender
                            mem[(7 * ceil32(return_data.size)) + 132] = cd[4]
                            mem[(7 * ceil32(return_data.size)) + 164] = uint8(cd[36])
                            mem[(7 * ceil32(return_data.size)) + 196] = 160
                            mem[(7 * ceil32(return_data.size)) + 260] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = (7 * ceil32(return_data.size)) + 292
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(7 * ceil32(return_data.size)) + 228] = sub_075dc415
                            require ext_code.size(stor3)
                            call stor3.0x5e3261d0 with:
                                 gas gas_remaining wei
                                args msg.sender, cd[4], cd[36] << 248, Array(len=('cd', 68).length, data=mem[(7 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]), sub_075dc415
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _1245 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + return_data.size + 96 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1285 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1245 + (32 * _1285) + 32
                            mem[(8 * ceil32(return_data.size)) + 128 len 32 * _1285] = mem[(7 * ceil32(return_data.size)) + _1245 + 128 len 32 * _1285]
                            _1605 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1285
                            mem[mem[64] + 192 len 32 * _1285] = mem[(8 * ceil32(return_data.size)) + 128 len 32 * _1285]
                            mem[mem[64] + 32] = (32 * _1285) + 192
                            mem[mem[64] + (32 * _1285) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1285) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1605 + 64] = ext_call.return_data[0]
                            mem[_1605 + 96] = ext_call.return_data[32]
                            mem[_1605 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1605 + (32 * _1285) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
                        else:
                            if uint8(uint8(sub_075dc415 * uint8(cd[36])) / uint8(cd[36])) != sub_075dc415:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if uint8(sub_075dc415 * uint8(cd[36])) != ('cd', 68).length:
                                revert with 0, 'Invalid chosen numbers'
                            require ext_code.size(this.address)
                            staticcall this.address.0xdccda096 with:
                                    gas gas_remaining wei
                                   args cd[4], uint8(cd[36])
                            mem[(4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[(6 * ceil32(return_data.size)) + 100] = msg.sender
                            mem[(6 * ceil32(return_data.size)) + 132] = this.address
                            mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[64]
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), ext_call.return_data[64]
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(7 * ceil32(return_data.size)) + 96] = 0x5e3261d000000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + 100] = msg.sender
                            mem[(7 * ceil32(return_data.size)) + 132] = cd[4]
                            mem[(7 * ceil32(return_data.size)) + 164] = uint8(cd[36])
                            mem[(7 * ceil32(return_data.size)) + 196] = 160
                            mem[(7 * ceil32(return_data.size)) + 260] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = (7 * ceil32(return_data.size)) + 292
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(7 * ceil32(return_data.size)) + 228] = sub_075dc415
                            require ext_code.size(stor3)
                            call stor3.0x5e3261d0 with:
                                 gas gas_remaining wei
                                args msg.sender, cd[4], cd[36] << 248, Array(len=('cd', 68).length, data=mem[(7 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]), sub_075dc415
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _1244 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + return_data.size + 96 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1284 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1244 + (32 * _1284) + 32
                            mem[(8 * ceil32(return_data.size)) + 128 len 32 * _1284] = mem[(7 * ceil32(return_data.size)) + _1244 + 128 len 32 * _1284]
                            _1604 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1284
                            mem[mem[64] + 192 len 32 * _1284] = mem[(8 * ceil32(return_data.size)) + 128 len 32 * _1284]
                            mem[mem[64] + 32] = (32 * _1284) + 192
                            mem[mem[64] + (32 * _1284) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1284) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1604 + 64] = ext_call.return_data[0]
                            mem[_1604 + 96] = ext_call.return_data[32]
                            mem[_1604 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1604 + (32 * _1284) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
                    else:
                        uint8(stor6[cd[4]].field_256) = 1
                        mem[0] = cd[4]
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
                            mem[(4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[(6 * ceil32(return_data.size)) + 100] = msg.sender
                            mem[(6 * ceil32(return_data.size)) + 132] = this.address
                            mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[64]
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), ext_call.return_data[64]
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(7 * ceil32(return_data.size)) + 96] = 0x5e3261d000000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + 100] = msg.sender
                            mem[(7 * ceil32(return_data.size)) + 132] = cd[4]
                            mem[(7 * ceil32(return_data.size)) + 164] = uint8(cd[36])
                            mem[(7 * ceil32(return_data.size)) + 196] = 160
                            mem[(7 * ceil32(return_data.size)) + 260] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = (7 * ceil32(return_data.size)) + 292
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(7 * ceil32(return_data.size)) + 228] = sub_075dc415
                            require ext_code.size(stor3)
                            call stor3.0x5e3261d0 with:
                                 gas gas_remaining wei
                                args msg.sender, cd[4], cd[36] << 248, Array(len=('cd', 68).length, data=mem[(7 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]), sub_075dc415
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _1247 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + return_data.size + 96 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1287 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1247 + (32 * _1287) + 32
                            mem[(8 * ceil32(return_data.size)) + 128 len 32 * _1287] = mem[(7 * ceil32(return_data.size)) + _1247 + 128 len 32 * _1287]
                            _1607 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1287
                            mem[mem[64] + 192 len 32 * _1287] = mem[(8 * ceil32(return_data.size)) + 128 len 32 * _1287]
                            mem[mem[64] + 32] = (32 * _1287) + 192
                            mem[mem[64] + (32 * _1287) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1287) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1607 + 64] = ext_call.return_data[0]
                            mem[_1607 + 96] = ext_call.return_data[32]
                            mem[_1607 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1607 + (32 * _1287) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
                        else:
                            if uint8(uint8(sub_075dc415 * uint8(cd[36])) / uint8(cd[36])) != sub_075dc415:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if uint8(sub_075dc415 * uint8(cd[36])) != ('cd', 68).length:
                                revert with 0, 'Invalid chosen numbers'
                            require ext_code.size(this.address)
                            staticcall this.address.0xdccda096 with:
                                    gas gas_remaining wei
                                   args cd[4], uint8(cd[36])
                            mem[(4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[(6 * ceil32(return_data.size)) + 100] = msg.sender
                            mem[(6 * ceil32(return_data.size)) + 132] = this.address
                            mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[64]
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), ext_call.return_data[64]
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(7 * ceil32(return_data.size)) + 96] = 0x5e3261d000000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + 100] = msg.sender
                            mem[(7 * ceil32(return_data.size)) + 132] = cd[4]
                            mem[(7 * ceil32(return_data.size)) + 164] = uint8(cd[36])
                            mem[(7 * ceil32(return_data.size)) + 196] = 160
                            mem[(7 * ceil32(return_data.size)) + 260] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = (7 * ceil32(return_data.size)) + 292
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(7 * ceil32(return_data.size)) + 228] = sub_075dc415
                            require ext_code.size(stor3)
                            call stor3.0x5e3261d0 with:
                                 gas gas_remaining wei
                                args msg.sender, cd[4], cd[36] << 248, Array(len=('cd', 68).length, data=mem[(7 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]), sub_075dc415
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (8 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _1246 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require (7 * ceil32(return_data.size)) + return_data.size + 96 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
                            _1286 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
                            require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
                            mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
                            mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
                            require return_data.size >= _1246 + (32 * _1286) + 32
                            mem[(8 * ceil32(return_data.size)) + 128 len 32 * _1286] = mem[(7 * ceil32(return_data.size)) + _1246 + 128 len 32 * _1286]
                            _1606 = mem[64]
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = _1286
                            mem[mem[64] + 192 len 32 * _1286] = mem[(8 * ceil32(return_data.size)) + 128 len 32 * _1286]
                            mem[mem[64] + 32] = (32 * _1286) + 192
                            mem[mem[64] + (32 * _1286) + 192] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + (32 * _1286) + 224
                            while idx < ('cd', 68).length:
                                require cd[s] == uint16(cd[s])
                                mem[t] = uint16(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1606 + 64] = ext_call.return_data[0]
                            mem[_1606 + 96] = ext_call.return_data[32]
                            mem[_1606 + 128] = ext_call.return_data[64]
                            emit NewBatchMint(address rg1, uint256[] rg2, uint16[] rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                              mem[mem[64] len _1606 + (32 * _1286) + (32 * ('cd', 68).length) + -mem[64] + 224],
                                              msg.sender,
}



}
