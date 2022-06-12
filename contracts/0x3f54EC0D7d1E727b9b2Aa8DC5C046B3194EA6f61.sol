contract main {




// =====================  Runtime code  =====================


#
#  - sub_54ad3bfa(?)
#  - closePosition(uint256 arg1, uint256 arg2, bool arg3)
#
address owner;
uint256 sub_eee8a168;
uint256 sub_75506c96;
uint256 nextPositionId;
uint256 protocolFee;
uint64 stor5;
uint64 stor5; offset 192
uint128 stor5;
uint128 stor5; offset 96
uint32 stor6;
uint32 stor6; offset 160
uint32 stor6; offset 192
uint32 stor6; offset 224
uint128 stor6;
uint256 stor6;
uint256 stor6;
mapping of struct product;
mapping of struct stor8;
mapping of struct stor9;

function sub_75506c96(?) {
    return sub_75506c96
}

function nextPositionId() {
    return nextPositionId
}

function owner() {
    return owner
}

function protocolFee() {
    return protocolFee
}

function getProduct(uint256 arg1) {
    require calldata.size - 4 >= 32
    return product[arg1].field_0, 
           product[arg1].field_0,
           product[arg1].field_0,
           bool(product[arg1].field_248),
           product[arg1].field_256,
           product[arg1].field_256,
           product[arg1].field_256,
           product[arg1].field_256,
           product[arg1].field_256,
           product[arg1].field_256,
           product[arg1].field_256,
           product[arg1].field_496
}

function sub_eee8a168(?) {
    return sub_eee8a168
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!owner'
    owner = arg1
    emit OwnerUpdated(arg1);
}

function setProtocolFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!owner'
    if arg1 > 100:
        revert with 0, '!too-much'
    protocolFee = arg1
    emit ProtocolFeeUpdated(arg1);
}

function getVault() {
    return Mask(96, 0, stor5.field_0), 
           Mask(96, 0, stor5.field_0),
           uint64(stor5.field_0),
           Mask(80, 0, stor6.field_0),
           Mask(80, 0, stor6.field_0),
           uint32(stor6.field_0),
           uint32(stor6.field_0),
           uint32(stor6.field_224)
}

function stake() payable {
    if msg.value / 10^10 < sub_eee8a168:
        revert with 0, '!margin'
    if uint64(stor5.field_192) > !(msg.value / 10^10):
        revert with 0, 17
    if uint64(stor5.field_192) + (msg.value / 10^10) > Mask(96, 0, stor5.field_0):
        revert with 0, '!cap'
    if Mask(96, 0, stor5.field_96) > -Mask(96, 0, msg.value / 10^10) + test266151307():
        revert with 0, 17
    Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, msg.value / 10^10) + Mask(96, 0, stor5.field_96))
    if uint64(stor5.field_192) > -uint64(msg.value / 10^10) + test266151307():
        revert with 0, 17
    uint64(stor5.field_192) = uint64(uint64(msg.value / 10^10) + uint64(stor5.field_192))
    if sub_75506c96 == -1:
        revert with 0, 17
    sub_75506c96++
    stor8[stor2].field_0 = msg.sender
    stor8[stor2].field_160 = uint64(msg.value / 10^10)
    stor8[stor2].field_224 = uint32(block.timestamp)
    emit Staked(sub_75506c96, msg.value / 10^10, msg.sender);
}

function addMargin(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.value / 10^10 < sub_eee8a168:
        revert with 0, '!margin'
    if stor9[arg1].field_256 != msg.sender:
        revert with 0, '!owner'
    if stor9[arg1].field_192 > !(msg.value / 10^10):
        revert with 0, 17
    if stor9[arg1].field_64 and stor9[arg1].field_192 > -1 / stor9[arg1].field_64:
        revert with 0, 17
    if not stor9[arg1].field_192 + (msg.value / 10^10):
        revert with 0, 18
    if stor9[arg1].field_64 * stor9[arg1].field_192 / stor9[arg1].field_192 + (msg.value / 10^10) < 100 * 10^6:
        revert with 0, '!low-leverage'
    stor9[arg1].field_0 = 0xffffffffffffffff0000000000000000ffffffffffffffff and stor9[arg1].field_0 or stor9[arg1].field_192 + (msg.value / 10^10) << 192 or uint64(stor9[arg1].field_64 * stor9[arg1].field_192 / stor9[arg1].field_192 + (msg.value / 10^10)) << 64
    emit AddMargin(msg.value / 10^10, stor9[arg1].field_192 + (msg.value / 10^10), stor9[arg1].field_64 * stor9[arg1].field_192 / stor9[arg1].field_192 + (msg.value / 10^10), arg1, stor9[arg1].field_256);
}

function sub_855e0576(?) {
    require calldata.size - 4 >= 256
    require arg1 == Mask(96, 0, arg1)
    require arg2 == Mask(96, 0, arg2)
    require arg3 == uint64(arg3)
    require arg4 == Mask(80, 0, arg4)
    require arg5 == Mask(80, 0, arg5)
    require arg6 == uint32(arg6)
    require arg7 == uint32(arg7)
    require arg8 == uint32(arg8)
    if owner != msg.sender:
        revert with 0, '!owner'
    if not Mask(96, 0, arg1):
        revert with 0, '!cap'
    if uint32(arg8) <= 0:
        revert with 0, '!maxDailyDrawdown'
    if uint32(arg6) <= 0:
        revert with 0, '!stakingPeriod'
    if uint32(arg7) <= 0:
        revert with 0, '!redemptionPeriod'
    Mask(96, 0, stor5.field_0) = Mask(96, 0, arg1)
    Mask(192, 0, stor6.field_0) = Mask(192, 0, 0xffffffff00000000ffffffffffffffffffffffffffffffffffffffff and uint256(stor6.field_0))
    uint32(stor6.field_160) = uint32(arg6)
    uint32(stor6.field_192) = uint32(arg7)
    uint32(stor6.field_224) = uint32(arg8)
    uint32(stor6.field_224) = Mask(32, 224, 0xffffffff00000000ffffffffffffffffffffffffffffffffffffffff and uint256(stor6.field_0)) >> 224
    emit 0x46e80f1b: Mask(96, 0, stor5.field_0), uint64(stor5.field_0), uint64(stor5.field_0), Mask(80, 0, stor6.field_0), Mask(80, 0, stor6.field_0), 0, 0, uint32(uint256(stor6.field_0)) >> 224
}

function sub_6577304b(?) {
    require calldata.size - 4 >= 416
    require calldata.size - 36 >= 384
    require arg2 == address(arg2)
    require arg3 == Mask(72, 0, arg3)
    require arg4 == uint16(arg4)
    require arg5 == bool(arg5)
    require arg6 == uint64(arg6)
    require arg7 == arg7 % 281474976710656
    require arg8 == arg8 % 281474976710656
    require arg9 == uint16(arg9)
    require arg10 == uint32(arg10)
    require arg11 == uint16(arg11)
    require arg12 == uint16(arg12)
    require arg13 == uint16(arg13)
    if owner != msg.sender:
        revert with 0, '!owner'
    if not product[arg1].field_160:
        revert with 0, '!product-exists'
    if Mask(72, 0, arg3) < 100 * 10^6:
        revert with 0, '!max-leverage'
    if not address(arg2):
        revert with 0, '!feed'
    if uint32(arg10) <= 0:
        revert with 0, '!settlementTime'
    if uint16(arg12) <= 0:
        revert with 0, '!liquidationThreshold'
    product[arg1].field_0 = address(arg2)
    product[arg1].field_160 = Mask(72, 0, arg3)
    product[arg1].field_232 = uint16(arg4)
    product[arg1].field_248 = uint8(bool(arg5))
    product[arg1].field_256 = Mask(176, 0, 0xffffffffffffffffffff0000ffffffffffffffffffffffff0000000000000000 and product[arg1].field_256)
    product[arg1].field_256 = uint64(arg6)
    product[arg1].field_320 = 0
    product[arg1].field_416 = uint16(arg9)
    product[arg1].field_432 = uint32(arg10)
    product[arg1].field_464 = uint16(arg11)
    product[arg1].field_480 = uint16(arg12)
    product[arg1].field_496 = uint16(arg13)
    emit 0x9f57bdab: arg1, product[arg1].field_0, 0, 0, bool(uint8(product[arg1].field_0) >> 248), product[arg1].field_256, product[arg1].field_256, product[arg1].field_256, 0, 0, 0, 0, uint16(product[arg1].field_256) >> 240
}

function sub_1741cf2a(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 8
            _25 = mem[64]
            mem[64] = mem[64] + 96
            mem[_25] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_0
            mem[_25 + 32] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_160
            mem[_25 + 64] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_224
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _25
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _27 = mem[64]
        mem[mem[64]] = 32
        _28 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _28:
            _44 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_44 + 56 len 8]
            mem[t + 64] = mem[_44 + 92 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _27 + (96 * _28) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 224
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[(32 * ('cd', 4).length) + 192] = 0
    mem[128] = (32 * ('cd', 4).length) + 128
    s = 128
    idx = ('cd', 4).length
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[(32 * ('cd', 4).length) + 192] = 0
        mem[s + 32] = (32 * ('cd', 4).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 8
        _50 = mem[64]
        mem[64] = mem[64] + 96
        mem[_50] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_0
        mem[_50 + 32] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_160
        mem[_50 + 64] = stor8[cd[((32 * idx) + cd[4] + 36)]].field_224
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _50
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _52 = mem[64]
    mem[mem[64]] = 32
    _53 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _53:
        _59 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_59 + 56 len 8]
        mem[t + 64] = mem[_59 + 92 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _52 + (96 * _53) + -mem[64] + 64
}

function getLatestPrice(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg2:
        if not arg1:
            revert with 0, '!feed-error'
        require ext_code.size(arg1)
        staticcall arg1.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if ext_call.return_data[32] <= 0:
            revert with 0, '!price'
        if ext_call.return_data[96] <= 0:
            revert with 0, '!timeStamp'
        require ext_code.size(arg1)
        staticcall arg1.decimals() with:
                gas gas_remaining wei
    else:
        if not product[arg2].field_0:
            revert with 0, '!feed-error'
        require ext_code.size(product[arg2].field_0)
        staticcall product[arg2].field_0.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if ext_call.return_data[32] <= 0:
            revert with 0, '!price'
        if ext_call.return_data[96] <= 0:
            revert with 0, '!timeStamp'
        require ext_code.size(product[arg2].field_0)
        staticcall product[arg2].field_0.decimals() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 8 == ext_call.return_data[31 len 1]:
        return ext_call.return_data[32]
    if not ext_call.return_data[31 len 1]:
        if ext_call.return_data[32] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        return (100 * 10^6 * ext_call.return_data[32])
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if ext_call.return_data[32] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if not 10^ext_call.return_data[31 len 1]:
            revert with 0, 18
        return (100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1])
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if ext_call.return_data[32] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    return (100 * 10^6 * ext_call.return_data[32] / s * t)
}

