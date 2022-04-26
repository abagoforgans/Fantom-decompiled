contract main {




// =====================  Runtime code  =====================


#
#  - sub_c8cfd902(?)
#
uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
uint128 stor0; offset 160
address owner;
address timerAddress;
address stor2;
address stor3;
uint256 stor4;
uint8 sub_075dc415;
uint8 sub_350d9251; offset 24
uint8 sub_8be852b1; offset 32
uint8 sub_add5edf0; offset 40
uint8 sub_3c309fe7; offset 48
uint8 sub_9c216602; offset 56
uint16 maxRange; offset 8
mapping of struct stor6;

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
    require arg1 == arg1
    require timerAddress
    require ext_code.size(timerAddress)
    call timerAddress.0x22f8e566 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function getCurrentTime() payable {
    if not timerAddress:
        return block.timestamp
    require ext_code.size(timerAddress)
    staticcall timerAddress.0x29cb924d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function costToBuyTickets(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor6[arg1].field_768:
        return 0
    require stor6[arg1].field_768
    if stor6[arg1].field_768 * arg2 / stor6[arg1].field_768 != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return (stor6[arg1].field_768 * arg2)
}

function withdrawCake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor0.field_168):
        if ext_code.size(this.address) > 0:
            if uint8(stor0.field_160):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_168):
            Mask(88, 0, stor0.field_168) = 1
            Mask(96, 0, stor0.field_160) = 1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Contracts cannot be 0 address'
    stor3 = arg1
    if not uint8(stor0.field_168):
        Mask(88, 0, stor0.field_168) = 0
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
    emit UpdatedBuckets(address(msg.sender), arg1 << 248, arg2 << 248, arg3 << 248, arg4, arg5 << 248);
}

function costToBuyTicketsWithDiscount(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(this.address)
    staticcall this.address.0x4f7d93db with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_code.size(this.address)
        staticcall this.address.0x4f7d93db with:
                gas gas_remaining wei
               args arg1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ext_call.return_data[0], 0, ext_call.return_data[0]
    require ext_call.return_data[0]
    if arg2 < sub_350d9251:
        if ext_call.return_data[0] * sub_add5edf0 / ext_call.return_data[0] != sub_add5edf0:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(this.address)
        staticcall this.address.0x4f7d93db with:
                gas gas_remaining wei
               args arg1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] * sub_add5edf0 / 100 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ext_call.return_data[0], 
               ext_call.return_data[0] * sub_add5edf0 / 100,
               ext_call.return_data[0] - (ext_call.return_data[0] * sub_add5edf0 / 100)
    if arg2 >= sub_8be852b1:
        if ext_call.return_data[0] * sub_9c216602 / ext_call.return_data[0] != sub_9c216602:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(this.address)
        staticcall this.address.0x4f7d93db with:
                gas gas_remaining wei
               args arg1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] * sub_9c216602 / 100 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ext_call.return_data[0], 
               ext_call.return_data[0] * sub_9c216602 / 100,
               ext_call.return_data[0] - (ext_call.return_data[0] * sub_9c216602 / 100)
    if ext_call.return_data[0] * sub_3c309fe7 / ext_call.return_data[0] != sub_3c309fe7:
        revert with 0, 'SafeMath: multiplication overflow'
    require ext_code.size(this.address)
    staticcall this.address.0x4f7d93db with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] * sub_3c309fe7 / 100 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return ext_call.return_data[0], 
           ext_call.return_data[0] * sub_3c309fe7 / 100,
           ext_call.return_data[0] - (ext_call.return_data[0] * sub_3c309fe7 / 100)
}

function getBasicLottoInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 96
    mem[256] = 0
    mem[288] = 0
    mem[320] = 96
    mem[32] = 6
    mem[352] = stor6[arg1].field_0
    require uint8(stor6[arg1].field_256) <= 3
    mem[384] = uint8(stor6[arg1].field_256)
    mem[416] = stor6[arg1].field_512
    mem[448] = stor6[arg1].field_768
    mem[608] = stor6[arg1].field_1024
    if not stor6[arg1].field_1024:
        mem[(32 * stor6[arg1].field_1024) + 640] = stor6[arg1].field_1792
        if stor6[arg1].field_1792:
            mem[(32 * stor6[arg1].field_1024) + 672] = uint16(stor6[arg1][7].field_0)
            idx = (32 * stor6[arg1].field_1024) + 672
            s = 0
            while (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 640 > idx:
                mem[idx + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
                idx = idx + 32
                s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
                continue 
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 672] = 32
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 704] = stor6[arg1].field_0
        require uint8(stor6[arg1].field_256) < 4
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 736] = uint8(stor6[arg1].field_256)
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 768] = stor6[arg1].field_512
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 800] = stor6[arg1].field_768
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 832] = 256
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 960] = stor6[arg1].field_1024
        idx = 0
        s = 640
        t = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 992
        while idx < stor6[arg1].field_1024:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 864] = stor6[arg1].field_1280
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 896] = stor6[arg1].field_1536
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 928] = (32 * stor6[arg1].field_1024) + 288
        mem[(64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 992] = stor6[arg1].field_1792
        idx = 0
        s = (32 * stor6[arg1].field_1024) + 672
        t = (64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 1024
        while idx < stor6[arg1].field_1792:
            mem[t] = mem[s + 30 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 672
           len (96 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 352
    mem[640] = uint8(stor6[arg1][4].field_0)
    idx = 640
    s = 0
    while (32 * stor6[arg1].field_1024) + 608 > idx:
        mem[idx + 32] = stor('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[480] = 608
    mem[512] = stor6[arg1].field_1280
    mem[544] = stor6[arg1].field_1536
    mem[64] = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 672
    mem[(32 * stor6[arg1].field_1024) + 640] = stor6[arg1].field_1792
    if not stor6[arg1].field_1792:
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 672] = 32
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 704] = stor6[arg1].field_0
        require uint8(stor6[arg1].field_256) < 4
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 736] = uint8(stor6[arg1].field_256)
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 768] = stor6[arg1].field_512
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 800] = stor6[arg1].field_768
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 832] = 256
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 960] = stor6[arg1].field_1024
        idx = 0
        s = 640
        t = (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 992
        while idx < stor6[arg1].field_1024:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 864] = stor6[arg1].field_1280
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 896] = stor6[arg1].field_1536
        mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 928] = (32 * stor6[arg1].field_1024) + 288
        mem[(64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 992] = stor6[arg1].field_1792
        idx = 0
        s = (32 * stor6[arg1].field_1024) + 672
        t = (64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 1024
        while idx < stor6[arg1].field_1792:
            mem[t] = mem[s + 30 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 672
           len (96 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 352
    mem[0] = sha3(arg1, 6) + 7
    mem[(32 * stor6[arg1].field_1024) + 672] = uint16(stor6[arg1][7].field_0)
    idx = (32 * stor6[arg1].field_1024) + 672
    s = 0
    while (32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 640 > idx:
        mem[idx + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
        idx = idx + 32
        s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
        continue 
    mem[576] = (32 * stor6[arg1].field_1024) + 640
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 672] = 32
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 704] = stor6[arg1].field_0
    require uint8(stor6[arg1].field_256) < 4
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 736] = uint8(stor6[arg1].field_256)
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 768] = stor6[arg1].field_512
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 800] = stor6[arg1].field_768
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 832] = 256
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 960] = stor6[arg1].field_1024
    idx = 0
    s = 640
    t = mem[64] + 320
    while idx < stor6[arg1].field_1024:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 864] = mem[512]
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 896] = mem[544]
    mem[(32 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 928] = (32 * stor6[arg1].field_1024) + 288
    _155 = mem[mem[576]]
    mem[(64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 992] = mem[mem[576]]
    idx = 0
    s = mem[576] + 32
    t = (64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + 1024
    while idx < _155:
        mem[t] = mem[s + 30 len 2]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor6[arg1].field_1024) + (32 * stor6[arg1].field_1792) + (32 * _155) + -mem[64] + 1024
}

function sub_8324f7c5(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    require cd[132] == cd[132]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != sub_075dc415:
        revert with 0, 'Invalid distribution'
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == uint8(cd[((32 * idx) + cd[4] + 36)])
        if s + uint8(cd[((32 * idx) + cd[4] + 36)]) < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + uint8(cd[((32 * idx) + cd[4] + 36)])
        continue 
    if s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length != 100:
        revert with 0, 'Prize distribution is not 100%'
    if not cd[36]:
        revert with 0, 'Prize or cost cannot be 0'
    if not cd[68]:
        revert with 0, 'Prize or cost cannot be 0'
    if not cd[100]:
        revert with 0, 'Timestamps for lottery invalid'
    if cd[100] >= cd[132]:
        revert with 0, 'Timestamps for lottery invalid'
    if stor4 + 1 < stor4:
        revert with 0, 'SafeMath: addition overflow'
    stor4++
    require sub_075dc415 <= test266151307()
    if sub_075dc415:
        mem[128 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
    if not timerAddress:
        mem[(32 * sub_075dc415) + 128] = 0
        mem[(32 * sub_075dc415) + 672 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
        mem[(32 * sub_075dc415) + (32 * ('cd', 4).length) + 672] = 0
        stor6[stor4].field_0 = stor4
        if cd[100] >= block.timestamp:
            uint8(stor6[stor4].field_256) = 1
        else:
            uint8(stor6[stor4].field_256) = 0
            stor6[stor4].field_512 % 1 = 0
        stor6[stor4].field_512 = cd[36]
        stor6[stor4].field_768 = cd[68]
        stor6[stor4].field_1024 = ('cd', 4).length
        if not ('cd', 4).length:
            idx = 0
            while stor6[stor4].field_1024 + 31 / 32 > idx:
                stor6[stor4][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (32 * sub_075dc415) + 672
            while (32 * sub_075dc415) + (32 * ('cd', 4).length) + 672 > idx:
                stor6[stor4][4].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor6[stor4][4].field_0
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
            s = sha3(sha3(stor4, 6) + 4)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5 * None + 3 / 32)
            while stor6[stor4].field_1024 + 31 / 32 > idx:
                stor6[stor4][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
    else:
        require ext_code.size(timerAddress)
        staticcall timerAddress.0x29cb924d with:
                gas gas_remaining wei
        mem[(32 * sub_075dc415) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(32 * sub_075dc415) + ceil32(return_data.size) + 128] = 0
        mem[(32 * sub_075dc415) + ceil32(return_data.size) + 672 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
        mem[(32 * sub_075dc415) + ceil32(return_data.size) + (32 * ('cd', 4).length) + 672] = 0
        stor6[stor4].field_0 = stor4
        if cd[100] >= ext_call.return_data[0]:
            uint8(stor6[stor4].field_256) = 1
        else:
            uint8(stor6[stor4].field_256) = 0
            stor6[stor4].field_512 % 1 = 0
        stor6[stor4].field_512 = cd[36]
        stor6[stor4].field_768 = cd[68]
        stor6[stor4].field_1024 = ('cd', 4).length
        if not ('cd', 4).length:
            idx = 0
            while stor6[stor4].field_1024 + 31 / 32 > idx:
                stor6[stor4][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (32 * sub_075dc415) + ceil32(return_data.size) + 672
            while (32 * sub_075dc415) + ceil32(return_data.size) + (32 * ('cd', 4).length) + 672 > idx:
                stor6[stor4][4].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor6[stor4][4].field_0
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
            s = sha3(sha3(stor4, 6) + 4)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5 * None + 3 / 32)
            while stor6[stor4].field_1024 + 31 / 32 > idx:
                stor6[stor4][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
    stor6[stor4].field_1280 = cd[100]
    stor6[stor4].field_1536 = cd[132]
    stor6[stor4].field_1792 = sub_075dc415
    if not sub_075dc415:
        idx = 0
        while stor6[stor4].field_1792 + 15 / 16 > idx:
            stor6[stor4][idx + 7].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * sub_075dc415) + 128 > idx:
            stor6[stor4][7].field_0 = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and stor6[stor4][7].field_0
            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
            idx = idx + 32
            continue 
        idx = floor32(sub_075dc415) >> 4
        s = sha3(sha3(stor4, 6) + 7)
        while idx:
            stor[s] = !(65535 * 256^idx) and stor[s]
            idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
            s = (idx + 3 / 32) + s
            continue 
        idx = (floor32(sub_075dc415) >> 4) + Mask(254, 1, None + -(floor32(sub_075dc415) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(sub_075dc415) >> 4) + 3) >> 1
        while stor6[stor4].field_1792 + 15 / 16 > idx:
            stor6[stor4][idx + 7].field_0 = 0
            idx = idx + 1
            continue 
    require ext_code.size(stor3)
    staticcall stor3.getTotalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    emit LotteryOpen(stor4, ext_call.return_data[0]);
    return stor4
}

function drawWinningNumbers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
        require ext_call.return_data[0] == ext_call.return_data[0]
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
                _188 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if maxRange <= 0:
                    revert with 0, 'SafeMath: modulo by zero'
                require maxRange
                require idx < mem[ceil32(return_data.size) + 224]
                mem[(32 * idx) + ceil32(return_data.size) + 256] = uint16(sha3(mem[_188 + 32 len mem[_188]]) % maxRange)
                idx = idx + 1
                continue 
            mem[32] = 6
            stor6[arg1].field_1792 = mem[ceil32(return_data.size) + 224]
            mem[0] = sha3(arg1, 6) + 7
            if not mem[ceil32(return_data.size) + 224]:
                idx = 0
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
                _247 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_247] == mem[_247]
                emit LotteryClose(arg1, mem[_247]);
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
                _319 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_319] == mem[_319]
                emit LotteryClose(arg1, mem[_319]);
        else:
            mem[ceil32(return_data.size) + 256 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
            idx = 0
            while idx < sub_075dc415:
                mem[mem[64] + 32] = sha3(block.difficulty, block.timestamp, ext_call.return_data[0])
                mem[mem[64] + 64] = idx
                _192 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if maxRange <= 0:
                    revert with 0, 'SafeMath: modulo by zero'
                require maxRange
                require idx < mem[ceil32(return_data.size) + 224]
                mem[(32 * idx) + ceil32(return_data.size) + 256] = uint16(sha3(mem[_192 + 32 len mem[_192]]) % maxRange)
                idx = idx + 1
                continue 
            mem[32] = 6
            stor6[arg1].field_1792 = mem[ceil32(return_data.size) + 224]
            mem[0] = sha3(arg1, 6) + 7
            if not mem[ceil32(return_data.size) + 224]:
                idx = 0
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
                _248 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_248] == mem[_248]
                emit LotteryClose(arg1, mem[_248]);
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
                _320 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_320] == mem[_320]
                emit LotteryClose(arg1, mem[_320]);
    else:
        require ext_code.size(timerAddress)
        staticcall timerAddress.0x29cb924d with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
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
        require ext_call.return_data[0] == ext_call.return_data[0]
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
                _196 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if maxRange <= 0:
                    revert with 0, 'SafeMath: modulo by zero'
                require maxRange
                require idx < mem[(2 * ceil32(return_data.size)) + 224]
                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 256] = uint16(sha3(mem[_196 + 32 len mem[_196]]) % maxRange)
                idx = idx + 1
                continue 
            mem[32] = 6
            stor6[arg1].field_1792 = mem[(2 * ceil32(return_data.size)) + 224]
            mem[0] = sha3(arg1, 6) + 7
            if not mem[(2 * ceil32(return_data.size)) + 224]:
                idx = 0
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
                _249 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_249] == mem[_249]
                emit LotteryClose(arg1, mem[_249]);
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
                _321 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_321] == mem[_321]
                emit LotteryClose(arg1, mem[_321]);
        else:
            mem[(2 * ceil32(return_data.size)) + 256 len 32 * sub_075dc415] = call.data[calldata.size len 32 * sub_075dc415]
            idx = 0
            while idx < sub_075dc415:
                mem[mem[64] + 32] = sha3(block.difficulty, block.timestamp, ext_call.return_data[0])
                mem[mem[64] + 64] = idx
                _200 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if maxRange <= 0:
                    revert with 0, 'SafeMath: modulo by zero'
                require maxRange
                require idx < mem[(2 * ceil32(return_data.size)) + 224]
                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 256] = uint16(sha3(mem[_200 + 32 len mem[_200]]) % maxRange)
                idx = idx + 1
                continue 
            mem[32] = 6
            stor6[arg1].field_1792 = mem[(2 * ceil32(return_data.size)) + 224]
            mem[0] = sha3(arg1, 6) + 7
            if not mem[(2 * ceil32(return_data.size)) + 224]:
                idx = 0
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
                _250 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_250] == mem[_250]
                emit LotteryClose(arg1, mem[_250]);
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
                _322 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_322] == mem[_322]
                emit LotteryClose(arg1, mem[_322]);
}

