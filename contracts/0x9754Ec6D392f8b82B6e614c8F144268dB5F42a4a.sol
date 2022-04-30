contract main {




// =====================  Runtime code  =====================


#
#  - sub_37a83723(?)
#  - claimReward(uint256 arg1, uint256 arg2)
#
const getCurrentTime = block.timestamp


bool stor0; offset 256
uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
address owner;
address stor1;
address stor2;
uint256 currentLotteryId;
uint256 stor4;
uint256 stor5;
uint8 sub_075dc415; offset 160
uint8 sub_350d9251; offset 184
uint8 sub_8be852b1; offset 192
uint8 sub_add5edf0; offset 200
uint8 sub_3c309fe7; offset 208
uint8 sub_9c216602; offset 216
uint16 maxRange; offset 168
uint32 stor6; offset 224
address stor6;

function sub_075dc415(?) payable {
    return sub_075dc415
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

function costToBuyTickets(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not uint256(stor7[arg1].field_768):
        return 0
    if arg2 * uint256(stor7[arg1].field_768) / uint256(stor7[arg1].field_768) != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return (arg2 * uint256(stor7[arg1].field_768))
}

function sub_a59d1acf(?) payable {
    require ext_code.size(stor1)
    staticcall stor1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor5 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - stor5)
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
    uint32(stor6.field_224) = 0
    emit UpdatedBuckets(address(msg.sender), arg1 << 248, arg2 << 248, arg3 << 248, arg4, arg5 << 248);
}

function sub_17c8463e(?) payable {
    require calldata.size - 4 >= 320
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == uint8(arg3)
    require arg4 == uint16(arg4)
    require arg5 == uint8(arg5)
    require arg6 == uint8(arg6)
    require arg7 == uint8(arg7)
    require arg8 == uint8(arg8)
    require arg9 == uint8(arg9)
    require arg10 == address(arg10)
    if not uint8(stor0.field_168):
        if ext_code.size(this.address):
            if uint8(stor0.field_160):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_168):
            uint8(stor0.field_160) = 1
            uint8(stor0.field_168) = 1
            Mask(88, 0, stor0.field_168) = 0
            stor0.field_256 % 1 = 0
    if not uint8(arg5):
        revert with 0, 'Bucket range cannot be 0'
    if not uint8(arg6):
        revert with 0, 'Bucket range cannot be 0'
    if uint8(arg5) >= uint8(arg6):
        revert with 0, 'Bucket one must be smaller'
    if uint8(arg7) >= uint8(arg8):
        revert with 0, 'Discounts must increase'
    if uint8(arg8) >= uint8(arg9):
        revert with 0, 'Discounts must increase'
    if not address(arg1):
        revert with 0, 'Contracts cannot be 0 address'
    if not address(arg2):
        revert with 0, 'Contracts cannot be 0 address'
    if not uint8(arg3):
        revert with 0, 'Lottery setup cannot be 0'
    if not uint16(arg4):
        revert with 0, 'Lottery setup cannot be 0'
    stor1 = address(arg1)
    stor2 = address(arg2)
    sub_075dc415 = uint8(arg3)
    maxRange = uint16(arg4)
    sub_350d9251 = uint8(arg5)
    sub_8be852b1 = uint8(arg6)
    sub_add5edf0 = uint8(arg7)
    sub_3c309fe7 = uint8(arg8)
    sub_9c216602 = uint8(arg9)
    stor4 = 1
    address(stor6.field_0) = 0x5b7109b2dae299d882c410c1a281fc194658e89
    owner = address(arg10)
    emit OwnershipTransferred(0, address(arg10));
    if not uint8(stor0.field_168):
        uint8(stor0.field_168) = 0
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
    mem[32] = 7
    require uint8(stor7[arg1].field_256) <= 3
    if uint8(stor7[arg1].field_256) != 3:
        return 0
    mem[96] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    require ext_code.size(stor2)
    staticcall stor2.0x9839eafd with:
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
    mem[32] = 7
    _30 = mem[64]
    mem[64] = mem[64] + (32 * uint256(stor7[arg1].field_1792)) + 32
    mem[_30] = uint256(stor7[arg1].field_1792)
    if not uint256(stor7[arg1].field_1792):
        idx = 0
        s = 0
        while idx < uint256(stor7[arg1].field_1792):
            require idx < uint256(stor7[arg1].field_1792)
            require idx < _8
            if mem[(32 * idx) + ceil32(return_data.size) + 158 len 2] != mem[(32 * idx) + _30 + 62 len 2]:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
    else:
        mem[_30 + 32] = uint16(stor7[arg1][7].field_0)
        idx = _30 + 32
        s = 0
        while _30 + (32 * uint256(stor7[arg1].field_1792)) > idx:
            mem[idx + 32] = uint16(stor7[arg1][7].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
            idx = idx + 32
            s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
            continue 
        idx = 0
        s = 0
        while idx < uint256(stor7[arg1].field_1792):
            require idx < uint256(stor7[arg1].field_1792)
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
    if uint8(s - 1) < uint256(stor7[arg1].field_1024):
        if uint8(s - 1) < uint256(stor7[arg1].field_2048):
            if not uint256(stor7[arg1].field_512):
                if stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor7', 7))))[uint8(s - 1)] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor7', 7))))[uint8(s - 1)]:
                    return (0 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor7', 7))))[uint8(s - 1)])
            else:
                if stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor7', 7))))[uint8(s - 1)] * uint256(stor7[arg1].field_512) / uint256(stor7[arg1].field_512) != stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor7', 7))))[uint8(s - 1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor7', 7))))[uint8(s - 1)] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor7', 7))))[uint8(s - 1)]:
                    return (stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor7', 7))))[uint8(s - 1)] * uint256(stor7[arg1].field_512) / 100 / stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor7', 7))))[uint8(s - 1)])
            ('iszero', ('stor', ('array', ('mask_shl', 8, 0, 0, ('add', -1, ('var', 1))), ('name', "stor((Mask(4, 4, s - 1) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor7', 7))))", ('add', ('div', ('mask', 8, 0, ('add', -1, ('var', 1))), 16), ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor7', 7))))))))
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
    if uint256(stor7[cd[4]].field_1536) > block.timestamp:
        revert with 0, 'Wait till end to claim'
    mem[0] = cd[4]
    mem[32] = 7
    require uint8(stor7[cd[4]].field_256) <= 3
    if uint8(stor7[cd[4]].field_256) != 3:
        revert with 0, 'Winning Numbers not chosen yet'
    idx = 0
    while idx < ('cd', 36).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
        require ext_code.size(stor2)
        staticcall stor2.0x9d755367 with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[36] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _188 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_188] == mem[_188 + 12 len 20]
        if mem[_188 + 12 len 20] != msg.sender:
            revert with 0, 'Only the owner can claim'
        require idx < ('cd', 36).length
        mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
        require ext_code.size(stor2)
        staticcall stor2.0x9191a7ea with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[36] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _204 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_204] == bool(mem[_204])
        if not mem[_204]:
            require idx < ('cd', 36).length
            mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
            mem[mem[64] + 36] = cd[4]
            require ext_code.size(stor2)
            call stor2.0xed06a740 with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[36] + 36)], cd[4]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _224 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_224] == bool(mem[_224])
            if not mem[_224]:
                revert with 0, 'Numbers for ticket invalid'
            require idx < ('cd', 36).length
            mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
            require ext_code.size(stor2)
            staticcall stor2.0x9839eafd with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[36] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _292 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _309 = mem[_292]
            require mem[_292] <= test266151307()
            require _292 + return_data.size > _292 + mem[_292] + 31
            _322 = mem[_292 + mem[_292]]
            require mem[_292 + mem[_292]] <= test266151307()
            require (32 * mem[_292 + mem[_292]]) + 32 >= 0 and _292 + ceil32(return_data.size) + (32 * mem[_292 + mem[_292]]) + 32 <= test266151307()
            mem[64] = _292 + ceil32(return_data.size) + (32 * mem[_292 + mem[_292]]) + 32
            mem[_292 + ceil32(return_data.size)] = _322
            require return_data.size >= _309 + (32 * _322) + 32
            t = _292 + _309 + 32
            u = _292 + ceil32(return_data.size) + 32
            s = 0
            while s < _322:
                require mem[t] == mem[t + 30 len 2]
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            mem[0] = cd[4]
            mem[32] = 7
            _355 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor7[cd[4]].field_1792)) + 32
            mem[_355] = uint256(stor7[cd[4]].field_1792)
            if not uint256(stor7[cd[4]].field_1792):
                s = 0
                t = 0
                while s < uint256(stor7[cd[4]].field_1792):
                    require s < uint256(stor7[cd[4]].field_1792)
                    require s < _322
                    if mem[(32 * s) + _292 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _355 + 62 len 2]:
                        s = s + 1
                        t = t
                        continue 
                    s = s + 1
                    t = t + 1
                    continue 
            else:
                mem[0] = sha3(cd[4], 7) + 7
                mem[_355 + 32] = uint16(stor7[cd[4]][7].field_0)
                if (32 * uint256(stor7[cd[4]].field_1792)) + 32 <= 64:
                    s = 0
                    t = 0
                    while s < uint256(stor7[cd[4]].field_1792):
                        require s < uint256(stor7[cd[4]].field_1792)
                        require s < _322
                        if mem[(32 * s) + _292 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _355 + 62 len 2]:
                            s = s + 1
                            t = t
                            continue 
                        s = s + 1
                        t = t + 1
                        continue 
                else:
                    mem[_355 + 64] = uint16(stor7[cd[4]][7].field_16)
                    s = _355 + 64
                    t = 2
                    while _355 + (32 * uint256(stor7[cd[4]].field_1792)) > s:
                        mem[s + 32] = uint16(stor7[cd[4]][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                        s = s + 32
                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                        continue 
                    s = 0
                    t = 0
                    while s < uint256(stor7[cd[4]].field_1792):
                        require s < uint256(stor7[cd[4]].field_1792)
                        require s < mem[_292 + ceil32(return_data.size)]
                        if mem[(32 * s) + _292 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _355 + 62 len 2]:
                            s = s + 1
                            t = t
                            continue 
                        s = s + 1
                        t = t + 1
                        continue 
            if uint8(t):
                if uint8(t) != 1:
                    require uint8(t - 1) < uint256(stor7[cd[4]].field_1024)
                    require uint8(t - 1) < uint256(stor7[cd[4]].field_2048)
                    mem[0] = cd[4]
                    mem[32] = 7
                    if not uint256(stor7[cd[4]].field_512):
                        if stor((Mask(4, 4, t - 1) >> 4) + ('array', 8, ('map', ('cd', 4), ('name', 'stor7', 7))))[uint8(t - 1)] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor((Mask(4, 4, t - 1) >> 4) + ('array', 8, ('map', ('cd', 4), ('name', 'stor7', 7))))[uint8(t - 1)]
                        if 0 / stor((Mask(4, 4, t - 1) >> 4) + ('array', 8, ('map', ('cd', 4), ('name', 'stor7', 7))))[uint8(t - 1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if stor((Mask(3, 5, t - 1) >> 5) + ('array', 4, ('map', ('cd', 4), ('name', 'stor7', 7))))[uint8(t - 1)] * uint256(stor7[cd[4]].field_512) / uint256(stor7[cd[4]].field_512) != stor((Mask(3, 5, t - 1) >> 5) + ('array', 4, ('map', ('cd', 4), ('name', 'stor7', 7))))[uint8(t - 1)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor((Mask(4, 4, t - 1) >> 4) + ('array', 8, ('map', ('cd', 4), ('name', 'stor7', 7))))[uint8(t - 1)] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor((Mask(4, 4, t - 1) >> 4) + ('array', 8, ('map', ('cd', 4), ('name', 'stor7', 7))))[uint8(t - 1)]
                        if stor((Mask(3, 5, t - 1) >> 5) + ('array', 4, ('map', ('cd', 4), ('name', 'stor7', 7))))[uint8(t - 1)] * uint256(stor7[cd[4]].field_512) / 100 / stor((Mask(4, 4, t - 1) >> 4) + ('array', 8, ('map', ('cd', 4), ('name', 'stor7', 7))))[uint8(t - 1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if 0 > stor5:
        revert with 0, 'SafeMath: subtraction overflow'
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor1)
    staticcall stor1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _189 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _191 = mem[_189]
    if mem[_189] >= 0:
        _192 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = 0
        _196 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = transfer(address arg1, uint256 arg2)
        mem[64] = mem[64] + 164
        mem[_192 + 100] = 32
        mem[_192 + 132] = 'SafeERC20: low-level call failed'
        if not ext_code.size(stor1):
            revert with 0, 'Address: call to non-contract'
        _210 = mem[_196]
        mem[_192 + 164 len ceil32(mem[_196])] = mem[_196 + 32 len ceil32(mem[_196])]
        if ceil32(_210) > _210:
            mem[_192 + _210 + 164] = 0
        call stor1 with:
             gas gas_remaining wei
            args mem[_192 + 168 len _210 - 4]
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
            mem[_192 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_192 + 196] == bool(mem[_192 + 196])
                if not mem[_192 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        _193 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = _191
        _198 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = transfer(address arg1, uint256 arg2)
        mem[64] = mem[64] + 164
        mem[_193 + 100] = 32
        mem[_193 + 132] = 'SafeERC20: low-level call failed'
        if not ext_code.size(stor1):
            revert with 0, 'Address: call to non-contract'
        _211 = mem[_198]
        mem[_193 + 164 len ceil32(mem[_198])] = mem[_198 + 32 len ceil32(mem[_198])]
        if ceil32(_211) > _211:
            mem[_193 + _211 + 164] = 0
        call stor1 with:
             gas gas_remaining wei
            args mem[_193 + 168 len _211 - 4]
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
            mem[_193 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_193 + 196] == bool(mem[_193 + 196])
                if not mem[_193 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
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
    if block.timestamp < uint256(stor7[cd[4]].field_1280):
        revert with 0, 'Invalid time for mint:start'
    if block.timestamp >= uint256(stor7[cd[4]].field_1536):
        revert with 0, 'Invalid time for mint:end'
    require uint8(stor7[cd[4]].field_256) <= 3
    if uint8(stor7[cd[4]].field_256):
        mem[0] = cd[4]
        mem[32] = 7
        require uint8(stor7[cd[4]].field_256) <= 3
        if uint8(stor7[cd[4]].field_256) != 1:
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
            require ext_code.size(stor1)
            call stor1.transferFrom(address arg1, address arg2, uint256 arg3) with:
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
            require ext_code.size(stor2)
            call stor2.0x5e3261d0 with:
                 gas gas_remaining wei
                args msg.sender, cd[4], cd[36] << 248, Array(len=('cd', 68).length, data=mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]), sub_075dc415
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _128 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + return_data.size + 96 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
            _132 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
            require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
            mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
            require return_data.size >= _128 + (32 * _132) + 32
            mem[(4 * ceil32(return_data.size)) + 128 len 32 * _132] = mem[(2 * ceil32(return_data.size)) + _128 + 128 len 32 * _132]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = _132
            mem[mem[64] + 192 len 32 * _132] = mem[(4 * ceil32(return_data.size)) + 128 len 32 * _132]
            mem[mem[64] + (32 * _132) + 192] = ('cd', 68).length
            idx = 0
            s = cd[68] + 36
            t = mem[64] + (32 * _132) + 224
            while idx < ('cd', 68).length:
                require cd[s] == uint16(cd[s])
                mem[t] = uint16(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 64] = ext_call.return_data[0]
            mem[mem[64] + 96] = ext_call.return_data[32]
            emit NewBatchMint(Array(len=_132, data=mem[mem[64] + 192 len (32 * _132) + (32 * ('cd', 68).length) + 32]), (32 * _132) + 192, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], msg.sender);
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
            require ext_code.size(stor1)
            call stor1.transferFrom(address arg1, address arg2, uint256 arg3) with:
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
            require ext_code.size(stor2)
            call stor2.0x5e3261d0 with:
                 gas gas_remaining wei
                args msg.sender, cd[4], cd[36] << 248, Array(len=('cd', 68).length, data=mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]), sub_075dc415
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _127 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + return_data.size + 96 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
            _131 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
            require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
            mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
            require return_data.size >= _127 + (32 * _131) + 32
            mem[(4 * ceil32(return_data.size)) + 128 len 32 * _131] = mem[(2 * ceil32(return_data.size)) + _127 + 128 len 32 * _131]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = _131
            mem[mem[64] + 192 len 32 * _131] = mem[(4 * ceil32(return_data.size)) + 128 len 32 * _131]
            mem[mem[64] + (32 * _131) + 192] = ('cd', 68).length
            idx = 0
            s = cd[68] + 36
            t = mem[64] + (32 * _131) + 224
            while idx < ('cd', 68).length:
                require cd[s] == uint16(cd[s])
                mem[t] = uint16(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 64] = ext_call.return_data[0]
            mem[mem[64] + 96] = ext_call.return_data[32]
            emit NewBatchMint(Array(len=_131, data=mem[mem[64] + 192 len (32 * _131) + (32 * ('cd', 68).length) + 32]), (32 * _131) + 192, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], msg.sender);
    else:
        uint8(stor7[cd[4]].field_256) = 1
        mem[0] = cd[4]
        require uint8(stor7[cd[4]].field_256) <= 3
        if uint8(stor7[cd[4]].field_256) != 1:
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
            require ext_code.size(stor1)
            call stor1.transferFrom(address arg1, address arg2, uint256 arg3) with:
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
            require ext_code.size(stor2)
            call stor2.0x5e3261d0 with:
                 gas gas_remaining wei
                args msg.sender, cd[4], cd[36] << 248, Array(len=('cd', 68).length, data=mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]), sub_075dc415
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _130 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + return_data.size + 96 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
            _134 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
            require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
            mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
            require return_data.size >= _130 + (32 * _134) + 32
            mem[(4 * ceil32(return_data.size)) + 128 len 32 * _134] = mem[(2 * ceil32(return_data.size)) + _130 + 128 len 32 * _134]
            _166 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = _134
            mem[mem[64] + 192 len 32 * _134] = mem[(4 * ceil32(return_data.size)) + 128 len 32 * _134]
            mem[mem[64] + 32] = (32 * _134) + 192
            mem[mem[64] + (32 * _134) + 192] = ('cd', 68).length
            idx = 0
            s = cd[68] + 36
            t = mem[64] + (32 * _134) + 224
            while idx < ('cd', 68).length:
                require cd[s] == uint16(cd[s])
                mem[t] = uint16(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_166 + 64] = ext_call.return_data[0]
            mem[_166 + 96] = ext_call.return_data[32]
            mem[_166 + 128] = ext_call.return_data[64]
            emit NewBatchMint(address arg1, uint256[] arg2, uint16[] arg3, uint256 arg4, uint256 arg5, uint256 arg6):
                              mem[mem[64] len _166 + (32 * _134) + (32 * ('cd', 68).length) + -mem[64] + 224],
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
            require ext_code.size(stor1)
            call stor1.transferFrom(address arg1, address arg2, uint256 arg3) with:
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
            require ext_code.size(stor2)
            call stor2.0x5e3261d0 with:
                 gas gas_remaining wei
                args msg.sender, cd[4], cd[36] << 248, Array(len=('cd', 68).length, data=mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]), sub_075dc415
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _129 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + return_data.size + 96 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
            _133 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
            require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307()
            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
            mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
            require return_data.size >= _129 + (32 * _133) + 32
            mem[(4 * ceil32(return_data.size)) + 128 len 32 * _133] = mem[(2 * ceil32(return_data.size)) + _129 + 128 len 32 * _133]
            _165 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = _133
            mem[mem[64] + 192 len 32 * _133] = mem[(4 * ceil32(return_data.size)) + 128 len 32 * _133]
            mem[mem[64] + 32] = (32 * _133) + 192
            mem[mem[64] + (32 * _133) + 192] = ('cd', 68).length
            idx = 0
            s = cd[68] + 36
            t = mem[64] + (32 * _133) + 224
            while idx < ('cd', 68).length:
                require cd[s] == uint16(cd[s])
                mem[t] = uint16(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_165 + 64] = ext_call.return_data[0]
            mem[_165 + 96] = ext_call.return_data[32]
            mem[_165 + 128] = ext_call.return_data[64]
            emit NewBatchMint(address arg1, uint256[] arg2, uint16[] arg3, uint256 arg4, uint256 arg5, uint256 arg6):
                              mem[mem[64] len _165 + (32 * _133) + (32 * ('cd', 68).length) + -mem[64] + 224],
                              msg.sender,
}

function sub_f633261a(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require uint8(stor7[arg1].field_256) <= 3
    if uint8(stor7[arg1].field_256) == 3:
        revert with 0, 'All done already.'
    require uint8(stor7[arg1].field_256) <= 3
    if uint8(stor7[arg1].field_256) != 2:
        revert with 0, 'Draw numbers first'
    if arg2 + stor4 < stor4:
        revert with 0, 'SafeMath: addition overflow'
    mem[0] = arg1
    mem[32] = 7
    if uint256(stor7[arg1].field_2560) + 1 < uint256(stor7[arg1].field_2560):
        revert with 0, 'SafeMath: addition overflow'
    if arg2 + stor4 <= uint256(stor7[arg1].field_2560) + 1:
        require sub_075dc415 <= test266151307()
        mem[96] = sub_075dc415
        mem[64] = (32 * sub_075dc415) + 128
        if not sub_075dc415:
            idx = stor4
            while idx < arg2 + stor4:
                mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = idx
                require ext_code.size(stor2)
                staticcall stor2.0x9839eafd with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _255 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _270 = mem[_255]
                require mem[_255] <= test266151307()
                require _255 + return_data.size > _255 + mem[_255] + 31
                _297 = mem[_255 + mem[_255]]
                require mem[_255 + mem[_255]] <= test266151307()
                require (32 * mem[_255 + mem[_255]]) + 32 >= 0 and _255 + ceil32(return_data.size) + (32 * mem[_255 + mem[_255]]) + 32 <= test266151307()
                mem[64] = _255 + ceil32(return_data.size) + (32 * mem[_255 + mem[_255]]) + 32
                mem[_255 + ceil32(return_data.size)] = _297
                require return_data.size >= _270 + (32 * _297) + 32
                t = _255 + _270 + 32
                u = _255 + ceil32(return_data.size) + 32
                s = 0
                while s < _297:
                    require mem[t] == mem[t + 30 len 2]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                mem[0] = arg1
                mem[32] = 7
                _450 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor7[arg1].field_1792)) + 32
                mem[_450] = uint256(stor7[arg1].field_1792)
                if not uint256(stor7[arg1].field_1792):
                    s = 0
                    t = 0
                    while s < uint256(stor7[arg1].field_1792):
                        require s < uint256(stor7[arg1].field_1792)
                        require s < _297
                        if mem[(32 * s) + _255 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _450 + 62 len 2]:
                            s = s + 1
                            t = t
                            continue 
                        s = s + 1
                        t = t + 1
                        continue 
                else:
                    mem[0] = sha3(arg1, 7) + 7
                    mem[_450 + 32] = uint16(stor7[arg1][7].field_0)
                    if (32 * uint256(stor7[arg1].field_1792)) + 32 <= 64:
                        s = 0
                        t = 0
                        while s < uint256(stor7[arg1].field_1792):
                            require s < uint256(stor7[arg1].field_1792)
                            require s < _297
                            if mem[(32 * s) + _255 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _450 + 62 len 2]:
                                s = s + 1
                                t = t
                                continue 
                            s = s + 1
                            t = t + 1
                            continue 
                    else:
                        mem[_450 + 64] = uint16(stor7[arg1][7].field_16)
                        s = _450 + 64
                        t = 2
                        while _450 + (32 * uint256(stor7[arg1].field_1792)) > s:
                            mem[s + 32] = uint16(stor7[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                            s = s + 32
                            t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                            continue 
                        s = 0
                        t = 0
                        while s < uint256(stor7[arg1].field_1792):
                            require s < uint256(stor7[arg1].field_1792)
                            require s < mem[_255 + ceil32(return_data.size)]
                            if mem[(32 * s) + _255 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _450 + 62 len 2]:
                                s = s + 1
                                t = t
                                continue 
                            s = s + 1
                            t = t + 1
                            continue 
                if uint8(t) > 1:
                    require uint8(t - 1) < mem[96]
                    mem[(32 * uint8(t - 1)) + 128] = uint16(mem[(32 * uint8(t - 1)) + 128] + 1)
                idx = idx + 1
                continue 
        else:
            mem[128 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
            idx = stor4
            while idx < arg2 + stor4:
                mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = idx
                require ext_code.size(stor2)
                staticcall stor2.0x9839eafd with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _258 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _274 = mem[_258]
                require mem[_258] <= test266151307()
                require _258 + return_data.size > _258 + mem[_258] + 31
                _302 = mem[_258 + mem[_258]]
                require mem[_258 + mem[_258]] <= test266151307()
                require (32 * mem[_258 + mem[_258]]) + 32 >= 0 and _258 + ceil32(return_data.size) + (32 * mem[_258 + mem[_258]]) + 32 <= test266151307()
                mem[64] = _258 + ceil32(return_data.size) + (32 * mem[_258 + mem[_258]]) + 32
                mem[_258 + ceil32(return_data.size)] = _302
                require return_data.size >= _274 + (32 * _302) + 32
                t = _258 + _274 + 32
                u = _258 + ceil32(return_data.size) + 32
                s = 0
                while s < _302:
                    require mem[t] == mem[t + 30 len 2]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                mem[0] = arg1
                mem[32] = 7
                _454 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor7[arg1].field_1792)) + 32
                mem[_454] = uint256(stor7[arg1].field_1792)
                if not uint256(stor7[arg1].field_1792):
                    s = 0
                    t = 0
                    while s < uint256(stor7[arg1].field_1792):
                        require s < uint256(stor7[arg1].field_1792)
                        require s < _302
                        if mem[(32 * s) + _258 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _454 + 62 len 2]:
                            s = s + 1
                            t = t
                            continue 
                        s = s + 1
                        t = t + 1
                        continue 
                else:
                    mem[0] = sha3(arg1, 7) + 7
                    mem[_454 + 32] = uint16(stor7[arg1][7].field_0)
                    if (32 * uint256(stor7[arg1].field_1792)) + 32 <= 64:
                        s = 0
                        t = 0
                        while s < uint256(stor7[arg1].field_1792):
                            require s < uint256(stor7[arg1].field_1792)
                            require s < _302
                            if mem[(32 * s) + _258 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _454 + 62 len 2]:
                                s = s + 1
                                t = t
                                continue 
                            s = s + 1
                            t = t + 1
                            continue 
                    else:
                        mem[_454 + 64] = uint16(stor7[arg1][7].field_16)
                        s = _454 + 64
                        t = 2
                        while _454 + (32 * uint256(stor7[arg1].field_1792)) > s:
                            mem[s + 32] = uint16(stor7[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                            s = s + 32
                            t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                            continue 
                        s = 0
                        t = 0
                        while s < uint256(stor7[arg1].field_1792):
                            require s < uint256(stor7[arg1].field_1792)
                            require s < mem[_258 + ceil32(return_data.size)]
                            if mem[(32 * s) + _258 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _454 + 62 len 2]:
                                s = s + 1
                                t = t
                                continue 
                            s = s + 1
                            t = t + 1
                            continue 
                if uint8(t) > 1:
                    require uint8(t - 1) < mem[96]
                    mem[(32 * uint8(t - 1)) + 128] = uint16(mem[(32 * uint8(t - 1)) + 128] + 1)
                idx = idx + 1
                continue 
        idx = 0
        while uint8(idx) < sub_075dc415:
            require uint8(idx) < mem[96]
            require uint8(idx) < uint256(stor7[arg1].field_2048)
            if uint16(mem[(32 * uint8(idx)) + 128] + stor((Mask(4, 4, idx) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor7', 7))))[uint8(idx)]) < stor((Mask(4, 4, idx) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor7', 7))))[uint8(idx)]:
                revert with 0, 'SafeMath: addition overflow'
            mem[32] = 7
            require uint8(idx) < uint256(stor7[arg1].field_2048)
            mem[0] = sha3(arg1, 7) + 8
            uint256(stor[(uint8(idx) / 16) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor7', 7)))].field_0) = uint16(mem[(32 * uint8(idx)) + 128] + stor((Mask(4, 4, idx) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor7', 7))))[uint8(idx)]) * 256^(2 * idx % 16) or !(65535 * 256^(2 * idx % 16)) and uint256(stor[(uint8(idx) / 16) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor7', 7)))].field_0)
            idx = idx + 1
            continue 
        stor4 += arg2
        if uint256(stor7[arg1].field_2560) + 1 < uint256(stor7[arg1].field_2560):
            revert with 0, 'SafeMath: addition overflow'
        if arg2 + stor4 == uint256(stor7[arg1].field_2560) + 1:
            uint8(stor7[arg1].field_256) = 3
            idx = 1
            s = 0
            while uint16(idx) < uint256(stor7[arg1].field_1024):
                require uint16(idx) < uint256(stor7[arg1].field_2048)
                if stor((Mask(12, 4, idx) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor7', 7))))[uint8(idx)] <= 0:
                    mem[0] = arg1
                    mem[32] = 7
                    idx = idx + 1
                    s = s
                    continue 
                require uint16(idx) < uint256(stor7[arg1].field_1024)
                if stor(('array', 4, ('map', ('param', 'arg1'), ('name', 'stor7', 7))) + (Mask(11, 5, idx) >> 5))[uint8(idx)] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg1
                mem[32] = 7
                idx = idx + 1
                s = stor(('array', 4, ('map', ('param', 'arg1'), ('name', 'stor7', 7))) + (Mask(11, 5, idx) >> 5))[uint8(idx)] + s
                continue 
            if not uint256(stor7[arg1].field_512):
                if stor5 < stor5:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if s * uint256(stor7[arg1].field_512) / uint256(stor7[arg1].field_512) != s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (s * uint256(stor7[arg1].field_512) / 100) + stor5 < stor5:
                    revert with 0, 'SafeMath: addition overflow'
                stor5 += s * uint256(stor7[arg1].field_512) / 100
    else:
        mem[0] = arg1
        mem[32] = 7
        if uint256(stor7[arg1].field_2560) + 1 < uint256(stor7[arg1].field_2560):
            revert with 0, 'SafeMath: addition overflow'
        require sub_075dc415 <= test266151307()
        mem[96] = sub_075dc415
        mem[64] = (32 * sub_075dc415) + 128
        if not sub_075dc415:
            idx = stor4
            while idx < uint256(stor7[arg1].field_2560) + 1:
                mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = idx
                require ext_code.size(stor2)
                staticcall stor2.0x9839eafd with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _249 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _262 = mem[_249]
                require mem[_249] <= test266151307()
                require _249 + return_data.size > _249 + mem[_249] + 31
                _287 = mem[_249 + mem[_249]]
                require mem[_249 + mem[_249]] <= test266151307()
                require (32 * mem[_249 + mem[_249]]) + 32 >= 0 and _249 + ceil32(return_data.size) + (32 * mem[_249 + mem[_249]]) + 32 <= test266151307()
                mem[64] = _249 + ceil32(return_data.size) + (32 * mem[_249 + mem[_249]]) + 32
                mem[_249 + ceil32(return_data.size)] = _287
                require return_data.size >= _262 + (32 * _287) + 32
                t = _249 + _262 + 32
                u = _249 + ceil32(return_data.size) + 32
                s = 0
                while s < _287:
                    require mem[t] == mem[t + 30 len 2]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                mem[0] = arg1
                mem[32] = 7
                _442 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor7[arg1].field_1792)) + 32
                mem[_442] = uint256(stor7[arg1].field_1792)
                if not uint256(stor7[arg1].field_1792):
                    s = 0
                    t = 0
                    while s < uint256(stor7[arg1].field_1792):
                        require s < uint256(stor7[arg1].field_1792)
                        require s < _287
                        if mem[(32 * s) + _249 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _442 + 62 len 2]:
                            s = s + 1
                            t = t
                            continue 
                        s = s + 1
                        t = t + 1
                        continue 
                else:
                    mem[0] = sha3(arg1, 7) + 7
                    mem[_442 + 32] = uint16(stor7[arg1][7].field_0)
                    if (32 * uint256(stor7[arg1].field_1792)) + 32 <= 64:
                        s = 0
                        t = 0
                        while s < uint256(stor7[arg1].field_1792):
                            require s < uint256(stor7[arg1].field_1792)
                            require s < _287
                            if mem[(32 * s) + _249 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _442 + 62 len 2]:
                                s = s + 1
                                t = t
                                continue 
                            s = s + 1
                            t = t + 1
                            continue 
                    else:
                        mem[_442 + 64] = uint16(stor7[arg1][7].field_16)
                        s = _442 + 64
                        t = 2
                        while _442 + (32 * uint256(stor7[arg1].field_1792)) > s:
                            mem[s + 32] = uint16(stor7[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                            s = s + 32
                            t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                            continue 
                        s = 0
                        t = 0
                        while s < uint256(stor7[arg1].field_1792):
                            require s < uint256(stor7[arg1].field_1792)
                            require s < mem[_249 + ceil32(return_data.size)]
                            if mem[(32 * s) + _249 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _442 + 62 len 2]:
                                s = s + 1
                                t = t
                                continue 
                            s = s + 1
                            t = t + 1
                            continue 
                if uint8(t) > 1:
                    require uint8(t - 1) < mem[96]
                    mem[(32 * uint8(t - 1)) + 128] = uint16(mem[(32 * uint8(t - 1)) + 128] + 1)
                idx = idx + 1
                continue 
        else:
            mem[128 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
            idx = stor4
            while idx < uint256(stor7[arg1].field_2560) + 1:
                mem[mem[64]] = 0x9839eafd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = idx
                require ext_code.size(stor2)
                staticcall stor2.0x9839eafd with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _252 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _266 = mem[_252]
                require mem[_252] <= test266151307()
                require _252 + return_data.size > _252 + mem[_252] + 31
                _292 = mem[_252 + mem[_252]]
                require mem[_252 + mem[_252]] <= test266151307()
                require (32 * mem[_252 + mem[_252]]) + 32 >= 0 and _252 + ceil32(return_data.size) + (32 * mem[_252 + mem[_252]]) + 32 <= test266151307()
                mem[64] = _252 + ceil32(return_data.size) + (32 * mem[_252 + mem[_252]]) + 32
                mem[_252 + ceil32(return_data.size)] = _292
                require return_data.size >= _266 + (32 * _292) + 32
                t = _252 + _266 + 32
                u = _252 + ceil32(return_data.size) + 32
                s = 0
                while s < _292:
                    require mem[t] == mem[t + 30 len 2]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                mem[0] = arg1
                mem[32] = 7
                _446 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor7[arg1].field_1792)) + 32
                mem[_446] = uint256(stor7[arg1].field_1792)
                if not uint256(stor7[arg1].field_1792):
                    s = 0
                    t = 0
                    while s < uint256(stor7[arg1].field_1792):
                        require s < uint256(stor7[arg1].field_1792)
                        require s < _292
                        if mem[(32 * s) + _252 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _446 + 62 len 2]:
                            s = s + 1
                            t = t
                            continue 
                        s = s + 1
                        t = t + 1
                        continue 
                else:
                    mem[0] = sha3(arg1, 7) + 7
                    mem[_446 + 32] = uint16(stor7[arg1][7].field_0)
                    if (32 * uint256(stor7[arg1].field_1792)) + 32 <= 64:
                        s = 0
                        t = 0
                        while s < uint256(stor7[arg1].field_1792):
                            require s < uint256(stor7[arg1].field_1792)
                            require s < _292
                            if mem[(32 * s) + _252 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _446 + 62 len 2]:
                                s = s + 1
                                t = t
                                continue 
                            s = s + 1
                            t = t + 1
                            continue 
                    else:
                        mem[_446 + 64] = uint16(stor7[arg1][7].field_16)
                        s = _446 + 64
                        t = 2
                        while _446 + (32 * uint256(stor7[arg1].field_1792)) > s:
                            mem[s + 32] = uint16(stor7[arg1][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                            s = s + 32
                            t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                            continue 
                        s = 0
                        t = 0
                        while s < uint256(stor7[arg1].field_1792):
                            require s < uint256(stor7[arg1].field_1792)
                            require s < mem[_252 + ceil32(return_data.size)]
                            if mem[(32 * s) + _252 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _446 + 62 len 2]:
                                s = s + 1
                                t = t
                                continue 
                            s = s + 1
                            t = t + 1
                            continue 
                if uint8(t) > 1:
                    require uint8(t - 1) < mem[96]
                    mem[(32 * uint8(t - 1)) + 128] = uint16(mem[(32 * uint8(t - 1)) + 128] + 1)
                idx = idx + 1
                continue 
        idx = 0
        while uint8(idx) < sub_075dc415:
            require uint8(idx) < mem[96]
            require uint8(idx) < uint256(stor7[arg1].field_2048)
            if uint16(mem[(32 * uint8(idx)) + 128] + stor((Mask(4, 4, idx) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor7', 7))))[uint8(idx)]) < stor((Mask(4, 4, idx) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor7', 7))))[uint8(idx)]:
                revert with 0, 'SafeMath: addition overflow'
            mem[32] = 7
            require uint8(idx) < uint256(stor7[arg1].field_2048)
            mem[0] = sha3(arg1, 7) + 8
            uint256(stor[(uint8(idx) / 16) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor7', 7)))].field_0) = uint16(mem[(32 * uint8(idx)) + 128] + stor((Mask(4, 4, idx) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor7', 7))))[uint8(idx)]) * 256^(2 * idx % 16) or !(65535 * 256^(2 * idx % 16)) and uint256(stor[(uint8(idx) / 16) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor7', 7)))].field_0)
            idx = idx + 1
            continue 
        stor4 = uint256(stor7[arg1].field_2560) + 1
        if uint256(stor7[arg1].field_2560) + 1 < uint256(stor7[arg1].field_2560):
            revert with 0, 'SafeMath: addition overflow'
        if uint256(stor7[arg1].field_2560) + 1 == uint256(stor7[arg1].field_2560) + 1:
            uint8(stor7[arg1].field_256) = 3
            idx = 1
            s = 0
            while uint16(idx) < uint256(stor7[arg1].field_1024):
                require uint16(idx) < uint256(stor7[arg1].field_2048)
                if stor((Mask(12, 4, idx) >> 4) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'stor7', 7))))[uint8(idx)] <= 0:
                    mem[0] = arg1
                    mem[32] = 7
                    idx = idx + 1
                    s = s
                    continue 
                require uint16(idx) < uint256(stor7[arg1].field_1024)
                if stor(('array', 4, ('map', ('param', 'arg1'), ('name', 'stor7', 7))) + (Mask(11, 5, idx) >> 5))[uint8(idx)] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg1
                mem[32] = 7
                idx = idx + 1
                s = stor(('array', 4, ('map', ('param', 'arg1'), ('name', 'stor7', 7))) + (Mask(11, 5, idx) >> 5))[uint8(idx)] + s
                continue 
            if not uint256(stor7[arg1].field_512):
                if stor5 < stor5:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if s * uint256(stor7[arg1].field_512) / uint256(stor7[arg1].field_512) != s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (s * uint256(stor7[arg1].field_512) / 100) + stor5 < stor5:
                    revert with 0, 'SafeMath: addition overflow'
                stor5 += s * uint256(stor7[arg1].field_512) / 100
}