function redeem(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > uint64(stor5.field_192):
        revert with 0, '!staked'
    if stor8[arg1].field_0 != msg.sender:
        revert with 0, '!owner'
    if owner != msg.sender:
        if block.timestamp < stor8[arg1].field_224:
            revert with 0, 17
        if block.timestamp - stor8[arg1].field_224 <= uint32(stor6.field_160):
            revert with 0, '!period'
        if not uint32(stor6.field_160):
            revert with 0, 18
        if block.timestamp - stor8[arg1].field_224 % uint32(stor6.field_160) >= uint32(stor6.field_192):
            revert with 0, '!period'
    if arg2 < stor8[arg1].field_160:
        if arg2 and Mask(96, 0, stor5.field_96) > -1 / arg2:
            revert with 0, 17
        if not uint64(stor5.field_192):
            revert with 0, 18
        if stor8[arg1].field_160 < uint64(arg2):
            revert with 0, 17
        stor8[arg1].field_160 = uint64(stor8[arg1].field_160 - uint64(arg2))
        if uint64(stor5.field_192) < uint64(arg2):
            revert with 0, 17
        uint64(stor5.field_192) = uint64(uint64(stor5.field_192) - uint64(arg2))
        if Mask(96, 0, stor5.field_96) < Mask(96, 0, arg2 * Mask(96, 0, stor5.field_96) / uint64(stor5.field_192)):
            revert with 0, 17
        Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, stor5.field_96) - Mask(96, 0, arg2 * Mask(96, 0, stor5.field_96) / uint64(stor5.field_192)))
        if arg2 >= stor8[arg1].field_160:
            stor8[arg1].field_0 = 0
        if arg2 * Mask(96, 0, stor5.field_96) / uint64(stor5.field_192) > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
            revert with 0, 17
        call msg.sender with:
           value 10^10 * arg2 * Mask(96, 0, stor5.field_96) / uint64(stor5.field_192) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Redeemed(arg1, arg2 * Mask(96, 0, stor5.field_96) / uint64(stor5.field_192), arg2 >= stor8[arg1].field_160, msg.sender);
    else:
        if stor8[arg1].field_160 and Mask(96, 0, stor5.field_96) > -1 / stor8[arg1].field_160:
            revert with 0, 17
        if not uint64(stor5.field_192):
            revert with 0, 18
        if stor8[arg1].field_160 < stor8[arg1].field_160:
            revert with 0, 17
        stor8[arg1].field_160 = 0
        if uint64(stor5.field_192) < stor8[arg1].field_160:
            revert with 0, 17
        uint64(stor5.field_192) = uint64(uint64(stor5.field_192) - stor8[arg1].field_160)
        if Mask(96, 0, stor5.field_96) < Mask(96, 0, stor8[arg1].field_160 * Mask(96, 0, stor5.field_96) / uint64(stor5.field_192)):
            revert with 0, 17
        Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, stor5.field_96) - Mask(96, 0, stor8[arg1].field_160 * Mask(96, 0, stor5.field_96) / uint64(stor5.field_192)))
        if arg2 >= stor8[arg1].field_160:
            stor8[arg1].field_0 = 0
        if stor8[arg1].field_160 * Mask(96, 0, stor5.field_96) / uint64(stor5.field_192) > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
            revert with 0, 17
        call msg.sender with:
           value 10^10 * stor8[arg1].field_160 * Mask(96, 0, stor5.field_96) / uint64(stor5.field_192) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Redeemed(arg1, stor8[arg1].field_160 * Mask(96, 0, stor5.field_96) / uint64(stor5.field_192), arg2 >= stor8[arg1].field_160, msg.sender);
}