function sub_76674b8f(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'contract not allowed'
    if tx.origin != msg.sender:
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
            _243 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_243] == mem[_243 + 12 len 20]
            if mem[_243 + 12 len 20] != msg.sender:
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
            _275 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_275] == bool(mem[_275])
            if not mem[_275]:
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
                _377 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_377] == bool(mem[_377])
                if not mem[_377]:
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
                _399 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _401 = mem[_399]
                require mem[_399] <= test266151307()
                require _399 + mem[_399] + 31 < _399 + return_data.size
                _403 = mem[_399 + mem[_399]]
                require mem[_399 + mem[_399]] <= test266151307()
                require _399 + ceil32(return_data.size) + (32 * mem[_399 + mem[_399]]) + 32 <= test266151307() and (32 * mem[_399 + mem[_399]]) + 32 >= 0
                mem[64] = _399 + ceil32(return_data.size) + (32 * mem[_399 + mem[_399]]) + 32
                mem[_399 + ceil32(return_data.size)] = _403
                require _401 + (32 * _403) + 32 <= return_data.size
                s = 0
                t = _399 + _401 + 32
                u = _399 + ceil32(return_data.size) + 32
                while s < _403:
                    require mem[t] == mem[t + 30 len 2]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[0] = cd[4]
                mem[32] = 6
                _456 = mem[64]
                mem[64] = mem[64] + (32 * stor6[cd[4]].field_1792) + 32
                mem[_456] = stor6[cd[4]].field_1792
                if not stor6[cd[4]].field_1792:
                    s = 0
                    t = 0
                    while s < stor6[cd[4]].field_1792:
                        require s < stor6[cd[4]].field_1792
                        require s < _403
                        if mem[(32 * s) + _399 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _456 + 62 len 2]:
                            s = s + 1
                            t = t
                            continue 
                        s = s + 1
                        t = t + 1
                        continue 
                else:
                    mem[0] = sha3(cd[4], 6) + 7
                    mem[_456 + 32] = uint16(stor6[cd[4]][7].field_0)
                    s = _456 + 32
                    t = 0
                    while _456 + (32 * stor6[cd[4]].field_1792) > s:
                        mem[s + 32] = uint16(stor6[cd[4]][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                        s = s + 32
                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                        continue 
                    s = 0
                    t = 0
                    while s < stor6[cd[4]].field_1792:
                        require s < stor6[cd[4]].field_1792
                        require s < mem[_399 + ceil32(return_data.size)]
                        if mem[(32 * s) + _399 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _456 + 62 len 2]:
                            s = s + 1
                            t = t
                            continue 
                        s = s + 1
                        t = t + 1
                        continue 
                if not uint8(t):
                    if 0 > stor6[cd[4]].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[0] = cd[4]
                    mem[32] = 6
                else:
                    require uint8(t - 1) < stor6[cd[4]].field_1024
                    if not stor6[cd[4]].field_512:
                        if 0 > stor6[cd[4]].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[0] = cd[4]
                        mem[32] = 6
                    else:
                        require stor6[cd[4]].field_512
                        if stor6[cd[4]].field_512 * stor((Mask(3, 5, t - 1) >> 5) + ('array', 4, ('map', ('cd', 4), ('name', 'stor6', 6))))[uint8(t - 1)] / stor6[cd[4]].field_512 != stor((Mask(3, 5, t - 1) >> 5) + ('array', 4, ('map', ('cd', 4), ('name', 'stor6', 6))))[uint8(t - 1)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor6[cd[4]].field_512 * stor((Mask(3, 5, t - 1) >> 5) + ('array', 4, ('map', ('cd', 4), ('name', 'stor6', 6))))[uint8(t - 1)] / 100 > stor6[cd[4]].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[0] = cd[4]
                        mem[32] = 6
                        stor6[cd[4]].field_512 -= stor6[cd[4]].field_512 * stor((Mask(3, 5, t - 1) >> 5) + ('array', 4, ('map', ('cd', 4), ('name', 'stor6', 6))))[uint8(t - 1)] / 100
                        if stor6[cd[4]].field_512 * stor((Mask(3, 5, t - 1) >> 5) + ('array', 4, ('map', ('cd', 4), ('name', 'stor6', 6))))[uint8(t - 1)] / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
        _237 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = 0
        _247 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_237 + 100] = 32
        mem[_237 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(stor2) <= 0:
            revert with 0, 'Address: call to non-contract'
        _261 = mem[_247]
        mem[_237 + 164 len ceil32(mem[_247])] = mem[_247 + 32 len ceil32(mem[_247])]
        if ceil32(_261) > _261:
            mem[_237 + _261 + 164] = 0
        call stor2 with:
             gas gas_remaining wei
            args mem[_237 + 168 len _261 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] > 0:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_237 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_237 + 196] == bool(mem[_237 + 196])
                if not mem[_237 + 196]:
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
        require ext_call.return_data[0] == ext_call.return_data[0]
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
            _244 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_244] == mem[_244 + 12 len 20]
            if mem[_244 + 12 len 20] != msg.sender:
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
            _276 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_276] == bool(mem[_276])
            if not mem[_276]:
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
                _380 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_380] == bool(mem[_380])
                if not mem[_380]:
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
                _400 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _402 = mem[_400]
                require mem[_400] <= test266151307()
                require _400 + mem[_400] + 31 < _400 + return_data.size
                _404 = mem[_400 + mem[_400]]
                require mem[_400 + mem[_400]] <= test266151307()
                require _400 + ceil32(return_data.size) + (32 * mem[_400 + mem[_400]]) + 32 <= test266151307() and (32 * mem[_400 + mem[_400]]) + 32 >= 0
                mem[64] = _400 + ceil32(return_data.size) + (32 * mem[_400 + mem[_400]]) + 32
                mem[_400 + ceil32(return_data.size)] = _404
                require _402 + (32 * _404) + 32 <= return_data.size
                s = 0
                t = _400 + _402 + 32
                u = _400 + ceil32(return_data.size) + 32
                while s < _404:
                    require mem[t] == mem[t + 30 len 2]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[0] = cd[4]
                mem[32] = 6
                _458 = mem[64]
                mem[64] = mem[64] + (32 * stor6[cd[4]].field_1792) + 32
                mem[_458] = stor6[cd[4]].field_1792
                if not stor6[cd[4]].field_1792:
                    s = 0
                    t = 0
                    while s < stor6[cd[4]].field_1792:
                        require s < stor6[cd[4]].field_1792
                        require s < _404
                        if mem[(32 * s) + _400 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _458 + 62 len 2]:
                            s = s + 1
                            t = t
                            continue 
                        s = s + 1
                        t = t + 1
                        continue 
                else:
                    mem[0] = sha3(cd[4], 6) + 7
                    mem[_458 + 32] = uint16(stor6[cd[4]][7].field_0)
                    s = _458 + 32
                    t = 0
                    while _458 + (32 * stor6[cd[4]].field_1792) > s:
                        mem[s + 32] = uint16(stor6[cd[4]][7].field_8 * (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t))
                        s = s + 32
                        t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
                        continue 
                    s = 0
                    t = 0
                    while s < stor6[cd[4]].field_1792:
                        require s < stor6[cd[4]].field_1792
                        require s < mem[_400 + ceil32(return_data.size)]
                        if mem[(32 * s) + _400 + ceil32(return_data.size) + 62 len 2] != mem[(32 * s) + _458 + 62 len 2]:
                            s = s + 1
                            t = t
                            continue 
                        s = s + 1
                        t = t + 1
                        continue 
                if not uint8(t):
                    if 0 > stor6[cd[4]].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[0] = cd[4]
                    mem[32] = 6
                else:
                    require uint8(t - 1) < stor6[cd[4]].field_1024
                    if not stor6[cd[4]].field_512:
                        if 0 > stor6[cd[4]].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[0] = cd[4]
                        mem[32] = 6
                    else:
                        require stor6[cd[4]].field_512
                        if stor6[cd[4]].field_512 * stor((Mask(3, 5, t - 1) >> 5) + ('array', 4, ('map', ('cd', 4), ('name', 'stor6', 6))))[uint8(t - 1)] / stor6[cd[4]].field_512 != stor((Mask(3, 5, t - 1) >> 5) + ('array', 4, ('map', ('cd', 4), ('name', 'stor6', 6))))[uint8(t - 1)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor6[cd[4]].field_512 * stor((Mask(3, 5, t - 1) >> 5) + ('array', 4, ('map', ('cd', 4), ('name', 'stor6', 6))))[uint8(t - 1)] / 100 > stor6[cd[4]].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[0] = cd[4]
                        mem[32] = 6
                        stor6[cd[4]].field_512 -= stor6[cd[4]].field_512 * stor((Mask(3, 5, t - 1) >> 5) + ('array', 4, ('map', ('cd', 4), ('name', 'stor6', 6))))[uint8(t - 1)] / 100
                        if stor6[cd[4]].field_512 * stor((Mask(3, 5, t - 1) >> 5) + ('array', 4, ('map', ('cd', 4), ('name', 'stor6', 6))))[uint8(t - 1)] / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
        _239 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = 0
        _249 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_239 + 100] = 32
        mem[_239 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(stor2) <= 0:
            revert with 0, 'Address: call to non-contract'
        _264 = mem[_249]
        mem[_239 + 164 len ceil32(mem[_249])] = mem[_249 + 32 len ceil32(mem[_249])]
        if ceil32(_264) > _264:
            mem[_239 + _264 + 164] = 0
        call stor2 with:
             gas gas_remaining wei
            args mem[_239 + 168 len _264 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] > 0:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_239 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_239 + 196] == bool(mem[_239 + 196])
                if not mem[_239 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function claimReward(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'contract not allowed'
    if tx.origin != msg.sender:
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
        _46 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _49 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] <= test266151307()
        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32 >= 0
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 128
        mem[(4 * ceil32(return_data.size)) + 96] = _49
        require _46 + (32 * _49) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _46 + 128
        t = (4 * ceil32(return_data.size)) + 128
        while idx < _49:
            require mem[s] == mem[s + 30 len 2]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[0] = arg1
        mem[32] = 6
        _356 = mem[64]
        mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
        mem[_356] = stor6[arg1].field_1792
        if not stor6[arg1].field_1792:
            idx = 0
            s = 0
            while idx < stor6[arg1].field_1792:
                require idx < stor6[arg1].field_1792
                require idx < _49
                if mem[(32 * idx) + (4 * ceil32(return_data.size)) + 158 len 2] != mem[(32 * idx) + _356 + 62 len 2]:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = s + 1
                continue 
            if not uint8(s):
                if 0 > stor6[arg1].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[0] = arg1
                mem[32] = 6
                _683 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0
                _715 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_683 + 100] = 32
                mem[_683 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(stor2) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _744 = mem[_715]
                mem[_683 + 164 len ceil32(mem[_715])] = mem[_715 + 32 len ceil32(mem[_715])]
                if ceil32(_744) > _744:
                    mem[_683 + _744 + 164] = 0
                call stor2 with:
                     gas gas_remaining wei
                    args mem[_683 + 168 len _744 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_683 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_683 + 196] == bool(mem[_683 + 196])
                        if not mem[_683 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require uint8(s - 1) < stor6[arg1].field_1024
                if not stor6[arg1].field_512:
                    if 0 > stor6[arg1].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[0] = arg1
                    mem[32] = 6
                    _708 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    _739 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_708 + 100] = 32
                    mem[_708 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(stor2) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _781 = mem[_739]
                    mem[_708 + 164 len ceil32(mem[_739])] = mem[_739 + 32 len ceil32(mem[_739])]
                    if ceil32(_781) > _781:
                        mem[_708 + _781 + 164] = 0
                    call stor2 with:
                         gas gas_remaining wei
                        args mem[_708 + 168 len _781 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_708 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[_708 + 196] == bool(mem[_708 + 196])
                            if not mem[_708 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require stor6[arg1].field_512
                    if stor6[arg1].field_512 * stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] / stor6[arg1].field_512 != stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if stor6[arg1].field_512 * stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] / 100 > stor6[arg1].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[0] = arg1
                    mem[32] = 6
                    stor6[arg1].field_512 -= stor6[arg1].field_512 * stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] / 100
                    _713 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = stor6[arg1].field_512 * stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] / 100
                    _749 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_713 + 100] = 32
                    mem[_713 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(stor2) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _789 = mem[_749]
                    mem[_713 + 164 len ceil32(mem[_749])] = mem[_749 + 32 len ceil32(mem[_749])]
                    if ceil32(_789) > _789:
                        mem[_713 + _789 + 164] = 0
                    call stor2 with:
                         gas gas_remaining wei
                        args mem[_713 + 168 len _789 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_713 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[_713 + 196] == bool(mem[_713 + 196])
                            if not mem[_713 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_356 + 32] = uint16(stor6[arg1][7].field_0)
            idx = _356 + 32
            s = 0
            while _356 + (32 * stor6[arg1].field_1792) > idx:
                mem[idx + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
                idx = idx + 32
                s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
                continue 
            idx = 0
            s = 0
            while idx < stor6[arg1].field_1792:
                require idx < stor6[arg1].field_1792
                require idx < mem[(4 * ceil32(return_data.size)) + 96]
                if mem[(32 * idx) + (4 * ceil32(return_data.size)) + 158 len 2] != mem[(32 * idx) + _356 + 62 len 2]:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = s + 1
                continue 
            if not uint8(s):
                if 0 > stor6[arg1].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[0] = arg1
                mem[32] = 6
                _1299 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0
                _1483 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1299 + 100] = 32
                mem[_1299 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(stor2) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1594 = mem[_1483]
                mem[_1299 + 164 len ceil32(mem[_1483])] = mem[_1483 + 32 len ceil32(mem[_1483])]
                if ceil32(_1594) > _1594:
                    mem[_1299 + _1594 + 164] = 0
                call stor2 with:
                     gas gas_remaining wei
                    args mem[_1299 + 168 len _1594 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1299 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1299 + 196] == bool(mem[_1299 + 196])
                        if not mem[_1299 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require uint8(s - 1) < stor6[arg1].field_1024
                if not stor6[arg1].field_512:
                    if 0 > stor6[arg1].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[0] = arg1
                    mem[32] = 6
                    _1458 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    _1577 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_1458 + 100] = 32
                    mem[_1458 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(stor2) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _1627 = mem[_1577]
                    mem[_1458 + 164 len ceil32(mem[_1577])] = mem[_1577 + 32 len ceil32(mem[_1577])]
                    if ceil32(_1627) > _1627:
                        mem[_1458 + _1627 + 164] = 0
                    call stor2 with:
                         gas gas_remaining wei
                        args mem[_1458 + 168 len _1627 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_1458 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[_1458 + 196] == bool(mem[_1458 + 196])
                            if not mem[_1458 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require stor6[arg1].field_512
                    if stor6[arg1].field_512 * stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] / stor6[arg1].field_512 != stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if stor6[arg1].field_512 * stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] / 100 > stor6[arg1].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[0] = arg1
                    mem[32] = 6
                    stor6[arg1].field_512 -= stor6[arg1].field_512 * stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] / 100
                    _1481 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = stor6[arg1].field_512 * stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] / 100
                    _1605 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_1481 + 100] = 32
                    mem[_1481 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(stor2) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _1633 = mem[_1605]
                    mem[_1481 + 164 len ceil32(mem[_1605])] = mem[_1605 + 32 len ceil32(mem[_1605])]
                    if ceil32(_1633) > _1633:
                        mem[_1481 + _1633 + 164] = 0
                    call stor2 with:
                         gas gas_remaining wei
                        args mem[_1481 + 168 len _1633 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_1481 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[_1481 + 196] == bool(mem[_1481 + 196])
                            if not mem[_1481 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        require ext_code.size(timerAddress)
        staticcall timerAddress.0x29cb924d with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if stor6[arg1].field_1536 > ext_call.return_data[0]:
            revert with 0, 'Wait till end to claim'
        mem[0] = arg1
        mem[32] = 6
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
        _54 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32
        require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
        _59 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] <= test266151307()
        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32 >= 0
        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 128
        mem[(6 * ceil32(return_data.size)) + 96] = _59
        require _54 + (32 * _59) + 32 <= return_data.size
        idx = 0
        s = (4 * ceil32(return_data.size)) + _54 + 128
        t = (6 * ceil32(return_data.size)) + 128
        while idx < _59:
            require mem[s] == mem[s + 30 len 2]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[0] = arg1
        mem[32] = 6
        _358 = mem[64]
        mem[64] = mem[64] + (32 * stor6[arg1].field_1792) + 32
        mem[_358] = stor6[arg1].field_1792
        if not stor6[arg1].field_1792:
            idx = 0
            s = 0
            while idx < stor6[arg1].field_1792:
                require idx < stor6[arg1].field_1792
                require idx < _59
                if mem[(32 * idx) + (6 * ceil32(return_data.size)) + 158 len 2] != mem[(32 * idx) + _358 + 62 len 2]:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = s + 1
                continue 
            if not uint8(s):
                if 0 > stor6[arg1].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[0] = arg1
                mem[32] = 6
                _685 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0
                _717 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_685 + 100] = 32
                mem[_685 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(stor2) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _747 = mem[_717]
                mem[_685 + 164 len ceil32(mem[_717])] = mem[_717 + 32 len ceil32(mem[_717])]
                if ceil32(_747) > _747:
                    mem[_685 + _747 + 164] = 0
                call stor2 with:
                     gas gas_remaining wei
                    args mem[_685 + 168 len _747 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_685 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_685 + 196] == bool(mem[_685 + 196])
                        if not mem[_685 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require uint8(s - 1) < stor6[arg1].field_1024
                if not stor6[arg1].field_512:
                    if 0 > stor6[arg1].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[0] = arg1
                    mem[32] = 6
                    _710 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    _741 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_710 + 100] = 32
                    mem[_710 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(stor2) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _783 = mem[_741]
                    mem[_710 + 164 len ceil32(mem[_741])] = mem[_741 + 32 len ceil32(mem[_741])]
                    if ceil32(_783) > _783:
                        mem[_710 + _783 + 164] = 0
                    call stor2 with:
                         gas gas_remaining wei
                        args mem[_710 + 168 len _783 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_710 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[_710 + 196] == bool(mem[_710 + 196])
                            if not mem[_710 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require stor6[arg1].field_512
                    if stor6[arg1].field_512 * stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] / stor6[arg1].field_512 != stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if stor6[arg1].field_512 * stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] / 100 > stor6[arg1].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[0] = arg1
                    mem[32] = 6
                    stor6[arg1].field_512 -= stor6[arg1].field_512 * stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] / 100
                    _714 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = stor6[arg1].field_512 * stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] / 100
                    _753 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_714 + 100] = 32
                    mem[_714 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(stor2) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _793 = mem[_753]
                    mem[_714 + 164 len ceil32(mem[_753])] = mem[_753 + 32 len ceil32(mem[_753])]
                    if ceil32(_793) > _793:
                        mem[_714 + _793 + 164] = 0
                    call stor2 with:
                         gas gas_remaining wei
                        args mem[_714 + 168 len _793 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_714 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[_714 + 196] == bool(mem[_714 + 196])
                            if not mem[_714 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_358 + 32] = uint16(stor6[arg1][7].field_0)
            idx = _358 + 32
            s = 0
            while _358 + (32 * stor6[arg1].field_1792) > idx:
                mem[idx + 32] = uint16(stor6[arg1][7].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
                idx = idx + 32
                s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
                continue 
            idx = 0
            s = 0
            while idx < stor6[arg1].field_1792:
                require idx < stor6[arg1].field_1792
                require idx < mem[(6 * ceil32(return_data.size)) + 96]
                if mem[(32 * idx) + (6 * ceil32(return_data.size)) + 158 len 2] != mem[(32 * idx) + _358 + 62 len 2]:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = s + 1
                continue 
            if not uint8(s):
                if 0 > stor6[arg1].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[0] = arg1
                mem[32] = 6
                _1318 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0
                _1485 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1318 + 100] = 32
                mem[_1318 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(stor2) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1603 = mem[_1485]
                mem[_1318 + 164 len ceil32(mem[_1485])] = mem[_1485 + 32 len ceil32(mem[_1485])]
                if ceil32(_1603) > _1603:
                    mem[_1318 + _1603 + 164] = 0
                call stor2 with:
                     gas gas_remaining wei
                    args mem[_1318 + 168 len _1603 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1318 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1318 + 196] == bool(mem[_1318 + 196])
                        if not mem[_1318 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require uint8(s - 1) < stor6[arg1].field_1024
                if not stor6[arg1].field_512:
                    if 0 > stor6[arg1].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[0] = arg1
                    mem[32] = 6
                    _1466 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    _1585 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_1466 + 100] = 32
                    mem[_1466 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(stor2) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _1629 = mem[_1585]
                    mem[_1466 + 164 len ceil32(mem[_1585])] = mem[_1585 + 32 len ceil32(mem[_1585])]
                    if ceil32(_1629) > _1629:
                        mem[_1466 + _1629 + 164] = 0
                    call stor2 with:
                         gas gas_remaining wei
                        args mem[_1466 + 168 len _1629 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_1466 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[_1466 + 196] == bool(mem[_1466 + 196])
                            if not mem[_1466 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require stor6[arg1].field_512
                    if stor6[arg1].field_512 * stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] / stor6[arg1].field_512 != stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if stor6[arg1].field_512 * stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] / 100 > stor6[arg1].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[0] = arg1
                    mem[32] = 6
                    stor6[arg1].field_512 -= stor6[arg1].field_512 * stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] / 100
                    _1482 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = stor6[arg1].field_512 * stor((Mask(3, 5, s - 1) >> 5) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'stor6', 6))))[uint8(s - 1)] / 100
                    _1607 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_1482 + 100] = 32
                    mem[_1482 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(stor2) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _1637 = mem[_1607]
                    mem[_1482 + 164 len ceil32(mem[_1607])] = mem[_1607 + 32 len ceil32(mem[_1607])]
                    if ceil32(_1637) > _1637:
                        mem[_1482 + _1637 + 164] = 0
                    call stor2 with:
                         gas gas_remaining wei
                        args mem[_1482 + 168 len _1637 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_1482 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[_1482 + 196] == bool(mem[_1482 + 196])
                            if not mem[_1482 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