function drawWinningNumbers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint256(stor7[arg1].field_1536) > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot set winning numbers during lottery'
    require uint8(stor7[arg1].field_256) <= 3
    if not uint8(stor7[arg1].field_256):
        uint8(stor7[arg1].field_256) = 2
        emit RequestNumbers(arg1);
        require ext_code.size(stor2)
        staticcall stor2.0xc4e41b22 with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 128] = block.difficulty
        mem[ceil32(return_data.size) + 160] = block.timestamp
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 96
        mem[0] = arg1
        mem[32] = 7
        require uint8(stor7[arg1].field_256) <= 3
        if uint8(stor7[arg1].field_256) != 2:
            revert with 0, 'Draw numbers first'
        require sub_075dc415 <= test266151307()
        mem[ceil32(return_data.size) + 224] = sub_075dc415
        mem[64] = ceil32(return_data.size) + (32 * sub_075dc415) + 256
        if not sub_075dc415:
            idx = 0
            while idx < sub_075dc415:
                mem[mem[64] + 32] = sha3(block.difficulty, block.timestamp, ext_call.return_data[0])
                mem[mem[64] + 64] = idx
                _241 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if maxRange <= 0:
                    revert with 0, 'SafeMath: modulo by zero'
                require maxRange
                require idx < mem[ceil32(return_data.size) + 224]
                mem[(32 * idx) + ceil32(return_data.size) + 256] = uint16(sha3(mem[_241 + 32 len mem[_241]]) % maxRange)
                idx = idx + 1
                continue 
            mem[32] = 7
            uint256(stor7[arg1].field_1792) = mem[ceil32(return_data.size) + 224]
            mem[0] = sha3(arg1, 7) + 7
            if not mem[ceil32(return_data.size) + 224]:
                s = sha3(sha3(arg1, 7) + 7)
                while sha3(sha3(arg1, 7) + 7) + (uint256(stor7[arg1].field_1792) + 15 / 16) > sub_075dc415:
                    uint16(uint8(stor6.field_160)) = 0
                    s = sub_075dc415 + 1
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.0xc4e41b22 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _428 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _432 = mem[_428]
                mem[0] = arg1
                mem[32] = 7
                uint256(stor7[arg1].field_2560) = _432
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _464 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _476 = mem[_464]
                if stor5 > mem[_464]:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[0] = arg1
                mem[32] = 7
                uint256(stor7[arg1].field_512) = _476 - stor5
                require ext_code.size(stor2)
                staticcall stor2.0xc4e41b22 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _512 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                emit LotteryClose(arg1, mem[_512]);
            else:
                s = 0
                idx = ceil32(return_data.size) + 256
                while ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + 224]) + 256 > idx:
                    uint256(stor7[arg1][7].field_0) = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and uint256(stor7[arg1][7].field_0)
                    s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                    idx = idx + 32
                    continue 
                idx = floor32(mem[ceil32(return_data.size) + 224]) >> 4
                s = sha3(sha3(arg1, 7) + 7)
                while idx:
                    uint256(stor[s]) = !(65535 * 256^idx) and uint256(stor[s])
                    idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                    s = (idx + 3 / 32) + s
                    continue 
                idx = (floor32(mem[ceil32(return_data.size) + 224]) >> 4) + Mask(254, 1, None + -(floor32(mem[ceil32(return_data.size) + 224]) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(mem[ceil32(return_data.size) + 224]) >> 4) + 3) >> 1
                while uint256(stor7[arg1].field_1792) + 15 / 16 > idx:
                    uint16(stor7[arg1][idx + 7].field_0) = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.0xc4e41b22 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _644 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _648 = mem[_644]
                mem[0] = arg1
                mem[32] = 7
                uint256(stor7[arg1].field_2560) = _648
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _664 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _668 = mem[_664]
                if stor5 > mem[_664]:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[0] = arg1
                mem[32] = 7
                uint256(stor7[arg1].field_512) = _668 - stor5
                require ext_code.size(stor2)
                staticcall stor2.0xc4e41b22 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _692 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                emit LotteryClose(arg1, mem[_692]);
        else:
            mem[ceil32(return_data.size) + 256 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
            idx = 0
            while idx < sub_075dc415:
                mem[mem[64] + 32] = sha3(block.difficulty, block.timestamp, ext_call.return_data[0])
                mem[mem[64] + 64] = idx
                _245 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if maxRange <= 0:
                    revert with 0, 'SafeMath: modulo by zero'
                require maxRange
                require idx < mem[ceil32(return_data.size) + 224]
                mem[(32 * idx) + ceil32(return_data.size) + 256] = uint16(sha3(mem[_245 + 32 len mem[_245]]) % maxRange)
                idx = idx + 1
                continue 
            mem[32] = 7
            uint256(stor7[arg1].field_1792) = mem[ceil32(return_data.size) + 224]
            mem[0] = sha3(arg1, 7) + 7
            if not mem[ceil32(return_data.size) + 224]:
                s = sha3(sha3(arg1, 7) + 7)
                while sha3(sha3(arg1, 7) + 7) + (uint256(stor7[arg1].field_1792) + 15 / 16) > sub_075dc415:
                    uint16(uint8(stor6.field_160)) = 0
                    s = sub_075dc415 + 1
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.0xc4e41b22 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _429 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _433 = mem[_429]
                mem[0] = arg1
                mem[32] = 7
                uint256(stor7[arg1].field_2560) = _433
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _466 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _477 = mem[_466]
                if stor5 > mem[_466]:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[0] = arg1
                mem[32] = 7
                uint256(stor7[arg1].field_512) = _477 - stor5
                require ext_code.size(stor2)
                staticcall stor2.0xc4e41b22 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _513 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                emit LotteryClose(arg1, mem[_513]);
            else:
                s = 0
                idx = ceil32(return_data.size) + 256
                while ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + 224]) + 256 > idx:
                    uint256(stor7[arg1][7].field_0) = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and uint256(stor7[arg1][7].field_0)
                    s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                    idx = idx + 32
                    continue 
                idx = floor32(mem[ceil32(return_data.size) + 224]) >> 4
                s = sha3(sha3(arg1, 7) + 7)
                while idx:
                    uint256(stor[s]) = !(65535 * 256^idx) and uint256(stor[s])
                    idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                    s = (idx + 3 / 32) + s
                    continue 
                idx = (floor32(mem[ceil32(return_data.size) + 224]) >> 4) + Mask(254, 1, None + -(floor32(mem[ceil32(return_data.size) + 224]) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(mem[ceil32(return_data.size) + 224]) >> 4) + 3) >> 1
                while uint256(stor7[arg1].field_1792) + 15 / 16 > idx:
                    uint16(stor7[arg1][idx + 7].field_0) = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.0xc4e41b22 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _645 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _649 = mem[_645]
                mem[0] = arg1
                mem[32] = 7
                uint256(stor7[arg1].field_2560) = _649
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _665 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _669 = mem[_665]
                if stor5 > mem[_665]:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[0] = arg1
                mem[32] = 7
                uint256(stor7[arg1].field_512) = _669 - stor5
                require ext_code.size(stor2)
                staticcall stor2.0xc4e41b22 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _693 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                emit LotteryClose(arg1, mem[_693]);
    else:
        require uint8(stor7[arg1].field_256) <= 3
        if uint8(stor7[arg1].field_256) != 1:
            revert with 0, 'Lottery State incorrect for draw'
        uint8(stor7[arg1].field_256) = 2
        emit RequestNumbers(arg1);
        require ext_code.size(stor2)
        staticcall stor2.0xc4e41b22 with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 128] = block.difficulty
        mem[ceil32(return_data.size) + 160] = block.timestamp
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 96
        mem[0] = arg1
        mem[32] = 7
        require uint8(stor7[arg1].field_256) <= 3
        if uint8(stor7[arg1].field_256) != 2:
            revert with 0, 'Draw numbers first'
        require sub_075dc415 <= test266151307()
        mem[ceil32(return_data.size) + 224] = sub_075dc415
        mem[64] = ceil32(return_data.size) + (32 * sub_075dc415) + 256
        if not sub_075dc415:
            idx = 0
            while idx < sub_075dc415:
                mem[mem[64] + 32] = sha3(block.difficulty, block.timestamp, ext_call.return_data[0])
                mem[mem[64] + 64] = idx
                _249 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if maxRange <= 0:
                    revert with 0, 'SafeMath: modulo by zero'
                require maxRange
                require idx < mem[ceil32(return_data.size) + 224]
                mem[(32 * idx) + ceil32(return_data.size) + 256] = uint16(sha3(mem[_249 + 32 len mem[_249]]) % maxRange)
                idx = idx + 1
                continue 
            mem[32] = 7
            uint256(stor7[arg1].field_1792) = mem[ceil32(return_data.size) + 224]
            mem[0] = sha3(arg1, 7) + 7
            if not mem[ceil32(return_data.size) + 224]:
                s = sha3(sha3(arg1, 7) + 7)
                while sha3(sha3(arg1, 7) + 7) + (uint256(stor7[arg1].field_1792) + 15 / 16) > sub_075dc415:
                    uint16(uint8(stor6.field_160)) = 0
                    s = sub_075dc415 + 1
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.0xc4e41b22 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _430 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _434 = mem[_430]
                mem[0] = arg1
                mem[32] = 7
                uint256(stor7[arg1].field_2560) = _434
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _468 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _478 = mem[_468]
                if stor5 > mem[_468]:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[0] = arg1
                mem[32] = 7
                uint256(stor7[arg1].field_512) = _478 - stor5
                require ext_code.size(stor2)
                staticcall stor2.0xc4e41b22 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _514 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                emit LotteryClose(arg1, mem[_514]);
            else:
                s = 0
                idx = ceil32(return_data.size) + 256
                while ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + 224]) + 256 > idx:
                    uint256(stor7[arg1][7].field_0) = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and uint256(stor7[arg1][7].field_0)
                    s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                    idx = idx + 32
                    continue 
                idx = floor32(mem[ceil32(return_data.size) + 224]) >> 4
                s = sha3(sha3(arg1, 7) + 7)
                while idx:
                    uint256(stor[s]) = !(65535 * 256^idx) and uint256(stor[s])
                    idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                    s = (idx + 3 / 32) + s
                    continue 
                idx = (floor32(mem[ceil32(return_data.size) + 224]) >> 4) + Mask(254, 1, None + -(floor32(mem[ceil32(return_data.size) + 224]) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(mem[ceil32(return_data.size) + 224]) >> 4) + 3) >> 1
                while uint256(stor7[arg1].field_1792) + 15 / 16 > idx:
                    uint16(stor7[arg1][idx + 7].field_0) = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.0xc4e41b22 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _646 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _650 = mem[_646]
                mem[0] = arg1
                mem[32] = 7
                uint256(stor7[arg1].field_2560) = _650
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _666 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _670 = mem[_666]
                if stor5 > mem[_666]:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[0] = arg1
                mem[32] = 7
                uint256(stor7[arg1].field_512) = _670 - stor5
                require ext_code.size(stor2)
                staticcall stor2.0xc4e41b22 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _694 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                emit LotteryClose(arg1, mem[_694]);
        else:
            mem[ceil32(return_data.size) + 256 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
            idx = 0
            while idx < sub_075dc415:
                mem[mem[64] + 32] = sha3(block.difficulty, block.timestamp, ext_call.return_data[0])
                mem[mem[64] + 64] = idx
                _253 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if maxRange <= 0:
                    revert with 0, 'SafeMath: modulo by zero'
                require maxRange
                require idx < mem[ceil32(return_data.size) + 224]
                mem[(32 * idx) + ceil32(return_data.size) + 256] = uint16(sha3(mem[_253 + 32 len mem[_253]]) % maxRange)
                idx = idx + 1
                continue 
            mem[32] = 7
            uint256(stor7[arg1].field_1792) = mem[ceil32(return_data.size) + 224]
            mem[0] = sha3(arg1, 7) + 7
            if not mem[ceil32(return_data.size) + 224]:
                s = sha3(sha3(arg1, 7) + 7)
                while sha3(sha3(arg1, 7) + 7) + (uint256(stor7[arg1].field_1792) + 15 / 16) > sub_075dc415:
                    uint16(uint8(stor6.field_160)) = 0
                    s = sub_075dc415 + 1
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.0xc4e41b22 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _431 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _435 = mem[_431]
                mem[0] = arg1
                mem[32] = 7
                uint256(stor7[arg1].field_2560) = _435
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _470 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _479 = mem[_470]
                if stor5 > mem[_470]:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[0] = arg1
                mem[32] = 7
                uint256(stor7[arg1].field_512) = _479 - stor5
                require ext_code.size(stor2)
                staticcall stor2.0xc4e41b22 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _515 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                emit LotteryClose(arg1, mem[_515]);
            else:
                s = 0
                idx = ceil32(return_data.size) + 256
                while ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + 224]) + 256 > idx:
                    uint256(stor7[arg1][7].field_0) = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and uint256(stor7[arg1][7].field_0)
                    s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                    idx = idx + 32
                    continue 
                idx = floor32(mem[ceil32(return_data.size) + 224]) >> 4
                s = sha3(sha3(arg1, 7) + 7)
                while idx:
                    uint256(stor[s]) = !(65535 * 256^idx) and uint256(stor[s])
                    idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
                    s = (idx + 3 / 32) + s
                    continue 
                idx = (floor32(mem[ceil32(return_data.size) + 224]) >> 4) + Mask(254, 1, None + -(floor32(mem[ceil32(return_data.size) + 224]) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(mem[ceil32(return_data.size) + 224]) >> 4) + 3) >> 1
                while uint256(stor7[arg1].field_1792) + 15 / 16 > idx:
                    uint16(stor7[arg1][idx + 7].field_0) = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.0xc4e41b22 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _647 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _651 = mem[_647]
                mem[0] = arg1
                mem[32] = 7
                uint256(stor7[arg1].field_2560) = _651
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _667 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _671 = mem[_667]
                if stor5 > mem[_667]:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[0] = arg1
                mem[32] = 7
                uint256(stor7[arg1].field_512) = _671 - stor5
                require ext_code.size(stor2)
                staticcall stor2.0xc4e41b22 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _695 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                emit LotteryClose(arg1, mem[_695]);
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
    mem[32] = 7
    mem[448] = uint256(stor7[arg1].field_0)
    require uint8(stor7[arg1].field_256) <= 3
    mem[480] = uint8(stor7[arg1].field_256)
    mem[512] = uint256(stor7[arg1].field_512)
    mem[544] = uint256(stor7[arg1].field_768)
    mem[800] = uint256(stor7[arg1].field_1024)
    if not uint256(stor7[arg1].field_1024):
        mem[576] = 800
        mem[608] = uint256(stor7[arg1].field_1280)
        mem[640] = uint256(stor7[arg1].field_1536)
        mem[(32 * uint256(stor7[arg1].field_1024)) + 832] = uint256(stor7[arg1].field_1792)
        if not uint256(stor7[arg1].field_1792):
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 864] = uint256(stor7[arg1].field_2048)
            if not uint256(stor7[arg1].field_2048):
                mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 896] = 32
                mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 928] = uint256(stor7[arg1].field_0)
                require uint8(stor7[arg1].field_256) < 4
                mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 960] = uint8(stor7[arg1].field_256)
                mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 992] = uint256(stor7[arg1].field_512)
                mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1024] = uint256(stor7[arg1].field_768)
                mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1056] = 352
                mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1280] = uint256(stor7[arg1].field_1024)
                idx = 0
                s = 832
                t = (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1312
                while idx < uint256(stor7[arg1].field_1024):
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1088] = uint256(stor7[arg1].field_1280)
                mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1120] = uint256(stor7[arg1].field_1536)
                mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1152] = (32 * uint256(stor7[arg1].field_1024)) + 384
                mem[(64 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1312] = uint256(stor7[arg1].field_1792)
                idx = 0
                s = (32 * uint256(stor7[arg1].field_1024)) + 864
                t = (64 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1344
                while idx < uint256(stor7[arg1].field_1792):
                    mem[t] = mem[s + 30 len 2]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1184] = (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 416
                _338 = mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 864]
                mem[(64 * uint256(stor7[arg1].field_1024)) + (64 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1344] = mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 864]
                idx = 0
                s = (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 896
                t = (64 * uint256(stor7[arg1].field_1024)) + (64 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1376
                while idx < _338:
                    mem[t] = mem[s + 30 len 2]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1216] = uint256(stor7[arg1].field_2304)
                mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1248] = uint256(stor7[arg1].field_2560)
                return memory
                  from (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 896
                   len (96 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * _338) + 480
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 896] = uint16(stor7[arg1][8].field_0)
            idx = (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 896
            s = 0
            while (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 864 > idx:
                mem[idx + 32] = uint16(stor7[arg1][8].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
                idx = idx + 32
                s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
                continue 
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 896] = 32
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 928] = uint256(stor7[arg1].field_0)
            require uint8(stor7[arg1].field_256) < 4
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 960] = uint8(stor7[arg1].field_256)
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 992] = uint256(stor7[arg1].field_512)
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1024] = uint256(stor7[arg1].field_768)
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1056] = 352
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1280] = uint256(stor7[arg1].field_1024)
            idx = 0
            s = 832
            t = (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1312
            while idx < uint256(stor7[arg1].field_1024):
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1088] = uint256(stor7[arg1].field_1280)
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1120] = uint256(stor7[arg1].field_1536)
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1152] = (32 * uint256(stor7[arg1].field_1024)) + 384
            mem[(64 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1312] = uint256(stor7[arg1].field_1792)
            idx = 0
            s = (32 * uint256(stor7[arg1].field_1024)) + 864
            t = (64 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1344
            while idx < uint256(stor7[arg1].field_1792):
                mem[t] = mem[s + 30 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1184] = (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 416
            _466 = mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 864]
            mem[(64 * uint256(stor7[arg1].field_1024)) + (64 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1344] = mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 864]
            idx = 0
            s = (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 896
            t = (64 * uint256(stor7[arg1].field_1024)) + (64 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1376
            while idx < _466:
                mem[t] = mem[s + 30 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1216] = uint256(stor7[arg1].field_2304)
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1248] = uint256(stor7[arg1].field_2560)
            return memory
              from (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 896
               len (96 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * _466) + 480
        mem[(32 * uint256(stor7[arg1].field_1024)) + 864] = uint16(stor7[arg1][7].field_0)
        idx = (32 * uint256(stor7[arg1].field_1024)) + 864
        s = 0
        while (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 832 > idx:
            mem[idx + 32] = uint16(stor7[arg1][7].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
            idx = idx + 32
            s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
            continue 
        mem[672] = (32 * uint256(stor7[arg1].field_1024)) + 832
        mem[64] = (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 896
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 864] = uint256(stor7[arg1].field_2048)
        if not uint256(stor7[arg1].field_2048):
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 896] = 32
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 928] = uint256(stor7[arg1].field_0)
            require uint8(stor7[arg1].field_256) < 4
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 960] = uint8(stor7[arg1].field_256)
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 992] = uint256(stor7[arg1].field_512)
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1024] = uint256(stor7[arg1].field_768)
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1056] = 352
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1280] = uint256(stor7[arg1].field_1024)
            idx = 0
            s = 832
            t = (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1312
            while idx < uint256(stor7[arg1].field_1024):
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1088] = uint256(stor7[arg1].field_1280)
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1120] = uint256(stor7[arg1].field_1536)
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1152] = (32 * uint256(stor7[arg1].field_1024)) + 384
            mem[(64 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1312] = uint256(stor7[arg1].field_1792)
            idx = 0
            s = (32 * uint256(stor7[arg1].field_1024)) + 864
            t = (64 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1344
            while idx < uint256(stor7[arg1].field_1792):
                mem[t] = mem[s + 30 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1184] = (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 416
            _467 = mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 864]
            mem[(64 * uint256(stor7[arg1].field_1024)) + (64 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1344] = mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 864]
            idx = 0
            s = (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 896
            t = (64 * uint256(stor7[arg1].field_1024)) + (64 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1376
            while idx < _467:
                mem[t] = mem[s + 30 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1216] = uint256(stor7[arg1].field_2304)
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1248] = uint256(stor7[arg1].field_2560)
            return memory
              from (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 896
               len (96 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * _467) + 480
        mem[0] = sha3(arg1, 7) + 8
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 896] = uint16(stor7[arg1][8].field_0)
        idx = (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 896
        s = 0
        while (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 864 > idx:
            mem[idx + 32] = uint16(stor7[arg1][8].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
            idx = idx + 32
            s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
            continue 
        mem[704] = (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 864
        mem[736] = uint256(stor7[arg1].field_2304)
        mem[768] = uint256(stor7[arg1].field_2560)
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 896] = 32
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 928] = uint256(stor7[arg1].field_0)
        require uint8(stor7[arg1].field_256) < 4
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 960] = uint8(stor7[arg1].field_256)
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 992] = uint256(stor7[arg1].field_512)
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1024] = uint256(stor7[arg1].field_768)
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1056] = 352
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1280] = uint256(stor7[arg1].field_1024)
        idx = 0
        s = 832
        t = mem[64] + 416
        while idx < uint256(stor7[arg1].field_1024):
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1088] = mem[608]
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1120] = mem[640]
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1152] = (32 * uint256(stor7[arg1].field_1024)) + 384
        _468 = mem[mem[672]]
        mem[(64 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1312] = mem[mem[672]]
        idx = 0
        s = mem[672] + 32
        t = (64 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1344
        while idx < _468:
            mem[t] = mem[s + 30 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1184] = (32 * uint256(stor7[arg1].field_1024)) + (32 * _468) + 416
        _545 = mem[mem[704]]
        mem[(64 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + (32 * _468) + 1344] = mem[mem[704]]
        idx = 0
        s = mem[704] + 32
        t = (64 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + (32 * _468) + 1376
        while idx < _545:
            mem[t] = mem[s + 30 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1216] = mem[736]
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1248] = mem[768]
        return memory
          from mem[64]
           len (64 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + (32 * _468) + (32 * _545) + -mem[64] + 1376
    mem[832] = uint8(stor7[arg1][4].field_0)
    idx = 832
    s = 0
    while (32 * uint256(stor7[arg1].field_1024)) + 800 > idx:
        mem[idx + 32] = stor('array', 4, ('map', ('param', 'arg1'), ('name', 'stor7', 7)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[576] = 800
    mem[608] = uint256(stor7[arg1].field_1280)
    mem[640] = uint256(stor7[arg1].field_1536)
    mem[(32 * uint256(stor7[arg1].field_1024)) + 832] = uint256(stor7[arg1].field_1792)
    if not uint256(stor7[arg1].field_1792):
        mem[672] = (32 * uint256(stor7[arg1].field_1024)) + 832
        mem[64] = (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 896
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 864] = uint256(stor7[arg1].field_2048)
        if not uint256(stor7[arg1].field_2048):
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 896] = 32
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 928] = uint256(stor7[arg1].field_0)
            require uint8(stor7[arg1].field_256) < 4
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 960] = uint8(stor7[arg1].field_256)
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 992] = uint256(stor7[arg1].field_512)
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1024] = uint256(stor7[arg1].field_768)
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1056] = 352
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1280] = uint256(stor7[arg1].field_1024)
            idx = 0
            s = 832
            t = (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1312
            while idx < uint256(stor7[arg1].field_1024):
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1088] = uint256(stor7[arg1].field_1280)
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1120] = uint256(stor7[arg1].field_1536)
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1152] = (32 * uint256(stor7[arg1].field_1024)) + 384
            mem[(64 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1312] = uint256(stor7[arg1].field_1792)
            idx = 0
            s = (32 * uint256(stor7[arg1].field_1024)) + 864
            t = (64 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1344
            while idx < uint256(stor7[arg1].field_1792):
                mem[t] = mem[s + 30 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1184] = (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 416
            _469 = mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 864]
            mem[(64 * uint256(stor7[arg1].field_1024)) + (64 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1344] = mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 864]
            idx = 0
            s = (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 896
            t = (64 * uint256(stor7[arg1].field_1024)) + (64 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1376
            while idx < _469:
                mem[t] = mem[s + 30 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1216] = uint256(stor7[arg1].field_2304)
            mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1248] = uint256(stor7[arg1].field_2560)
            return memory
              from (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 896
               len (96 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * _469) + 480
        mem[0] = sha3(arg1, 7) + 8
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 896] = uint16(stor7[arg1][8].field_0)
        idx = (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 896
        s = 0
        while (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 864 > idx:
            mem[idx + 32] = uint16(stor7[arg1][8].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
            idx = idx + 32
            s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
            continue 
        mem[704] = (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 864
        mem[736] = uint256(stor7[arg1].field_2304)
        mem[768] = uint256(stor7[arg1].field_2560)
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 896] = 32
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 928] = uint256(stor7[arg1].field_0)
        require uint8(stor7[arg1].field_256) < 4
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 960] = uint8(stor7[arg1].field_256)
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 992] = uint256(stor7[arg1].field_512)
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1024] = uint256(stor7[arg1].field_768)
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1056] = 352
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1280] = uint256(stor7[arg1].field_1024)
        idx = 0
        s = 832
        t = mem[64] + 416
        while idx < uint256(stor7[arg1].field_1024):
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1088] = mem[608]
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1120] = mem[640]
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1152] = (32 * uint256(stor7[arg1].field_1024)) + 384
        _470 = mem[mem[672]]
        mem[(64 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1312] = mem[mem[672]]
        idx = 0
        s = mem[672] + 32
        t = (64 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1344
        while idx < _470:
            mem[t] = mem[s + 30 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1184] = (32 * uint256(stor7[arg1].field_1024)) + (32 * _470) + 416
        _547 = mem[mem[704]]
        mem[(64 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + (32 * _470) + 1344] = mem[mem[704]]
        idx = 0
        s = mem[704] + 32
        t = (64 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + (32 * _470) + 1376
        while idx < _547:
            mem[t] = mem[s + 30 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1216] = mem[736]
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1248] = mem[768]
        return memory
          from mem[64]
           len (64 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + (32 * _470) + (32 * _547) + -mem[64] + 1376
    mem[0] = sha3(arg1, 7) + 7
    mem[(32 * uint256(stor7[arg1].field_1024)) + 864] = uint16(stor7[arg1][7].field_0)
    idx = (32 * uint256(stor7[arg1].field_1024)) + 864
    s = 0
    while (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 832 > idx:
        mem[idx + 32] = uint16(stor7[arg1][7].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
        idx = idx + 32
        s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
        continue 
    mem[672] = (32 * uint256(stor7[arg1].field_1024)) + 832
    mem[64] = (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 896
    mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 864] = uint256(stor7[arg1].field_2048)
    if not uint256(stor7[arg1].field_2048):
        mem[704] = (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 864
        mem[736] = uint256(stor7[arg1].field_2304)
        mem[768] = uint256(stor7[arg1].field_2560)
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 896] = 32
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 928] = uint256(stor7[arg1].field_0)
        require uint8(stor7[arg1].field_256) < 4
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 960] = uint8(stor7[arg1].field_256)
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 992] = uint256(stor7[arg1].field_512)
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1024] = uint256(stor7[arg1].field_768)
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1056] = 352
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1280] = uint256(stor7[arg1].field_1024)
        idx = 0
        s = 832
        t = mem[64] + 416
        while idx < uint256(stor7[arg1].field_1024):
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1088] = mem[608]
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1120] = mem[640]
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1152] = (32 * uint256(stor7[arg1].field_1024)) + 384
        _471 = mem[mem[672]]
        mem[(64 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1312] = mem[mem[672]]
        idx = 0
        s = mem[672] + 32
        t = (64 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1344
        while idx < _471:
            mem[t] = mem[s + 30 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1184] = (32 * uint256(stor7[arg1].field_1024)) + (32 * _471) + 416
        _548 = mem[mem[704]]
        mem[(64 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + (32 * _471) + 1344] = mem[mem[704]]
        idx = 0
        s = mem[704] + 32
        t = (64 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + (32 * _471) + 1376
        while idx < _548:
            mem[t] = mem[s + 30 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1216] = mem[736]
        mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1248] = mem[768]
        return memory
          from mem[64]
           len (64 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + (32 * _471) + (32 * _548) + -mem[64] + 1376
    mem[0] = sha3(arg1, 7) + 8
    mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 896] = uint16(stor7[arg1][8].field_0)
    idx = (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 896
    s = 0
    while (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 864 > idx:
        mem[idx + 32] = uint16(stor7[arg1][8].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
        idx = idx + 32
        s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
        continue 
    mem[704] = (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 864
    mem[736] = uint256(stor7[arg1].field_2304)
    mem[768] = uint256(stor7[arg1].field_2560)
    mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 896] = 32
    mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 928] = uint256(stor7[arg1].field_0)
    require uint8(stor7[arg1].field_256) < 4
    mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 960] = uint8(stor7[arg1].field_256)
    mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 992] = uint256(stor7[arg1].field_512)
    mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1024] = uint256(stor7[arg1].field_768)
    mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1056] = 352
    mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1280] = uint256(stor7[arg1].field_1024)
    idx = 0
    s = 832
    t = (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1312
    while idx < uint256(stor7[arg1].field_1024):
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1088] = uint256(stor7[arg1].field_1280)
    mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1120] = uint256(stor7[arg1].field_1536)
    mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1152] = (32 * uint256(stor7[arg1].field_1024)) + 384
    mem[(64 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1312] = uint256(stor7[arg1].field_1792)
    idx = 0
    s = mem[672] + 32
    t = mem[64] + (32 * mem[800]) + 448
    while idx < uint256(stor7[arg1].field_1792):
        mem[t] = mem[s + 30 len 2]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1184] = (32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + 416
    _583 = mem[mem[704]]
    mem[(64 * uint256(stor7[arg1].field_1024)) + (64 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1344] = mem[mem[704]]
    idx = 0
    s = mem[704] + 32
    t = (64 * uint256(stor7[arg1].field_1024)) + (64 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1376
    while idx < _583:
        mem[t] = mem[s + 30 len 2]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1216] = mem[736]
    mem[(32 * uint256(stor7[arg1].field_1024)) + (32 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + 1248] = mem[768]
    return memory
      from mem[64]
       len (64 * uint256(stor7[arg1].field_1024)) + (64 * uint256(stor7[arg1].field_1792)) + (32 * uint256(stor7[arg1].field_2048)) + (32 * _583) + -mem[64] + 1376
}



}