function sub_4c723c28(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 9
            _35 = mem[64]
            mem[64] = mem[64] + 256
            mem[_35] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_0
            mem[_35 + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
            mem[_35 + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
            mem[_35 + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
            mem[_35 + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_256
            mem[_35 + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_416
            mem[_35 + 192] = bool(stor9[cd[((32 * idx) + cd[4] + 36)]].field_496)
            mem[_35 + 224] = bool(stor9[cd[((32 * idx) + cd[4] + 36)]].field_504)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _35
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _37 = mem[64]
        mem[mem[64]] = 32
        _38 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _38:
            _64 = mem[s]
            mem[t] = mem[mem[s] + 24 len 8]
            mem[t + 32] = mem[_64 + 56 len 8]
            mem[t + 64] = mem[_64 + 88 len 8]
            mem[t + 96] = mem[_64 + 120 len 8]
            mem[t + 128] = mem[_64 + 140 len 20]
            mem[t + 160] = mem[_64 + 182 len 10]
            mem[t + 192] = bool(mem[_64 + 192])
            mem[t + 224] = bool(mem[_64 + 224])
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _37 + (256 * _38) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 384
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[(32 * ('cd', 4).length) + 192] = 0
    mem[(32 * ('cd', 4).length) + 224] = 0
    mem[(32 * ('cd', 4).length) + 256] = 0
    mem[(32 * ('cd', 4).length) + 288] = 0
    mem[(32 * ('cd', 4).length) + 320] = 0
    mem[(32 * ('cd', 4).length) + 352] = 0
    mem[128] = (32 * ('cd', 4).length) + 128
    s = 128
    idx = ('cd', 4).length
    while idx - 1:
        mem[64] = mem[64] + 256
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[(32 * ('cd', 4).length) + 192] = 0
        mem[(32 * ('cd', 4).length) + 224] = 0
        mem[(32 * ('cd', 4).length) + 256] = 0
        mem[(32 * ('cd', 4).length) + 288] = 0
        mem[(32 * ('cd', 4).length) + 320] = 0
        mem[(32 * ('cd', 4).length) + 352] = 0
        mem[s + 32] = (32 * ('cd', 4).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 9
        _75 = mem[64]
        mem[64] = mem[64] + 256
        mem[_75] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_0
        mem[_75 + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
        mem[_75 + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
        mem[_75 + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
        mem[_75 + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_256
        mem[_75 + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_416
        mem[_75 + 192] = bool(stor9[cd[((32 * idx) + cd[4] + 36)]].field_496)
        mem[_75 + 224] = bool(stor9[cd[((32 * idx) + cd[4] + 36)]].field_504)
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _75
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _77 = mem[64]
    mem[mem[64]] = 32
    _78 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _78:
        _89 = mem[s]
        mem[t] = mem[mem[s] + 24 len 8]
        mem[t + 32] = mem[_89 + 56 len 8]
        mem[t + 64] = mem[_89 + 88 len 8]
        mem[t + 96] = mem[_89 + 120 len 8]
        mem[t + 128] = mem[_89 + 140 len 20]
        mem[t + 160] = mem[_89 + 182 len 10]
        mem[t + 192] = bool(mem[_89 + 192])
        mem[t + 224] = bool(mem[_89 + 224])
        idx = idx + 1
        s = s + 32
        t = t + 256
        continue 
    return memory
      from mem[64]
       len _77 + (256 * _78) + -mem[64] + 64
}

function openPosition(uint256 arg1, bool arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    if msg.value / 10^10 < sub_eee8a168:
        revert with 0, '!margin'
    if arg3 < 100 * 10^6:
        revert with 0, '!leverage'
    if not product[arg1].field_248:
        revert with 0, '!product-active'
    if arg3 > product[arg1].field_160:
        revert with 0, '!max-leverage'
    if msg.value / 10^10 and arg3 > -1 / msg.value / 10^10:
        revert with 0, 17
    if not arg2:
        if product[arg1].field_368 > -(msg.value / 10^10 * arg3 / 100 * 10^6 % 281474976710656) + test266151307():
            revert with 0, 17
        product[arg1].field_368 = (msg.value / 10^10 * arg3 / 100 * 10^6 % 281474976710656) + product[arg1].field_368 % 281474976710656
        if product[arg1].field_256 > !product[arg1].field_320:
            revert with 0, 17
        if product[arg1].field_368 > product[arg1].field_256 + product[arg1].field_320:
            revert with 0, '!exposure-short'
    else:
        if product[arg1].field_320 > -(msg.value / 10^10 * arg3 / 100 * 10^6 % 281474976710656) + test266151307():
            revert with 0, 17
        product[arg1].field_320 = (msg.value / 10^10 * arg3 / 100 * 10^6 % 281474976710656) + product[arg1].field_320 % 281474976710656
        if product[arg1].field_256 > !product[arg1].field_368:
            revert with 0, 17
        if product[arg1].field_320 > product[arg1].field_256 + product[arg1].field_368:
            revert with 0, '!exposure-long'
    if not product[arg1].field_0:
        revert with 0, '!feed-error'
    require ext_code.size(product[arg1].field_0)
    staticcall product[arg1].field_0.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] <= 0:
        revert with 0, '!price'
    if ext_call.return_data[96] <= 0:
        revert with 0, '!timeStamp'
    require ext_code.size(product[arg1].field_0)
    staticcall product[arg1].field_0.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 8 == ext_call.return_data[31 len 1]:
        if ext_call.return_data[32] and product[arg1].field_232 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if not arg2:
            if ext_call.return_data[32] < ext_call.return_data[32] * product[arg1].field_232 / 10000:
                revert with 0, 17
            if nextPositionId == -1:
                revert with 0, 17
            nextPositionId++
            stor9[stor3].field_0 = uint64(arg1)
            stor9[stor3].field_64 = uint64(arg3)
            stor9[stor3].field_128 = uint64(ext_call.return_data[32] - (ext_call.return_data[32] * product[arg1].field_232 / 10000))
            stor9[stor3].field_192 = uint64(msg.value / 10^10)
            stor9[stor3].field_256 = msg.sender
            stor9[stor3].field_416 = Mask(80, 0, block.timestamp)
            stor9[stor3].field_496 = uint16(arg2)
            stor9[stor3].field_504 = 1
            emit NewPosition(arg2, ext_call.return_data[32] - (ext_call.return_data[32] * product[arg1].field_232 / 10000), msg.value / 10^10, arg3, nextPositionId, msg.sender, arg1);
        else:
            if ext_call.return_data[32] > !(ext_call.return_data[32] * product[arg1].field_232 / 10000):
                revert with 0, 17
            if nextPositionId == -1:
                revert with 0, 17
            nextPositionId++
            stor9[stor3].field_0 = uint64(arg1)
            stor9[stor3].field_64 = uint64(arg3)
            stor9[stor3].field_128 = uint64(ext_call.return_data[32] + (ext_call.return_data[32] * product[arg1].field_232 / 10000))
            stor9[stor3].field_192 = uint64(msg.value / 10^10)
            stor9[stor3].field_256 = msg.sender
            stor9[stor3].field_416 = Mask(80, 0, block.timestamp)
            stor9[stor3].field_496 = uint16(arg2)
            stor9[stor3].field_504 = 1
            emit NewPosition(arg2, ext_call.return_data[32] + (ext_call.return_data[32] * product[arg1].field_232 / 10000), msg.value / 10^10, arg3, nextPositionId, msg.sender, arg1);
    else:
        if not ext_call.return_data[31 len 1]:
            if ext_call.return_data[32] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if 100 * 10^6 * ext_call.return_data[32] and product[arg1].field_232 > -1 / 100 * 10^6 * ext_call.return_data[32]:
                revert with 0, 17
            if not arg2:
                if 100 * 10^6 * ext_call.return_data[32] < 100 * 10^6 * ext_call.return_data[32] * product[arg1].field_232 / 10000:
                    revert with 0, 17
                if nextPositionId == -1:
                    revert with 0, 17
                nextPositionId++
                stor9[stor3].field_0 = uint64(arg1)
                stor9[stor3].field_64 = uint64(arg3)
                stor9[stor3].field_128 = uint64((100 * 10^6 * ext_call.return_data[32]) - (100 * 10^6 * ext_call.return_data[32] * product[arg1].field_232 / 10000))
                stor9[stor3].field_192 = uint64(msg.value / 10^10)
                stor9[stor3].field_256 = msg.sender
                stor9[stor3].field_416 = Mask(80, 0, block.timestamp)
                stor9[stor3].field_496 = uint16(arg2)
                stor9[stor3].field_504 = 1
                emit NewPosition(arg2, (100 * 10^6 * ext_call.return_data[32]) - (100 * 10^6 * ext_call.return_data[32] * product[arg1].field_232 / 10000), msg.value / 10^10, arg3, nextPositionId, msg.sender, arg1);
            else:
                if 100 * 10^6 * ext_call.return_data[32] > !(100 * 10^6 * ext_call.return_data[32] * product[arg1].field_232 / 10000):
                    revert with 0, 17
                if nextPositionId == -1:
                    revert with 0, 17
                nextPositionId++
                stor9[stor3].field_0 = uint64(arg1)
                stor9[stor3].field_64 = uint64(arg3)
                stor9[stor3].field_128 = uint64((100 * 10^6 * ext_call.return_data[32]) + (100 * 10^6 * ext_call.return_data[32] * product[arg1].field_232 / 10000))
                stor9[stor3].field_192 = uint64(msg.value / 10^10)
                stor9[stor3].field_256 = msg.sender
                stor9[stor3].field_416 = Mask(80, 0, block.timestamp)
                stor9[stor3].field_496 = uint16(arg2)
                stor9[stor3].field_504 = 1
                emit NewPosition(arg2, (100 * 10^6 * ext_call.return_data[32]) + (100 * 10^6 * ext_call.return_data[32] * product[arg1].field_232 / 10000), msg.value / 10^10, arg3, nextPositionId, msg.sender, arg1);
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if ext_call.return_data[32] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                    revert with 0, 17
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                if 100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1] and product[arg1].field_232 > -1 / 100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not arg2:
                    if 100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1] < 100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1] * product[arg1].field_232 / 10000:
                        revert with 0, 17
                    if nextPositionId == -1:
                        revert with 0, 17
                    nextPositionId++
                    stor9[stor3].field_0 = uint64(arg1)
                    stor9[stor3].field_64 = uint64(arg3)
                    stor9[stor3].field_128 = uint64((100 * 10^6 * ext_call.return_data[32] / 10^uint8(ext_call.return_data[0])) - (100 * 10^6 * ext_call.return_data[32] / 10^uint8(ext_call.return_data[0]) * product[arg1].field_232 / 10000))
                    stor9[stor3].field_192 = uint64(msg.value / 10^10)
                    stor9[stor3].field_256 = msg.sender
                    stor9[stor3].field_416 = Mask(80, 0, block.timestamp)
                    stor9[stor3].field_496 = uint16(arg2)
                    stor9[stor3].field_504 = 1
                    emit NewPosition(arg2, (100 * 10^6 * ext_call.return_data[32] / 10^uint8(ext_call.return_data[0])) - (100 * 10^6 * ext_call.return_data[32] / 10^uint8(ext_call.return_data[0]) * product[arg1].field_232 / 10000), msg.value / 10^10, arg3, nextPositionId, msg.sender, arg1);
                else:
                    if 100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1] > !(100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1] * product[arg1].field_232 / 10000):
                        revert with 0, 17
                    if nextPositionId == -1:
                        revert with 0, 17
                    nextPositionId++
                    stor9[stor3].field_0 = uint64(arg1)
                    stor9[stor3].field_64 = uint64(arg3)
                    stor9[stor3].field_128 = uint64((100 * 10^6 * ext_call.return_data[32] / 10^uint8(ext_call.return_data[0])) + (100 * 10^6 * ext_call.return_data[32] / 10^uint8(ext_call.return_data[0]) * product[arg1].field_232 / 10000))
                    stor9[stor3].field_192 = uint64(msg.value / 10^10)
                    stor9[stor3].field_256 = msg.sender
                    stor9[stor3].field_416 = Mask(80, 0, block.timestamp)
                    stor9[stor3].field_496 = uint16(arg2)
                    stor9[stor3].field_504 = 1
                    emit NewPosition(arg2, (100 * 10^6 * ext_call.return_data[32] / 10^uint8(ext_call.return_data[0])) + (100 * 10^6 * ext_call.return_data[32] / 10^uint8(ext_call.return_data[0]) * product[arg1].field_232 / 10000), msg.value / 10^10, arg3, nextPositionId, msg.sender, arg1);
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                if 100 * 10^6 * ext_call.return_data[32] / s * t and product[arg1].field_232 > -1 / 100 * 10^6 * ext_call.return_data[32] / s * t:
                    revert with 0, 17
                if not arg2:
                    if 100 * 10^6 * ext_call.return_data[32] / s * t < 100 * 10^6 * ext_call.return_data[32] / s * t * product[arg1].field_232 / 10000:
                        revert with 0, 17
                    if nextPositionId == -1:
                        revert with 0, 17
                    nextPositionId++
                    stor9[stor3].field_0 = uint64(arg1)
                    stor9[stor3].field_64 = uint64(arg3)
                    stor9[stor3].field_128 = uint64((100 * 10^6 * ext_call.return_data[32] / s * t) - (100 * 10^6 * ext_call.return_data[32] / s * t * product[arg1].field_232 / 10000))
                    stor9[stor3].field_192 = uint64(msg.value / 10^10)
                    stor9[stor3].field_256 = msg.sender
                    stor9[stor3].field_416 = Mask(80, 0, block.timestamp)
                    stor9[stor3].field_496 = uint16(arg2)
                    stor9[stor3].field_504 = 1
                    emit NewPosition(arg2, (100 * 10^6 * ext_call.return_data[32] / s * t) - (100 * 10^6 * ext_call.return_data[32] / s * t * product[arg1].field_232 / 10000), msg.value / 10^10, arg3, nextPositionId, msg.sender, arg1);
                else:
                    if 100 * 10^6 * ext_call.return_data[32] / s * t > !(100 * 10^6 * ext_call.return_data[32] / s * t * product[arg1].field_232 / 10000):
                        revert with 0, 17
                    if nextPositionId == -1:
                        revert with 0, 17
                    nextPositionId++
                    stor9[stor3].field_0 = uint64(arg1)
                    stor9[stor3].field_64 = uint64(arg3)
                    stor9[stor3].field_128 = uint64((100 * 10^6 * ext_call.return_data[32] / s * t) + (100 * 10^6 * ext_call.return_data[32] / s * t * product[arg1].field_232 / 10000))
                    stor9[stor3].field_192 = uint64(msg.value / 10^10)
                    stor9[stor3].field_256 = msg.sender
                    stor9[stor3].field_416 = Mask(80, 0, block.timestamp)
                    stor9[stor3].field_496 = uint16(arg2)
                    stor9[stor3].field_504 = 1
                    emit NewPosition(arg2, (100 * 10^6 * ext_call.return_data[32] / s * t) + (100 * 10^6 * ext_call.return_data[32] / s * t * product[arg1].field_232 / 10000), msg.value / 10^10, arg3, nextPositionId, msg.sender, arg1);
}

function sub_8e28fc9e(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 9
        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_504:
                mem[0] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_0
                mem[32] = 7
                if not product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_0:
                    revert with 0, '!feed-error'
                require ext_code.size(product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_0)
                staticcall product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_0.latestRoundData() with:
                        gas gas_remaining wei
                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _75 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 160
                require mem[_75] == mem[_75 + 22 len 10]
                _77 = mem[_75 + 32]
                require mem[_75 + 128] == mem[_75 + 150 len 10]
                if mem[_75 + 32] <= 0:
                    revert with 0, '!price'
                if mem[_75 + 96] <= 0:
                    revert with 0, '!timeStamp'
                require ext_code.size(product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_0)
                staticcall product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_0.decimals() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _87 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_87] == mem[_87 + 31 len 1]
                if 8 == mem[_87 + 31 len 1]:
                    if _77 and product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 > -1 / _77:
                        revert with 0, 17
                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                        if _77 < _77 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000:
                            revert with 0, 17
                        if block.timestamp < stor9[cd[((32 * idx) + cd[4] + 36)]].field_416:
                            revert with 0, 17
                        if block.timestamp - stor9[cd[((32 * idx) + cd[4] + 36)]].field_416 >= product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_432:
                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 = uint64(_77 - (_77 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000))
                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = Mask(80, 0, block.timestamp)
                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_336 = 0
                        else:
                            if _77 - (_77 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) != stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 = uint64(_77 - (_77 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000))
                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = Mask(80, 0, block.timestamp)
                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_336 = 0
                        mem[mem[64]] = _77 - (_77 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                        emit NewPositionSettled((_77 - (_77 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)), cd[((32 * idx) + cd[4] + 36)], stor9[cd[((32 * idx) + cd[4] + 36)]].field_256);
                    else:
                        if _77 > !(_77 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000):
                            revert with 0, 17
                        if block.timestamp < stor9[cd[((32 * idx) + cd[4] + 36)]].field_416:
                            revert with 0, 17
                        if block.timestamp - stor9[cd[((32 * idx) + cd[4] + 36)]].field_416 >= product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_432:
                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 = uint64(_77 + (_77 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000))
                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = Mask(80, 0, block.timestamp)
                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_336 = 0
                        else:
                            if _77 + (_77 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) != stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 = uint64(_77 + (_77 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000))
                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = Mask(80, 0, block.timestamp)
                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_336 = 0
                        mem[mem[64]] = _77 + (_77 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                        emit NewPositionSettled((_77 + (_77 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)), cd[((32 * idx) + cd[4] + 36)], stor9[cd[((32 * idx) + cd[4] + 36)]].field_256);
                else:
                    if not mem[_87 + 31 len 1]:
                        if _77 > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                            revert with 0, 17
                        if 100 * 10^6 * _77 and product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 > -1 / 100 * 10^6 * _77:
                            revert with 0, 17
                        if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                            if 100 * 10^6 * _77 < 100 * 10^6 * _77 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000:
                                revert with 0, 17
                            if block.timestamp < stor9[cd[((32 * idx) + cd[4] + 36)]].field_416:
                                revert with 0, 17
                            if block.timestamp - stor9[cd[((32 * idx) + cd[4] + 36)]].field_416 >= product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_432:
                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 = uint64((100 * 10^6 * _77) - (100 * 10^6 * _77 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000))
                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = Mask(80, 0, block.timestamp)
                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_336 = 0
                            else:
                                if (100 * 10^6 * _77) - (100 * 10^6 * _77 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) != stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 = uint64((100 * 10^6 * _77) - (100 * 10^6 * _77 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000))
                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = Mask(80, 0, block.timestamp)
                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_336 = 0
                            mem[mem[64]] = (100 * 10^6 * _77) - (100 * 10^6 * _77 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                            emit NewPositionSettled(((100 * 10^6 * _77) - (100 * 10^6 * _77 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)), cd[((32 * idx) + cd[4] + 36)], stor9[cd[((32 * idx) + cd[4] + 36)]].field_256);
                        else:
                            if 100 * 10^6 * _77 > !(100 * 10^6 * _77 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000):
                                revert with 0, 17
                            if block.timestamp < stor9[cd[((32 * idx) + cd[4] + 36)]].field_416:
                                revert with 0, 17
                            if block.timestamp - stor9[cd[((32 * idx) + cd[4] + 36)]].field_416 >= product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_432:
                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 = uint64((100 * 10^6 * _77) + (100 * 10^6 * _77 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000))
                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = Mask(80, 0, block.timestamp)
                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_336 = 0
                            else:
                                if (100 * 10^6 * _77) + (100 * 10^6 * _77 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) != stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 = uint64((100 * 10^6 * _77) + (100 * 10^6 * _77 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000))
                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = Mask(80, 0, block.timestamp)
                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_336 = 0
                            mem[mem[64]] = (100 * 10^6 * _77) + (100 * 10^6 * _77 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                            emit NewPositionSettled(((100 * 10^6 * _77) + (100 * 10^6 * _77 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)), cd[((32 * idx) + cd[4] + 36)], stor9[cd[((32 * idx) + cd[4] + 36)]].field_256);
                    else:
                        if bool(bool(mem[_87 + 31 len 1] < 78)) or bool(bool(mem[_87 + 31 len 1] < 32)):
                            if _77 > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                                revert with 0, 17
                            if not 10^mem[_87 + 31 len 1]:
                                revert with 0, 18
                            if 100 * 10^6 * _77 / 10^mem[_87 + 31 len 1] and product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 > -1 / 100 * 10^6 * _77 / 10^mem[_87 + 31 len 1]:
                                revert with 0, 17
                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                if 100 * 10^6 * _77 / 10^mem[_87 + 31 len 1] < 100 * 10^6 * _77 / 10^mem[_87 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000:
                                    revert with 0, 17
                                if block.timestamp < stor9[cd[((32 * idx) + cd[4] + 36)]].field_416:
                                    revert with 0, 17
                                if block.timestamp - stor9[cd[((32 * idx) + cd[4] + 36)]].field_416 >= product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_432:
                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 = uint64((100 * 10^6 * _77 / 10^mem[_87 + 31 len 1]) - (100 * 10^6 * _77 / 10^mem[_87 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000))
                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = Mask(80, 0, block.timestamp)
                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_336 = 0
                                else:
                                    if (100 * 10^6 * _77 / 10^mem[_87 + 31 len 1]) - (100 * 10^6 * _77 / 10^mem[_87 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) != stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 = uint64((100 * 10^6 * _77 / 10^mem[_87 + 31 len 1]) - (100 * 10^6 * _77 / 10^mem[_87 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000))
                                        stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = Mask(80, 0, block.timestamp)
                                        stor9[cd[((32 * idx) + cd[4] + 36)]].field_336 = 0
                                mem[mem[64]] = (100 * 10^6 * _77 / 10^mem[_87 + 31 len 1]) - (100 * 10^6 * _77 / 10^mem[_87 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                            else:
                                if 100 * 10^6 * _77 / 10^mem[_87 + 31 len 1] > !(100 * 10^6 * _77 / 10^mem[_87 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000):
                                    revert with 0, 17
                                if block.timestamp < stor9[cd[((32 * idx) + cd[4] + 36)]].field_416:
                                    revert with 0, 17
                                if block.timestamp - stor9[cd[((32 * idx) + cd[4] + 36)]].field_416 >= product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_432:
                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 = uint64((100 * 10^6 * _77 / 10^mem[_87 + 31 len 1]) + (100 * 10^6 * _77 / 10^mem[_87 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000))
                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = Mask(80, 0, block.timestamp)
                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_336 = 0
                                else:
                                    if (100 * 10^6 * _77 / 10^mem[_87 + 31 len 1]) + (100 * 10^6 * _77 / 10^mem[_87 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) != stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 = uint64((100 * 10^6 * _77 / 10^mem[_87 + 31 len 1]) + (100 * 10^6 * _77 / 10^mem[_87 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000))
                                        stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = Mask(80, 0, block.timestamp)
                                        stor9[cd[((32 * idx) + cd[4] + 36)]].field_336 = 0
                                mem[mem[64]] = (100 * 10^6 * _77 / 10^mem[_87 + 31 len 1]) + (100 * 10^6 * _77 / 10^mem[_87 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                            emit NewPositionSettled(mem[mem[64]], cd[((32 * idx) + cd[4] + 36)], stor9[cd[((32 * idx) + cd[4] + 36)]].field_256);
                        else:
                            t = 10
                            u = 1
                            s = mem[_87 + 31 len 1]
                            while s > 1:
                                if t > -1 / t:
                                    revert with 0, 17
                                if not bool(s):
                                    t = t * t
                                    u = u
                                    s = uint255(s) * 0.5
                                    continue 
                                t = t * t
                                u = t * u
                                s = uint255(s) * 0.5
                                continue 
                            if u > -1 / t:
                                revert with 0, 17
                            if _77 > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                                revert with 0, 17
                            if not t * u:
                                revert with 0, 18
                            if 100 * 10^6 * _77 / t * u and product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 > -1 / 100 * 10^6 * _77 / t * u:
                                revert with 0, 17
                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                if 100 * 10^6 * _77 / t * u < 100 * 10^6 * _77 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000:
                                    revert with 0, 17
                                if block.timestamp < stor9[cd[((32 * idx) + cd[4] + 36)]].field_416:
                                    revert with 0, 17
                                if block.timestamp - stor9[cd[((32 * idx) + cd[4] + 36)]].field_416 >= product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_432:
                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 = uint64((100 * 10^6 * _77 / t * u) - (100 * 10^6 * _77 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000))
                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = Mask(80, 0, block.timestamp)
                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_336 = 0
                                else:
                                    if (100 * 10^6 * _77 / t * u) - (100 * 10^6 * _77 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) != stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 = uint64((100 * 10^6 * _77 / t * u) - (100 * 10^6 * _77 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000))
                                        stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = Mask(80, 0, block.timestamp)
                                        stor9[cd[((32 * idx) + cd[4] + 36)]].field_336 = 0
                                mem[mem[64]] = (100 * 10^6 * _77 / t * u) - (100 * 10^6 * _77 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                emit NewPositionSettled(((100 * 10^6 * _77 / t * u) - (100 * 10^6 * _77 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)), cd[((32 * idx) + cd[4] + 36)], stor9[cd[((32 * idx) + cd[4] + 36)]].field_256);
                            else:
                                if 100 * 10^6 * _77 / t * u > !(100 * 10^6 * _77 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000):
                                    revert with 0, 17
                                if block.timestamp < stor9[cd[((32 * idx) + cd[4] + 36)]].field_416:
                                    revert with 0, 17
                                if block.timestamp - stor9[cd[((32 * idx) + cd[4] + 36)]].field_416 >= product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_432:
                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 = uint64((100 * 10^6 * _77 / t * u) + (100 * 10^6 * _77 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000))
                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = Mask(80, 0, block.timestamp)
                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_336 = 0
                                else:
                                    if (100 * 10^6 * _77 / t * u) + (100 * 10^6 * _77 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) != stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 = uint64((100 * 10^6 * _77 / t * u) + (100 * 10^6 * _77 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000))
                                        stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = Mask(80, 0, block.timestamp)
                                        stor9[cd[((32 * idx) + cd[4] + 36)]].field_336 = 0
                                mem[mem[64]] = (100 * 10^6 * _77 / t * u) + (100 * 10^6 * _77 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                emit NewPositionSettled(((100 * 10^6 * _77 / t * u) + (100 * 10^6 * _77 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)), cd[((32 * idx) + cd[4] + 36)], stor9[cd[((32 * idx) + cd[4] + 36)]].field_256);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_0cd850e0(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 9
            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_504:
                    mem[0] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_0
                    mem[32] = 7
                    if not product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_0:
                        revert with 0, '!feed-error'
                    require ext_code.size(product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_0)
                    staticcall product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_0.latestRoundData() with:
                            gas gas_remaining wei
                    mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _102 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 160
                    require mem[_102] == mem[_102 + 22 len 10]
                    _106 = mem[_102 + 32]
                    require mem[_102 + 128] == mem[_102 + 150 len 10]
                    if mem[_102 + 32] <= 0:
                        revert with 0, '!price'
                    if mem[_102 + 96] <= 0:
                        revert with 0, '!timeStamp'
                    require ext_code.size(product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_0)
                    staticcall product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_0.decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _126 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_126] == mem[_126 + 31 len 1]
                    if 8 == mem[_126 + 31 len 1]:
                        if _106 and product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 > -1 / _106:
                            revert with 0, 17
                        if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                            if _106 < _106 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000:
                                revert with 0, 17
                            if block.timestamp < stor9[cd[((32 * idx) + cd[4] + 36)]].field_416:
                                revert with 0, 17
                            if block.timestamp - stor9[cd[((32 * idx) + cd[4] + 36)]].field_416 >= product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_432:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                            else:
                                if _106 - (_106 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) != stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                        else:
                            if _106 > !(_106 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000):
                                revert with 0, 17
                            if block.timestamp < stor9[cd[((32 * idx) + cd[4] + 36)]].field_416:
                                revert with 0, 17
                            if block.timestamp - stor9[cd[((32 * idx) + cd[4] + 36)]].field_416 >= product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_432:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                            else:
                                if _106 + (_106 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) != stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                    else:
                        if not mem[_126 + 31 len 1]:
                            if _106 > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                                revert with 0, 17
                            if 100 * 10^6 * _106 and product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 > -1 / 100 * 10^6 * _106:
                                revert with 0, 17
                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                if 100 * 10^6 * _106 < 100 * 10^6 * _106 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000:
                                    revert with 0, 17
                                if block.timestamp < stor9[cd[((32 * idx) + cd[4] + 36)]].field_416:
                                    revert with 0, 17
                                if block.timestamp - stor9[cd[((32 * idx) + cd[4] + 36)]].field_416 >= product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_432:
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                                else:
                                    if (100 * 10^6 * _106) - (100 * 10^6 * _106 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) != stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                            else:
                                if 100 * 10^6 * _106 > !(100 * 10^6 * _106 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000):
                                    revert with 0, 17
                                if block.timestamp < stor9[cd[((32 * idx) + cd[4] + 36)]].field_416:
                                    revert with 0, 17
                                if block.timestamp - stor9[cd[((32 * idx) + cd[4] + 36)]].field_416 >= product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_432:
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                                else:
                                    if (100 * 10^6 * _106) + (100 * 10^6 * _106 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) != stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                        else:
                            if bool(bool(mem[_126 + 31 len 1] < 78)) or bool(bool(mem[_126 + 31 len 1] < 32)):
                                if _106 > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                                    revert with 0, 17
                                if not 10^mem[_126 + 31 len 1]:
                                    revert with 0, 18
                                if 100 * 10^6 * _106 / 10^mem[_126 + 31 len 1] and product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 > -1 / 100 * 10^6 * _106 / 10^mem[_126 + 31 len 1]:
                                    revert with 0, 17
                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                    if 100 * 10^6 * _106 / 10^mem[_126 + 31 len 1] < 100 * 10^6 * _106 / 10^mem[_126 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000:
                                        revert with 0, 17
                                    if block.timestamp < stor9[cd[((32 * idx) + cd[4] + 36)]].field_416:
                                        revert with 0, 17
                                    if block.timestamp - stor9[cd[((32 * idx) + cd[4] + 36)]].field_416 >= product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_432:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                                    else:
                                        if (100 * 10^6 * _106 / 10^mem[_126 + 31 len 1]) - (100 * 10^6 * _106 / 10^mem[_126 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) != stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                                else:
                                    if 100 * 10^6 * _106 / 10^mem[_126 + 31 len 1] > !(100 * 10^6 * _106 / 10^mem[_126 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000):
                                        revert with 0, 17
                                    if block.timestamp < stor9[cd[((32 * idx) + cd[4] + 36)]].field_416:
                                        revert with 0, 17
                                    if block.timestamp - stor9[cd[((32 * idx) + cd[4] + 36)]].field_416 >= product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_432:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                                    else:
                                        if (100 * 10^6 * _106 / 10^mem[_126 + 31 len 1]) + (100 * 10^6 * _106 / 10^mem[_126 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) != stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                            else:
                                t = 10
                                u = 1
                                s = mem[_126 + 31 len 1]
                                while s > 1:
                                    if t > -1 / t:
                                        revert with 0, 17
                                    if not bool(s):
                                        t = t * t
                                        u = u
                                        s = uint255(s) * 0.5
                                        continue 
                                    t = t * t
                                    u = t * u
                                    s = uint255(s) * 0.5
                                    continue 
                                if u > -1 / t:
                                    revert with 0, 17
                                if _106 > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                                    revert with 0, 17
                                if not t * u:
                                    revert with 0, 18
                                if 100 * 10^6 * _106 / t * u and product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 > -1 / 100 * 10^6 * _106 / t * u:
                                    revert with 0, 17
                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                    if 100 * 10^6 * _106 / t * u < 100 * 10^6 * _106 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000:
                                        revert with 0, 17
                                    if block.timestamp < stor9[cd[((32 * idx) + cd[4] + 36)]].field_416:
                                        revert with 0, 17
                                    if block.timestamp - stor9[cd[((32 * idx) + cd[4] + 36)]].field_416 >= product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_432:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                                    else:
                                        if (100 * 10^6 * _106 / t * u) - (100 * 10^6 * _106 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) != stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                                else:
                                    if 100 * 10^6 * _106 / t * u > !(100 * 10^6 * _106 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000):
                                        revert with 0, 17
                                    if block.timestamp < stor9[cd[((32 * idx) + cd[4] + 36)]].field_416:
                                        revert with 0, 17
                                    if block.timestamp - stor9[cd[((32 * idx) + cd[4] + 36)]].field_416 >= product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_432:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                                    else:
                                        if (100 * 10^6 * _106 / t * u) + (100 * 10^6 * _106 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) != stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 9
            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_504:
                    mem[0] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_0
                    mem[32] = 7
                    if not product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_0:
                        revert with 0, '!feed-error'
                    require ext_code.size(product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_0)
                    staticcall product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_0.latestRoundData() with:
                            gas gas_remaining wei
                    mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _103 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 160
                    require mem[_103] == mem[_103 + 22 len 10]
                    _110 = mem[_103 + 32]
                    require mem[_103 + 128] == mem[_103 + 150 len 10]
                    if mem[_103 + 32] <= 0:
                        revert with 0, '!price'
                    if mem[_103 + 96] <= 0:
                        revert with 0, '!timeStamp'
                    require ext_code.size(product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_0)
                    staticcall product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_0.decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _127 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_127] == mem[_127 + 31 len 1]
                    if 8 == mem[_127 + 31 len 1]:
                        if _110 and product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 > -1 / _110:
                            revert with 0, 17
                        if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                            if _110 < _110 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000:
                                revert with 0, 17
                            if block.timestamp < stor9[cd[((32 * idx) + cd[4] + 36)]].field_416:
                                revert with 0, 17
                            if block.timestamp - stor9[cd[((32 * idx) + cd[4] + 36)]].field_416 >= product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_432:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                            else:
                                if _110 - (_110 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) != stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                        else:
                            if _110 > !(_110 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000):
                                revert with 0, 17
                            if block.timestamp < stor9[cd[((32 * idx) + cd[4] + 36)]].field_416:
                                revert with 0, 17
                            if block.timestamp - stor9[cd[((32 * idx) + cd[4] + 36)]].field_416 >= product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_432:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                            else:
                                if _110 + (_110 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) != stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                    else:
                        if not mem[_127 + 31 len 1]:
                            if _110 > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                                revert with 0, 17
                            if 100 * 10^6 * _110 and product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 > -1 / 100 * 10^6 * _110:
                                revert with 0, 17
                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                if 100 * 10^6 * _110 < 100 * 10^6 * _110 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000:
                                    revert with 0, 17
                                if block.timestamp < stor9[cd[((32 * idx) + cd[4] + 36)]].field_416:
                                    revert with 0, 17
                                if block.timestamp - stor9[cd[((32 * idx) + cd[4] + 36)]].field_416 >= product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_432:
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                                else:
                                    if (100 * 10^6 * _110) - (100 * 10^6 * _110 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) != stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                            else:
                                if 100 * 10^6 * _110 > !(100 * 10^6 * _110 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000):
                                    revert with 0, 17
                                if block.timestamp < stor9[cd[((32 * idx) + cd[4] + 36)]].field_416:
                                    revert with 0, 17
                                if block.timestamp - stor9[cd[((32 * idx) + cd[4] + 36)]].field_416 >= product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_432:
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                                else:
                                    if (100 * 10^6 * _110) + (100 * 10^6 * _110 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) != stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                        else:
                            if bool(bool(mem[_127 + 31 len 1] < 78)) or bool(bool(mem[_127 + 31 len 1] < 32)):
                                if _110 > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                                    revert with 0, 17
                                if not 10^mem[_127 + 31 len 1]:
                                    revert with 0, 18
                                if 100 * 10^6 * _110 / 10^mem[_127 + 31 len 1] and product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 > -1 / 100 * 10^6 * _110 / 10^mem[_127 + 31 len 1]:
                                    revert with 0, 17
                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                    if 100 * 10^6 * _110 / 10^mem[_127 + 31 len 1] < 100 * 10^6 * _110 / 10^mem[_127 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000:
                                        revert with 0, 17
                                    if block.timestamp < stor9[cd[((32 * idx) + cd[4] + 36)]].field_416:
                                        revert with 0, 17
                                    if block.timestamp - stor9[cd[((32 * idx) + cd[4] + 36)]].field_416 >= product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_432:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                                    else:
                                        if (100 * 10^6 * _110 / 10^mem[_127 + 31 len 1]) - (100 * 10^6 * _110 / 10^mem[_127 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) != stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                                else:
                                    if 100 * 10^6 * _110 / 10^mem[_127 + 31 len 1] > !(100 * 10^6 * _110 / 10^mem[_127 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000):
                                        revert with 0, 17
                                    if block.timestamp < stor9[cd[((32 * idx) + cd[4] + 36)]].field_416:
                                        revert with 0, 17
                                    if block.timestamp - stor9[cd[((32 * idx) + cd[4] + 36)]].field_416 >= product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_432:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                                    else:
                                        if (100 * 10^6 * _110 / 10^mem[_127 + 31 len 1]) + (100 * 10^6 * _110 / 10^mem[_127 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) != stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                            else:
                                t = 10
                                u = 1
                                s = mem[_127 + 31 len 1]
                                while s > 1:
                                    if t > -1 / t:
                                        revert with 0, 17
                                    if not bool(s):
                                        t = t * t
                                        u = u
                                        s = uint255(s) * 0.5
                                        continue 
                                    t = t * t
                                    u = t * u
                                    s = uint255(s) * 0.5
                                    continue 
                                if u > -1 / t:
                                    revert with 0, 17
                                if _110 > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                                    revert with 0, 17
                                if not t * u:
                                    revert with 0, 18
                                if 100 * 10^6 * _110 / t * u and product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 > -1 / 100 * 10^6 * _110 / t * u:
                                    revert with 0, 17
                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                    if 100 * 10^6 * _110 / t * u < 100 * 10^6 * _110 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000:
                                        revert with 0, 17
                                    if block.timestamp < stor9[cd[((32 * idx) + cd[4] + 36)]].field_416:
                                        revert with 0, 17
                                    if block.timestamp - stor9[cd[((32 * idx) + cd[4] + 36)]].field_416 >= product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_432:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                                    else:
                                        if (100 * 10^6 * _110 / t * u) - (100 * 10^6 * _110 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) != stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                                else:
                                    if 100 * 10^6 * _110 / t * u > !(100 * 10^6 * _110 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000):
                                        revert with 0, 17
                                    if block.timestamp < stor9[cd[((32 * idx) + cd[4] + 36)]].field_416:
                                        revert with 0, 17
                                    if block.timestamp - stor9[cd[((32 * idx) + cd[4] + 36)]].field_416 >= product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_432:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                                    else:
                                        if (100 * 10^6 * _110 / t * u) + (100 * 10^6 * _110 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) != stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_4d452ec0(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 9
        _2482 = mem[64]
        mem[64] = mem[64] + 256
        mem[_2482] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_0
        mem[_2482 + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
        mem[_2482 + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
        mem[_2482 + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
        mem[_2482 + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_256
        mem[_2482 + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_416
        mem[_2482 + 192] = bool(stor9[cd[((32 * idx) + cd[4] + 36)]].field_496)
        mem[_2482 + 224] = bool(stor9[cd[((32 * idx) + cd[4] + 36)]].field_504)
        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_504:
                mem[0] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_0
                mem[32] = 7
                if not product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_0:
                    revert with 0, '!feed-error'
                require ext_code.size(product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_0)
                staticcall product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_0.latestRoundData() with:
                        gas gas_remaining wei
                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2491 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 160
                require mem[_2491] == mem[_2491 + 22 len 10]
                _2493 = mem[_2491 + 32]
                require mem[_2491 + 128] == mem[_2491 + 150 len 10]
                if mem[_2491 + 32] <= 0:
                    revert with 0, '!price'
                if mem[_2491 + 96] <= 0:
                    revert with 0, '!timeStamp'
                require ext_code.size(product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_0)
                staticcall product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_0.decimals() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2503 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2504 = mem[_2503]
                require mem[_2503] == mem[_2503 + 31 len 1]
                if 8 == mem[_2503 + 31 len 1]:
                    if _2493 and product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 > -1 / _2493:
                        revert with 0, 17
                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                        if _2493 < _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000:
                            revert with 0, 17
                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 and product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                            revert with 0, 17
                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_64:
                            revert with 0, 18
                        if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 > !(10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                revert with 0, 17
                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                    if _2493 - (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                        if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                            revert with 0, 17
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                            revert with 0, 17
                                        if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                            revert with 0, 17
                                        if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                            revert with 0, 17
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                            revert with 0, 17
                                        if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                            else:
                                                if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                    revert with 0, 17
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                        else:
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                    revert with 0, 17
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                        mem[mem[64] + 32] = _2493 - (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                        mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                        mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _2493 - (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 9
                                        stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                        mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                        emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                            else:
                                if _2493 - (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) <= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                    if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                        revert with 0, 17
                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                        revert with 0, 17
                                    if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                        revert with 0, 17
                                    Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                        revert with 0, 17
                                    if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                        revert with 0, 17
                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                        revert with 0, 17
                                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                        else:
                                            if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                revert with 0, 17
                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                    else:
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                        else:
                                            if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                revert with 0, 17
                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                    mem[mem[64] + 32] = _2493 - (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                    mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                    mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                    mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                    mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                    mem[mem[64] + 192] = 1
                                    mem[mem[64] + 224] = 1
                                    emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _2493 - (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                    mem[32] = 9
                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                    mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                    mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                    emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                else:
                                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                        if _2493 - (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                            if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                revert with 0, 17
                                            if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                revert with 0, 17
                                            if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                revert with 0, 17
                                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            else:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            mem[mem[64] + 32] = _2493 - (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                            mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _2493 - (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 9
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                            mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                            emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                        else:
                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 < 10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                revert with 0, 17
                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                    if _2493 - (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                        if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                            revert with 0, 17
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                            revert with 0, 17
                                        if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                            revert with 0, 17
                                        if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                            revert with 0, 17
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                            revert with 0, 17
                                        if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                            else:
                                                if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                    revert with 0, 17
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                        else:
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                    revert with 0, 17
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                        mem[mem[64] + 32] = _2493 - (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                        mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                        mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _2493 - (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 9
                                        stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                        mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                        emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                            else:
                                if _2493 - (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) <= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                    if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                        revert with 0, 17
                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                        revert with 0, 17
                                    if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                        revert with 0, 17
                                    Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                        revert with 0, 17
                                    if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                        revert with 0, 17
                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                        revert with 0, 17
                                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                        else:
                                            if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                revert with 0, 17
                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                    else:
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                        else:
                                            if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                revert with 0, 17
                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                    mem[mem[64] + 32] = _2493 - (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                    mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                    mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                    mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                    mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                    mem[mem[64] + 192] = 1
                                    mem[mem[64] + 224] = 1
                                    emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _2493 - (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                    mem[32] = 9
                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                    mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                    mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                    emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                else:
                                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                        if _2493 - (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                            if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                revert with 0, 17
                                            if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                revert with 0, 17
                                            if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                revert with 0, 17
                                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            else:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            mem[mem[64] + 32] = _2493 - (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                            mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _2493 - (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 9
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                            mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                            emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                    else:
                        if _2493 > !(_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000):
                            revert with 0, 17
                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 and product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                            revert with 0, 17
                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 0, 17
                        if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_64:
                            revert with 0, 18
                        if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 > !(10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                revert with 0, 17
                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                    if _2493 + (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                        if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                            revert with 0, 17
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                            revert with 0, 17
                                        if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                            revert with 0, 17
                                        if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                            revert with 0, 17
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                            revert with 0, 17
                                        if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                            else:
                                                if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                    revert with 0, 17
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                        else:
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                    revert with 0, 17
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                        mem[mem[64] + 32] = _2493 + (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                        mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                        mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _2493 + (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 9
                                        stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                        mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                        emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                            else:
                                if _2493 + (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) <= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                    if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                        revert with 0, 17
                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                        revert with 0, 17
                                    if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                        revert with 0, 17
                                    Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                        revert with 0, 17
                                    if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                        revert with 0, 17
                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                        revert with 0, 17
                                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                        else:
                                            if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                revert with 0, 17
                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                    else:
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                        else:
                                            if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                revert with 0, 17
                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                    mem[mem[64] + 32] = _2493 + (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                    mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                    mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                    mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                    mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                    mem[mem[64] + 192] = 1
                                    mem[mem[64] + 224] = 1
                                    emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _2493 + (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                    mem[32] = 9
                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                    mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                    mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                    emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                else:
                                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                        if _2493 + (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                            if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                revert with 0, 17
                                            if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                revert with 0, 17
                                            if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                revert with 0, 17
                                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            else:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            mem[mem[64] + 32] = _2493 + (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                            mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _2493 + (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 9
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                            mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                            emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                        else:
                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 < 10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                revert with 0, 17
                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                    if _2493 + (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                        if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                            revert with 0, 17
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                            revert with 0, 17
                                        if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                            revert with 0, 17
                                        if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                            revert with 0, 17
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                            revert with 0, 17
                                        if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                            else:
                                                if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                    revert with 0, 17
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                        else:
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                    revert with 0, 17
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                        mem[mem[64] + 32] = _2493 + (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                        mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                        mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _2493 + (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 9
                                        stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                        mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                        emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                            else:
                                if _2493 + (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) <= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                    if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                        revert with 0, 17
                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                        revert with 0, 17
                                    if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                        revert with 0, 17
                                    Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                        revert with 0, 17
                                    if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                        revert with 0, 17
                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                        revert with 0, 17
                                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                        else:
                                            if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                revert with 0, 17
                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                    else:
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                        else:
                                            if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                revert with 0, 17
                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                    mem[mem[64] + 32] = _2493 + (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                    mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                    mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                    mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                    mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                    mem[mem[64] + 192] = 1
                                    mem[mem[64] + 224] = 1
                                    emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _2493 + (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                    mem[32] = 9
                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                    mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                    mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                    emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                else:
                                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                        if _2493 + (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                            if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                revert with 0, 17
                                            if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                revert with 0, 17
                                            if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                revert with 0, 17
                                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            else:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            mem[mem[64] + 32] = _2493 + (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                            mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _2493 + (_2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 9
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                            mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                            emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                else:
                    if not mem[_2503 + 31 len 1]:
                        if _2493 > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                            revert with 0, 17
                        if 100 * 10^6 * _2493 and product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 > -1 / 100 * 10^6 * _2493:
                            revert with 0, 17
                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                            if 100 * 10^6 * _2493 < 100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000:
                                revert with 0, 17
                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 and product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                revert with 0, 17
                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                revert with 0, 18
                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 > !(10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                    revert with 0, 17
                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                        if (100 * 10^6 * _2493) - (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                            if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                revert with 0, 17
                                            if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                revert with 0, 17
                                            if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                revert with 0, 17
                                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            else:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            mem[mem[64] + 32] = (100 * 10^6 * _2493) - (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                            mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493) - (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 9
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                            mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                            emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                else:
                                    if (100 * 10^6 * _2493) - (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) <= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                        if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                            revert with 0, 17
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                            revert with 0, 17
                                        if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                            revert with 0, 17
                                        if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                            revert with 0, 17
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                            revert with 0, 17
                                        if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                            else:
                                                if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                    revert with 0, 17
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                        else:
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                    revert with 0, 17
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                        mem[mem[64] + 32] = (100 * 10^6 * _2493) - (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                        mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                        mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493) - (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 9
                                        stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                        mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                        emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                    else:
                                        if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                            if (100 * 10^6 * _2493) - (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                                if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                    revert with 0, 17
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                    revert with 0, 17
                                                if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                    revert with 0, 17
                                                Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                    revert with 0, 17
                                                if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                    revert with 0, 17
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                    revert with 0, 17
                                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                    else:
                                                        if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                            revert with 0, 17
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                else:
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                    else:
                                                        if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                            revert with 0, 17
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                mem[mem[64] + 32] = (100 * 10^6 * _2493) - (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                                mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                mem[mem[64] + 192] = 1
                                                mem[mem[64] + 224] = 1
                                                emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493) - (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[32] = 9
                                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                                mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                                emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                            else:
                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 < 10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                    revert with 0, 17
                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                        if (100 * 10^6 * _2493) - (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                            if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                revert with 0, 17
                                            if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                revert with 0, 17
                                            if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                revert with 0, 17
                                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            else:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            mem[mem[64] + 32] = (100 * 10^6 * _2493) - (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                            mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493) - (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 9
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                            mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                            emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                else:
                                    if (100 * 10^6 * _2493) - (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) <= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                        if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                            revert with 0, 17
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                            revert with 0, 17
                                        if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                            revert with 0, 17
                                        if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                            revert with 0, 17
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                            revert with 0, 17
                                        if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                            else:
                                                if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                    revert with 0, 17
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                        else:
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                    revert with 0, 17
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                        mem[mem[64] + 32] = (100 * 10^6 * _2493) - (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                        mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                        mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493) - (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 9
                                        stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                        mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                        emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                    else:
                                        if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                            if (100 * 10^6 * _2493) - (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                                if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                    revert with 0, 17
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                    revert with 0, 17
                                                if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                    revert with 0, 17
                                                Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                    revert with 0, 17
                                                if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                    revert with 0, 17
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                    revert with 0, 17
                                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                    else:
                                                        if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                            revert with 0, 17
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                else:
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                    else:
                                                        if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                            revert with 0, 17
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                mem[mem[64] + 32] = (100 * 10^6 * _2493) - (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                                mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                mem[mem[64] + 192] = 1
                                                mem[mem[64] + 224] = 1
                                                emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493) - (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[32] = 9
                                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                                mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                                emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                        else:
                            if 100 * 10^6 * _2493 > !(100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000):
                                revert with 0, 17
                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 and product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                revert with 0, 17
                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 0, 17
                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                revert with 0, 18
                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 > !(10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                    revert with 0, 17
                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                        if (100 * 10^6 * _2493) + (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                            if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                revert with 0, 17
                                            if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                revert with 0, 17
                                            if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                revert with 0, 17
                                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            else:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            mem[mem[64] + 32] = (100 * 10^6 * _2493) + (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                            mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493) + (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 9
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                            mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                            emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                else:
                                    if (100 * 10^6 * _2493) + (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) <= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                        if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                            revert with 0, 17
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                            revert with 0, 17
                                        if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                            revert with 0, 17
                                        if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                            revert with 0, 17
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                            revert with 0, 17
                                        if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                            else:
                                                if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                    revert with 0, 17
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                        else:
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                    revert with 0, 17
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                        mem[mem[64] + 32] = (100 * 10^6 * _2493) + (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                        mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                        mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493) + (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 9
                                        stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                        mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                        emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                    else:
                                        if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                            if (100 * 10^6 * _2493) + (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                                if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                    revert with 0, 17
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                    revert with 0, 17
                                                if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                    revert with 0, 17
                                                Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                    revert with 0, 17
                                                if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                    revert with 0, 17
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                    revert with 0, 17
                                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                    else:
                                                        if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                            revert with 0, 17
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                else:
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                    else:
                                                        if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                            revert with 0, 17
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                mem[mem[64] + 32] = (100 * 10^6 * _2493) + (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                                mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                mem[mem[64] + 192] = 1
                                                mem[mem[64] + 224] = 1
                                                emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493) + (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[32] = 9
                                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                                mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                                emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                            else:
                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 < 10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                    revert with 0, 17
                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                        if (100 * 10^6 * _2493) + (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                            if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                revert with 0, 17
                                            if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                revert with 0, 17
                                            if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                revert with 0, 17
                                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            else:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            mem[mem[64] + 32] = (100 * 10^6 * _2493) + (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                            mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493) + (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 9
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                            mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                            emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                else:
                                    if (100 * 10^6 * _2493) + (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) <= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                        if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                            revert with 0, 17
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                            revert with 0, 17
                                        if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                            revert with 0, 17
                                        if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                            revert with 0, 17
                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                            revert with 0, 17
                                        if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                            else:
                                                if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                    revert with 0, 17
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                        else:
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                    revert with 0, 17
                                                product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                        mem[mem[64] + 32] = (100 * 10^6 * _2493) + (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                        mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                        mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493) + (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 9
                                        stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                        mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                        emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                    else:
                                        if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                            if (100 * 10^6 * _2493) + (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                                if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                    revert with 0, 17
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                    revert with 0, 17
                                                if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                    revert with 0, 17
                                                Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                    revert with 0, 17
                                                if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                    revert with 0, 17
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                    revert with 0, 17
                                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                    else:
                                                        if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                            revert with 0, 17
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                else:
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                    else:
                                                        if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                            revert with 0, 17
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                mem[mem[64] + 32] = (100 * 10^6 * _2493) + (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                                mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                mem[mem[64] + 192] = 1
                                                mem[mem[64] + 224] = 1
                                                emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493) + (100 * 10^6 * _2493 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[32] = 9
                                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                                mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                                emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                    else:
                        if bool(bool(mem[_2503 + 31 len 1] < 78)) or bool(bool(mem[_2503 + 31 len 1] < 32)):
                            if _2493 > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                                revert with 0, 17
                            if not 10^mem[_2503 + 31 len 1]:
                                revert with 0, 18
                            if 100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] and product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 > -1 / 100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1]:
                                revert with 0, 17
                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                if 100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] < 100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000:
                                    revert with 0, 17
                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 and product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                    revert with 0, 17
                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 0, 17
                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                    revert with 0, 18
                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 > !(10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                        revert with 0, 17
                                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                        if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                            if (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1]) - (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                                if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                    revert with 0, 17
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                    revert with 0, 17
                                                if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                    revert with 0, 17
                                                Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                    revert with 0, 17
                                                if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                    revert with 0, 17
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                    revert with 0, 17
                                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                    else:
                                                        if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                            revert with 0, 17
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                else:
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                    else:
                                                        if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                            revert with 0, 17
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                mem[mem[64] + 32] = (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1]) - (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                                mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                mem[mem[64] + 192] = 1
                                                mem[mem[64] + 224] = 1
                                                emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493 / 10^uint8(_2504)) - (100 * 10^6 * _2493 / 10^uint8(_2504) * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[32] = 9
                                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                                mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                                emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                    else:
                                        if (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1]) - (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) <= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                            if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                revert with 0, 17
                                            if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                revert with 0, 17
                                            if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                revert with 0, 17
                                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            else:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            mem[mem[64] + 32] = (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1]) - (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                            mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493 / 10^uint8(_2504)) - (100 * 10^6 * _2493 / 10^uint8(_2504) * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 9
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                            mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                            emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        else:
                                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                if (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1]) - (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                                    if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                        revert with 0, 17
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                        revert with 0, 17
                                                    if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                        revert with 0, 17
                                                    Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                        revert with 0, 17
                                                    if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                        revert with 0, 17
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                        revert with 0, 17
                                                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                        else:
                                                            if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                                revert with 0, 17
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                    else:
                                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                        else:
                                                            if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                                revert with 0, 17
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                    mem[mem[64] + 32] = (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1]) - (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                                    mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                    mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                    mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                    mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                    mem[mem[64] + 192] = 1
                                                    mem[mem[64] + 224] = 1
                                                    emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493 / 10^uint8(_2504)) - (100 * 10^6 * _2493 / 10^uint8(_2504) * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                    mem[32] = 9
                                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                    mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                                    mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                                    emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                else:
                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 < 10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                        revert with 0, 17
                                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                        if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                            if (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1]) - (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                                if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                    revert with 0, 17
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                    revert with 0, 17
                                                if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                    revert with 0, 17
                                                Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                    revert with 0, 17
                                                if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                    revert with 0, 17
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                    revert with 0, 17
                                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                    else:
                                                        if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                            revert with 0, 17
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                else:
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                    else:
                                                        if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                            revert with 0, 17
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                mem[mem[64] + 32] = (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1]) - (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                                mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                mem[mem[64] + 192] = 1
                                                mem[mem[64] + 224] = 1
                                                emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493 / 10^uint8(_2504)) - (100 * 10^6 * _2493 / 10^uint8(_2504) * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[32] = 9
                                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                                mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                                emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                    else:
                                        if (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1]) - (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) <= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                            if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                revert with 0, 17
                                            if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                revert with 0, 17
                                            if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                revert with 0, 17
                                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            else:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            mem[mem[64] + 32] = (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1]) - (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                            mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493 / 10^uint8(_2504)) - (100 * 10^6 * _2493 / 10^uint8(_2504) * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 9
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                            mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                            emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        else:
                                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                if (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1]) - (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                                    if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                        revert with 0, 17
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                        revert with 0, 17
                                                    if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                        revert with 0, 17
                                                    Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                        revert with 0, 17
                                                    if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                        revert with 0, 17
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                        revert with 0, 17
                                                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                        else:
                                                            if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                                revert with 0, 17
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                    else:
                                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                        else:
                                                            if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                                revert with 0, 17
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                    mem[mem[64] + 32] = (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1]) - (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                                    mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                    mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                    mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                    mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                    mem[mem[64] + 192] = 1
                                                    mem[mem[64] + 224] = 1
                                                    emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493 / 10^uint8(_2504)) - (100 * 10^6 * _2493 / 10^uint8(_2504) * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                    mem[32] = 9
                                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                    mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                                    mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                                    emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                            else:
                                if 100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] > !(100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000):
                                    revert with 0, 17
                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 and product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                    revert with 0, 17
                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 0, 17
                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                    revert with 0, 18
                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 > !(10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                        revert with 0, 17
                                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                        if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                            if (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1]) + (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                                if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                    revert with 0, 17
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                    revert with 0, 17
                                                if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                    revert with 0, 17
                                                Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                    revert with 0, 17
                                                if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                    revert with 0, 17
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                    revert with 0, 17
                                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                    else:
                                                        if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                            revert with 0, 17
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                else:
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                    else:
                                                        if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                            revert with 0, 17
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                mem[mem[64] + 32] = (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1]) + (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                                mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                mem[mem[64] + 192] = 1
                                                mem[mem[64] + 224] = 1
                                                emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493 / 10^uint8(_2504)) + (100 * 10^6 * _2493 / 10^uint8(_2504) * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[32] = 9
                                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                                mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                                emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                    else:
                                        if (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1]) + (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) <= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                            if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                revert with 0, 17
                                            if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                revert with 0, 17
                                            if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                revert with 0, 17
                                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            else:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            mem[mem[64] + 32] = (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1]) + (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                            mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493 / 10^uint8(_2504)) + (100 * 10^6 * _2493 / 10^uint8(_2504) * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 9
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                            mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                            emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        else:
                                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                if (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1]) + (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                                    if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                        revert with 0, 17
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                        revert with 0, 17
                                                    if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                        revert with 0, 17
                                                    Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                        revert with 0, 17
                                                    if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                        revert with 0, 17
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                        revert with 0, 17
                                                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                        else:
                                                            if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                                revert with 0, 17
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                    else:
                                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                        else:
                                                            if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                                revert with 0, 17
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                    mem[mem[64] + 32] = (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1]) + (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                                    mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                    mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                    mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                    mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                    mem[mem[64] + 192] = 1
                                                    mem[mem[64] + 224] = 1
                                                    emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493 / 10^uint8(_2504)) + (100 * 10^6 * _2493 / 10^uint8(_2504) * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                    mem[32] = 9
                                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                    mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                                    mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                                    emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                else:
                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 < 10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                        revert with 0, 17
                                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                        if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                            if (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1]) + (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                                if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                    revert with 0, 17
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                    revert with 0, 17
                                                if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                    revert with 0, 17
                                                Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                    revert with 0, 17
                                                if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                    revert with 0, 17
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                    revert with 0, 17
                                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                    else:
                                                        if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                            revert with 0, 17
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                else:
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                    else:
                                                        if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                            revert with 0, 17
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                mem[mem[64] + 32] = (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1]) + (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                                mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                mem[mem[64] + 192] = 1
                                                mem[mem[64] + 224] = 1
                                                emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493 / 10^uint8(_2504)) + (100 * 10^6 * _2493 / 10^uint8(_2504) * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[32] = 9
                                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                                mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                                emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                    else:
                                        if (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1]) + (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) <= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                            if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                revert with 0, 17
                                            if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                revert with 0, 17
                                            if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                revert with 0, 17
                                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            else:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            mem[mem[64] + 32] = (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1]) + (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                            mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493 / 10^uint8(_2504)) + (100 * 10^6 * _2493 / 10^uint8(_2504) * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 9
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                            mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                            emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        else:
                                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                if (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1]) + (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                                    if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                        revert with 0, 17
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                        revert with 0, 17
                                                    if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                        revert with 0, 17
                                                    Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                        revert with 0, 17
                                                    if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                        revert with 0, 17
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                        revert with 0, 17
                                                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                        else:
                                                            if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                                revert with 0, 17
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                    else:
                                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                        else:
                                                            if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                                revert with 0, 17
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                    mem[mem[64] + 32] = (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1]) + (100 * 10^6 * _2493 / 10^mem[_2503 + 31 len 1] * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                                    mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                    mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                    mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                    mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                    mem[mem[64] + 192] = 1
                                                    mem[mem[64] + 224] = 1
                                                    emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493 / 10^uint8(_2504)) + (100 * 10^6 * _2493 / 10^uint8(_2504) * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                    mem[32] = 9
                                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                    mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                                    mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                                    emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                        else:
                            t = 10
                            u = 1
                            s = mem[_2503 + 31 len 1]
                            while s > 1:
                                if t > -1 / t:
                                    revert with 0, 17
                                if not bool(s):
                                    t = t * t
                                    u = u
                                    s = uint255(s) * 0.5
                                    continue 
                                t = t * t
                                u = t * u
                                s = uint255(s) * 0.5
                                continue 
                            if u > -1 / t:
                                revert with 0, 17
                            if _2493 > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                                revert with 0, 17
                            if not t * u:
                                revert with 0, 18
                            if 100 * 10^6 * _2493 / t * u and product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 > -1 / 100 * 10^6 * _2493 / t * u:
                                revert with 0, 17
                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                if 100 * 10^6 * _2493 / t * u < 100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000:
                                    revert with 0, 17
                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 and product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                    revert with 0, 17
                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 0, 17
                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                    revert with 0, 18
                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 > !(10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                        revert with 0, 17
                                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                        if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                            if (100 * 10^6 * _2493 / t * u) - (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                                if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                    revert with 0, 17
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                    revert with 0, 17
                                                if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                    revert with 0, 17
                                                Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                    revert with 0, 17
                                                if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                    revert with 0, 17
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                    revert with 0, 17
                                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                    else:
                                                        if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                            revert with 0, 17
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                else:
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                    else:
                                                        if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                            revert with 0, 17
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                mem[mem[64] + 32] = (100 * 10^6 * _2493 / t * u) - (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                                mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                mem[mem[64] + 192] = 1
                                                mem[mem[64] + 224] = 1
                                                emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493 / t * u) - (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[32] = 9
                                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                                mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                                emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                    else:
                                        if (100 * 10^6 * _2493 / t * u) - (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) <= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                            if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                revert with 0, 17
                                            if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                revert with 0, 17
                                            if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                revert with 0, 17
                                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            else:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            mem[mem[64] + 32] = (100 * 10^6 * _2493 / t * u) - (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                            mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493 / t * u) - (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 9
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                            mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                            emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        else:
                                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                if (100 * 10^6 * _2493 / t * u) - (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                                    if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                        revert with 0, 17
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                        revert with 0, 17
                                                    if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                        revert with 0, 17
                                                    Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                        revert with 0, 17
                                                    if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                        revert with 0, 17
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                        revert with 0, 17
                                                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                        else:
                                                            if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                                revert with 0, 17
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                    else:
                                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                        else:
                                                            if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                                revert with 0, 17
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                    mem[mem[64] + 32] = (100 * 10^6 * _2493 / t * u) - (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                                    mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                    mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                    mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                    mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                    mem[mem[64] + 192] = 1
                                                    mem[mem[64] + 224] = 1
                                                    emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493 / t * u) - (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                    mem[32] = 9
                                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                    mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                                    mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                                    emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                else:
                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 < 10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                        revert with 0, 17
                                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                        if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                            if (100 * 10^6 * _2493 / t * u) - (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                                if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                    revert with 0, 17
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                    revert with 0, 17
                                                if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                    revert with 0, 17
                                                Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                    revert with 0, 17
                                                if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                    revert with 0, 17
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                    revert with 0, 17
                                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                    else:
                                                        if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                            revert with 0, 17
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                else:
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                    else:
                                                        if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                            revert with 0, 17
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                mem[mem[64] + 32] = (100 * 10^6 * _2493 / t * u) - (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                                mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                mem[mem[64] + 192] = 1
                                                mem[mem[64] + 224] = 1
                                                emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493 / t * u) - (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[32] = 9
                                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                                mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                                emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                    else:
                                        if (100 * 10^6 * _2493 / t * u) - (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) <= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                            if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                revert with 0, 17
                                            if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                revert with 0, 17
                                            if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                revert with 0, 17
                                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            else:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            mem[mem[64] + 32] = (100 * 10^6 * _2493 / t * u) - (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                            mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493 / t * u) - (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 9
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                            mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                            emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        else:
                                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                if (100 * 10^6 * _2493 / t * u) - (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                                    if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                        revert with 0, 17
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                        revert with 0, 17
                                                    if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                        revert with 0, 17
                                                    Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                        revert with 0, 17
                                                    if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                        revert with 0, 17
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                        revert with 0, 17
                                                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                        else:
                                                            if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                                revert with 0, 17
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                    else:
                                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                        else:
                                                            if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                                revert with 0, 17
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                    mem[mem[64] + 32] = (100 * 10^6 * _2493 / t * u) - (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                                    mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                    mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                    mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                    mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                    mem[mem[64] + 192] = 1
                                                    mem[mem[64] + 224] = 1
                                                    emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493 / t * u) - (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                    mem[32] = 9
                                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                    mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                                    mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                                    emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                            else:
                                if 100 * 10^6 * _2493 / t * u > !(100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000):
                                    revert with 0, 17
                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 and product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                    revert with 0, 17
                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_128 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 0, 17
                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                    revert with 0, 18
                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 > !(10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                        revert with 0, 17
                                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                        if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                            if (100 * 10^6 * _2493 / t * u) + (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                                if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                    revert with 0, 17
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                    revert with 0, 17
                                                if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                    revert with 0, 17
                                                Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                    revert with 0, 17
                                                if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                    revert with 0, 17
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                    revert with 0, 17
                                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                    else:
                                                        if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                            revert with 0, 17
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                else:
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                    else:
                                                        if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                            revert with 0, 17
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                mem[mem[64] + 32] = (100 * 10^6 * _2493 / t * u) + (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                                mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                mem[mem[64] + 192] = 1
                                                mem[mem[64] + 224] = 1
                                                emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493 / t * u) + (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[32] = 9
                                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                                mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                                emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                    else:
                                        if (100 * 10^6 * _2493 / t * u) + (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) <= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                            if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                revert with 0, 17
                                            if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                revert with 0, 17
                                            if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                revert with 0, 17
                                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            else:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            mem[mem[64] + 32] = (100 * 10^6 * _2493 / t * u) + (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                            mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493 / t * u) + (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 9
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                            mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                            emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        else:
                                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                if (100 * 10^6 * _2493 / t * u) + (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                                    if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                        revert with 0, 17
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                        revert with 0, 17
                                                    if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                        revert with 0, 17
                                                    Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                        revert with 0, 17
                                                    if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                        revert with 0, 17
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                        revert with 0, 17
                                                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                        else:
                                                            if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                                revert with 0, 17
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                    else:
                                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                        else:
                                                            if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                                revert with 0, 17
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                    mem[mem[64] + 32] = (100 * 10^6 * _2493 / t * u) + (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                                    mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                    mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                    mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                    mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                    mem[mem[64] + 192] = 1
                                                    mem[mem[64] + 224] = 1
                                                    emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493 / t * u) + (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                    mem[32] = 9
                                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                    mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                                    mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                                    emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                else:
                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 < 10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                        revert with 0, 17
                                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                        if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                            if (100 * 10^6 * _2493 / t * u) + (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                                if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                    revert with 0, 17
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                    revert with 0, 17
                                                if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                    revert with 0, 17
                                                Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                    revert with 0, 17
                                                if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                    revert with 0, 17
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                    revert with 0, 17
                                                if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                    else:
                                                        if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                            revert with 0, 17
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                else:
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                    else:
                                                        if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                            revert with 0, 17
                                                        product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                mem[mem[64] + 32] = (100 * 10^6 * _2493 / t * u) + (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                                mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                mem[mem[64] + 192] = 1
                                                mem[mem[64] + 224] = 1
                                                emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493 / t * u) + (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[32] = 9
                                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                                mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                                emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                    else:
                                        if (100 * 10^6 * _2493 / t * u) + (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) <= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                            if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                revert with 0, 17
                                            if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                revert with 0, 17
                                            if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                revert with 0, 17
                                            if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                revert with 0, 17
                                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            else:
                                                if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                        revert with 0, 17
                                                    product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                            mem[mem[64] + 32] = (100 * 10^6 * _2493 / t * u) + (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                            mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493 / t * u) + (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 9
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                            mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                            emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        else:
                                            if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                if (100 * 10^6 * _2493 / t * u) + (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000) >= stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                                    if 10000 < product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496:
                                                        revert with 0, 17
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 and -product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 + 10000 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_192:
                                                        revert with 0, 17
                                                    if Mask(96, 0, stor5.field_96) > -Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + test266151307():
                                                        revert with 0, 17
                                                    Mask(96, 0, stor5.field_96) = Mask(96, 0, Mask(96, 0, (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000) + Mask(96, 0, stor5.field_96))
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 < (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000:
                                                        revert with 0, 17
                                                    if 0 > !(stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)):
                                                        revert with 0, 17
                                                    if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 and stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / stor9[cd[((32 * idx) + cd[4] + 36)]].field_0:
                                                        revert with 0, 17
                                                    if not stor9[cd[((32 * idx) + cd[4] + 36)]].field_496:
                                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368:
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = 0
                                                        else:
                                                            if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                                revert with 0, 17
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_368 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                    else:
                                                        if stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                        else:
                                                            if product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656:
                                                                revert with 0, 17
                                                            product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - (stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 % 281474976710656) % 281474976710656
                                                    mem[mem[64] + 32] = (100 * 10^6 * _2493 / t * u) + (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000)
                                                    mem[mem[64] + 64] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                    mem[mem[64] + 96] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                    mem[mem[64] + 128] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                    mem[mem[64] + 160] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192
                                                    mem[mem[64] + 192] = 1
                                                    mem[mem[64] + 224] = 1
                                                    emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], (100 * 10^6 * _2493 / t * u) + (100 * 10^6 * _2493 / t * u * product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_232 / 10000), stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1, 1, stor9[cd[((32 * idx) + cd[4] + 36)]].field_256, stor9[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                    mem[32] = 9
                                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                    stor9[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                    mem[mem[64]] = (10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000
                                                    mem[mem[64] + 32] = stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000)
                                                    emit PositionLiquidated((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000, stor9[cd[((32 * idx) + cd[4] + 36)]].field_192 - ((10000 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) - (product[stor9[cd[((32 * idx) + cd[4] + 36)]].field_0].field_496 * stor9[cd[((32 * idx) + cd[4] + 36)]].field_192) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
