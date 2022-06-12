contract main {




// =====================  Runtime code  =====================


#
#  - transfer(bytes32[2][] arg1, bytes32[2] arg2, bytes32[2][] arg3, bytes32[2] arg4, bytes arg5)
#  - burn(bytes32[2] arg1, uint256 arg2, bytes32[2] arg3, bytes arg4, bytes arg5)
#  - burnTo(address arg1, bytes32[2] arg2, uint256 arg3, bytes32[2] arg4, bytes arg5, bytes arg6)
#
const currentTimestamp = block.timestamp


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint128 stor101; offset 160
address suterAgencyAddress;
uint256 stor101;
address stor103;
address stor104;
array of struct stor105;
array of struct stor106;
mapping of struct stor107;
mapping of uint256 lastRollOver;
array of uint256 stor109;
uint256 lastGlobalUpdate;
uint256 unit;
uint256 stor112;
uint256 epochLength;
uint256 epochBase;
uint256 burn_fee_multiplier;
uint256 burn_fee_dividend;
uint256 stor117;
uint256 stor118;
uint256 totalBalance;
uint256 totalUsers;
uint256 totalBurnFee;
uint256 totalTransferFee;
uint256 totalDeposits;
uint256 totalFundCount;
uint256 stor125;

function totalTransferFee() {
    return totalTransferFee
}

function totalBurnFee() {
    return totalBurnFee
}

function epochLength() {
    return epochLength
}

function lastGlobalUpdate() {
    return lastGlobalUpdate
}

function burn_fee_dividend() {
    return burn_fee_dividend
}

function totalDeposits() {
    return totalDeposits
}

function burn_fee_multiplier() {
    return burn_fee_multiplier
}

function owner() {
    return owner
}

function unit() {
    return unit
}

function totalBalance() {
    return totalBalance
}

function totalFundCount() {
    return totalFundCount
}

function lastRollOver(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return lastRollOver[arg1]
}

function suterAgency() {
    return suterAgencyAddress
}

function totalUsers() {
    return totalUsers
}

function epochBase() {
    return epochBase
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setUnit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    unit = arg1
    emit 0xbf53a683: arg1
}

function setSuterAgency(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    suterAgencyAddress = arg1
    emit 0xdbe3a162: arg1
}

function setTransferFeeStrategy(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor117 = arg1
    stor118 = arg2
    emit 0x8653f9e8: arg1, arg2
}

function setBurnFeeStrategy(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    burn_fee_multiplier = arg1
    burn_fee_dividend = arg2
    emit 0xf984371f: arg1, arg2
}

function currentEpoch() {
    if not epochBase:
        if not epochLength:
            revert with 0, 18
        return (block.number / epochLength)
    if epochBase != 1:
        revert with 0, 'Invalid epoch base.'
    if not epochLength:
        revert with 0, 18
    return (block.timestamp / epochLength)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setEpochBase(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    epochBase = arg1
    if not epochBase:
        if not epochLength:
            revert with 0, 18
        stor125 = block.number / epochLength
    else:
        if epochBase != 1:
            revert with 0, 'Invalid epoch base.'
        if not epochLength:
            revert with 0, 18
        stor125 = block.timestamp / epochLength
    emit 0x384fdbc4: arg1
}

function setEpochLength(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    epochLength = arg1
    if not epochBase:
        if not epochLength:
            revert with 0, 18
        stor125 = block.number / epochLength
    else:
        if epochBase != 1:
            revert with 0, 'Invalid epoch base.'
        if not epochLength:
            revert with 0, 18
        stor125 = block.timestamp / epochLength
    emit 0xb05aaa70: arg1
}

function registered(bytes32 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[128] = 0
    mem[64] = 288
    s = 224
    idx = 0
    while idx < 2:
        _7 = mem[64]
        mem[64] = mem[64] + 64
        mem[_7] = stor105[arg1][idx].field_0
        mem[_7 + 32] = stor105[arg1][idx].field_256
        mem[s] = _7
        s = s + 32
        idx = idx + 1
        continue 
    mem[160] = 224
    mem[0] = arg1
    mem[32] = 106
    _6 = mem[64]
    mem[64] = mem[64] + 64
    s = _6
    idx = 0
    while idx < 2:
        _9 = mem[64]
        mem[64] = mem[64] + 64
        mem[_9] = stor106[arg1][idx].field_0
        mem[_9 + 32] = stor106[arg1][idx].field_256
        mem[s] = _9
        s = s + 32
        idx = idx + 1
        continue 
    mem[192] = _6
    if mem[96] != mem[mem[mem[160]]]:
        mem[mem[64]] = mem[96] != mem[mem[mem[160]]]
    else:
        if mem[mem[mem[160]] + 32] != mem[128]:
            mem[mem[64]] = mem[mem[mem[160]] + 32] != mem[128]
        else:
            if mem[96] != mem[mem[mem[160] + 32]]:
                mem[mem[64]] = mem[96] != mem[mem[mem[160] + 32]]
            else:
                if mem[mem[mem[160] + 32] + 32] != mem[128]:
                    mem[mem[64]] = mem[mem[mem[160] + 32] + 32] != mem[128]
                else:
                    if mem[96] != mem[mem[_6]]:
                        mem[mem[64]] = mem[96] != mem[mem[_6]]
                    else:
                        if mem[mem[_6] + 32] != mem[128]:
                            mem[mem[64]] = mem[mem[_6] + 32] != mem[128]
                        else:
                            if mem[96] != mem[mem[_6 + 32]]:
                                mem[mem[64]] = mem[96] != mem[mem[_6 + 32]]
                            else:
                                mem[mem[64]] = mem[mem[_6 + 32] + 32] != mem[128]
    return memory
      from mem[64]
       len 32
}

function getAccountState(bytes32[2] arg1) {
    require calldata.size - 4 >= 64
    require calldata.size >= 68
    mem[64] = 224
    mem[160 len 64] = call.data[calldata.size len 64]
    mem[var14001] = 160
    s = var14001
    idx = var14002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[160 len 64] = call.data[calldata.size len 64]
        mem[s + 32] = 160
        s = s + 32
        idx = idx - 1
        continue 
    mem[64] = mem[64] + 64
    _16 = mem[64]
    mem[64] = mem[64] + 64
    mem[_16 len 64] = call.data[calldata.size len 64]
    mem[var22001] = _16
    s = var22001
    idx = var22002
    while idx - 1:
        _16 = mem[64]
        mem[64] = mem[64] + 64
        mem[_16 len 64] = call.data[calldata.size len 64]
        mem[s + 32] = _16
        s = s + 32
        idx = idx - 1
        continue 
    _17 = mem[64]
    mem[mem[64] + 32 len 64] = call.data[4 len 64]
    mem[mem[64] + 96] = 0
    _18 = mem[64]
    mem[mem[64]] = 64
    mem[64] = mem[64] + 96
    _20 = sha3(mem[_18 + 32 len mem[_18]])
    mem[0] = sha3(mem[_18 + 32 len mem[_18]])
    mem[32] = 105
    _21 = sha3(mem[0], 105)
    mem[64] = _17 + 160
    s = _17 + 96
    idx = 0
    while idx < 2:
        _35 = mem[64]
        mem[64] = mem[64] + 64
        mem[_35] = stor[(2 * idx) + _21]
        mem[_35 + 32] = stor[(2 * idx) + _21 + 1]
        mem[s] = _35
        s = s + 32
        idx = idx + 1
        continue 
    _23 = mem[64]
    mem[64] = mem[64] + 128
    mem[_23 + 64] = mem[mem[_17 + 96]]
    mem[_23 + 96] = mem[mem[_17 + 96] + 32]
    mem[_23] = _23 + 64
    _28 = mem[64]
    mem[64] = mem[64] + 64
    mem[_28] = mem[mem[_17 + 128]]
    mem[_28 + 32] = mem[mem[_17 + 128] + 32]
    mem[_23 + 32] = _28
    mem[0] = _20
    mem[32] = 106
    _34 = mem[64]
    mem[64] = mem[64] + 64
    s = _34
    idx = 0
    while idx < 2:
        _47 = mem[64]
        mem[64] = mem[64] + 64
        mem[_47] = stor106[_20][idx].field_0
        mem[_47 + 32] = stor106[_20][idx].field_256
        mem[s] = _47
        s = s + 32
        idx = idx + 1
        continue 
    _37 = mem[64]
    mem[64] = mem[64] + 128
    mem[_37 + 64] = mem[mem[_34]]
    mem[_37 + 96] = mem[mem[_34] + 32]
    mem[_37] = _37 + 64
    _42 = mem[64]
    mem[64] = mem[64] + 64
    mem[_42] = mem[mem[_34 + 32]]
    mem[_42 + 32] = mem[mem[_34 + 32] + 32]
    mem[_37 + 32] = _42
    _48 = mem[64]
    idx = 0
    s = _23
    t = mem[64]
    while idx < 2:
        u = 0
        v = mem[s]
        w = t
        while u < 2:
            mem[w] = mem[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    idx = 0
    s = _37
    t = _48 + 128
    while idx < 2:
        u = 0
        v = mem[s]
        w = t
        while u < 2:
            mem[w] = mem[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _48 + -mem[64] + 256
}

function register(bytes32[2] arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 128
    require calldata.size >= 68
    mem[96] = arg1
    mem[128] = arg2
    if 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001 < arg3:
        revert with 0, 17
    bn_scalar_mul = bn256ScalarMul(arg1, arg2, -arg3 + 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001) 
    mem[160 len 64] = bn_scalar_mul
    require bn256ScalarMul.result
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
    mem[320] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
    bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, cd[100]) 
    mem[352 len 64] = bn_scalar_mul
    bn_add = bn256Add(bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
    mem[416 len 64] = bn_add
    require bn256Add.result
    mem[512] = this.address
    mem[544] = arg1
    mem[576] = arg2
    mem[608] = bn_add
    mem[640] = Mask(256, -256, bn_add) << 256
    mem[480] = 160
    if sha3(address(this.address), arg1, arg2, bn_add, Mask(256, -256, bn_add) << 256) % 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001 != arg3:
        revert with 0, 'Invalid signature!'
    mem[704] = arg1
    mem[736] = arg2
    mem[672] = 64
    mem[768] = 0
    mem[800] = 0
    mem[64] = 960
    s = 896
    idx = 0
    while idx < 2:
        _40 = mem[64]
        mem[64] = mem[64] + 64
        mem[_40] = stor105[arg1][arg2][idx].field_0
        mem[_40 + 32] = stor105[arg1][arg2][idx].field_256
        mem[s] = _40
        s = s + 32
        idx = idx + 1
        continue 
    mem[832] = 896
    mem[0] = sha3(arg1, arg2)
    mem[32] = 106
    _39 = mem[64]
    mem[64] = mem[64] + 64
    s = _39
    idx = 0
    while idx < 2:
        _42 = mem[64]
        mem[64] = mem[64] + 64
        mem[_42] = stor106[arg1][arg2][idx].field_0
        mem[_42 + 32] = stor106[arg1][arg2][idx].field_256
        mem[s] = _42
        s = s + 32
        idx = idx + 1
        continue 
    mem[864] = _39
    if mem[768] != mem[mem[mem[832]]]:
        revert with 0, 'Account already registered!'
    if mem[mem[mem[832]] + 32] != mem[800]:
        revert with 0, 'Account already registered!'
    if mem[768] != mem[mem[mem[832] + 32]]:
        revert with 0, 'Account already registered!'
    if mem[mem[mem[832] + 32] + 32] != mem[800]:
        revert with 0, 'Account already registered!'
    if mem[768] != mem[mem[_39]]:
        revert with 0, 'Account already registered!'
    if mem[mem[_39] + 32] != mem[800]:
        revert with 0, 'Account already registered!'
    if mem[768] != mem[mem[_39 + 32]]:
        revert with 0, 'Account already registered!'
    if mem[mem[_39 + 32] + 32] != mem[800]:
        revert with 0, 'Account already registered!'
    stor106[arg1][arg2].field_0 = mem[96]
    stor106[arg1][arg2].field_256 = mem[128]
    stor106[arg1][arg2].field_512 = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
    stor106[arg1][arg2].field_768 = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
    if 1 > !totalUsers:
        revert with 0, 17
    totalUsers++
    emit 0x3a44ed3e: call.data[4 len 64]
}

function getGuess(bytes32[2] arg1) {
    require calldata.size - 4 >= 64
    require 35 < calldata.size
    require 68 <= calldata.size
    idx = 0
    s = 4
    t = 96
    while idx < 2:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if bool(stor107[mem[96 len 64]].field_0):
        if bool(stor107[mem[96 len 64]].field_0) == uint255(stor107[mem[96 len 64]].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor107[mem[96 len 64]].field_0):
            if bool(stor107[mem[96 len 64]].field_0) == uint255(stor107[mem[96 len 64]].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor107[mem[96 len 64]].field_0):
                if 31 < uint255(stor107[mem[96 len 64]].field_0) * 0.5:
                    mem[288] = stor107[mem[96 len 64]].field_0
                    idx = 288
                    s = 0
                    while (uint255(stor107[mem[96 len 64]].field_0) * 0.5) + 256 > idx:
                        mem[idx + 32] = stor107[mem[96 len 64]][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor107[mem[96 len 64]].field_0), data=mem[288 len ceil32(uint255(stor107[mem[96 len 64]].field_0) * 0.5)]), 
                mem[288] = 256 * Mask(248, 0, stor107[mem[96 len 64]].field_8)
        else:
            if bool(stor107[mem[96 len 64]].field_0) == stor107[mem[96 len 64]].field_1 % 128 < 32:
                revert with 0, 34
            if stor107[mem[96 len 64]].field_1 % 128:
                if 31 < stor107[mem[96 len 64]].field_1 % 128:
                    mem[288] = stor107[mem[96 len 64]].field_0
                    idx = 288
                    s = 0
                    while stor107[mem[96 len 64]].field_1 % 128 + 256 > idx:
                        mem[idx + 32] = stor107[mem[96 len 64]][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor107[mem[96 len 64]].field_0), data=mem[288 len ceil32(uint255(stor107[mem[96 len 64]].field_0) * 0.5)]), 
                mem[288] = 256 * Mask(248, 0, stor107[mem[96 len 64]].field_8)
        mem[ceil32(uint255(stor107[mem[96 len 64]].field_0) * 0.5) + 352 len ceil32(uint255(stor107[mem[96 len 64]].field_0) * 0.5)] = mem[288 len ceil32(uint255(stor107[mem[96 len 64]].field_0) * 0.5)]
        if ceil32(uint255(stor107[mem[96 len 64]].field_0) * 0.5) > uint255(stor107[mem[96 len 64]].field_0) * 0.5:
            mem[ceil32(uint255(stor107[mem[96 len 64]].field_0) * 0.5) + (uint255(stor107[mem[96 len 64]].field_0) * 0.5) + 352] = 0
        return Array(len=2 * Mask(256, -1, stor107[mem[96 len 64]].field_0), data=mem[288 len ceil32(uint255(stor107[mem[96 len 64]].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor107[mem[96 len 64]].field_0) * 0.5)) + 352 len 2 * ceil32(uint255(stor107[mem[96 len 64]].field_0) * 0.5)]), 
    if bool(stor107[mem[96 len 64]].field_0) == stor107[mem[96 len 64]].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor107[mem[96 len 64]].field_0):
        if bool(stor107[mem[96 len 64]].field_0) == uint255(stor107[mem[96 len 64]].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor107[mem[96 len 64]].field_0):
            if 31 < uint255(stor107[mem[96 len 64]].field_0) * 0.5:
                mem[288] = stor107[mem[96 len 64]].field_0
                idx = 288
                s = 0
                while (uint255(stor107[mem[96 len 64]].field_0) * 0.5) + 256 > idx:
                    mem[idx + 32] = stor107[mem[96 len 64]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor107[mem[96 len 64]].field_0 % 128, data=mem[288 len ceil32(stor107[mem[96 len 64]].field_1 % 128)])
            mem[288] = 256 * Mask(248, 0, stor107[mem[96 len 64]].field_8)
    else:
        if bool(stor107[mem[96 len 64]].field_0) == stor107[mem[96 len 64]].field_1 % 128 < 32:
            revert with 0, 34
        if stor107[mem[96 len 64]].field_1 % 128:
            if 31 < stor107[mem[96 len 64]].field_1 % 128:
                mem[288] = stor107[mem[96 len 64]].field_0
                idx = 288
                s = 0
                while stor107[mem[96 len 64]].field_1 % 128 + 256 > idx:
                    mem[idx + 32] = stor107[mem[96 len 64]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor107[mem[96 len 64]].field_0 % 128, data=mem[288 len ceil32(stor107[mem[96 len 64]].field_1 % 128)])
            mem[288] = 256 * Mask(248, 0, stor107[mem[96 len 64]].field_8)
    mem[ceil32(stor107[mem[96 len 64]].field_1 % 128) + 352 len ceil32(stor107[mem[96 len 64]].field_1 % 128)] = mem[288 len ceil32(stor107[mem[96 len 64]].field_1 % 128)]
    if ceil32(stor107[mem[96 len 64]].field_1 % 128) > stor107[mem[96 len 64]].field_1 % 128:
        mem[ceil32(stor107[mem[96 len 64]].field_1 % 128) + stor107[mem[96 len 64]].field_1 % 128 + 352] = 0
    return Array(len=stor107[mem[96 len 64]].field_0 % 128, data=mem[288 len ceil32(stor107[mem[96 len 64]].field_1 % 128)], mem[(2 * ceil32(stor107[mem[96 len 64]].field_1 % 128)) + 352 len 2 * ceil32(stor107[mem[96 len 64]].field_1 % 128)]), 
}

function initializeBase(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        uint256(stor101.field_0) = Mask(96, 0, stor101.field_160)
        stor103 = arg1
        stor104 = arg2
        unit = 10^16
        stor112 = test266151307()
        lastGlobalUpdate = 0
        epochBase = 0
        epochLength = 24
        burn_fee_multiplier = 1
        burn_fee_dividend = 100
        stor117 = 1
        stor118 = 5
        totalBalance = 0
        totalUsers = 0
        totalBurnFee = 0
        totalTransferFee = 0
        totalDeposits = 0
        totalFundCount = 0
        stor125 = -1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            uint256(stor101.field_0) = Mask(96, 0, stor101.field_160)
            stor103 = arg1
            stor104 = arg2
            unit = 10^16
            stor112 = test266151307()
            lastGlobalUpdate = 0
            epochBase = 0
            epochLength = 24
            burn_fee_multiplier = 1
            burn_fee_dividend = 100
            stor117 = 1
            stor118 = 5
            totalBalance = 0
            totalUsers = 0
            totalBurnFee = 0
            totalTransferFee = 0
            totalDeposits = 0
            totalFundCount = 0
            stor125 = -1
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                uint256(stor101.field_0) = Mask(96, 0, stor101.field_160)
                stor103 = arg1
                stor104 = arg2
                unit = 10^16
                stor112 = test266151307()
                lastGlobalUpdate = 0
                epochBase = 0
                epochLength = 24
                burn_fee_multiplier = 1
                burn_fee_dividend = 100
                stor117 = 1
                stor118 = 5
                totalBalance = 0
                totalUsers = 0
                totalBurnFee = 0
                totalTransferFee = 0
                totalDeposits = 0
                totalFundCount = 0
                stor125 = -1
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    uint256(stor101.field_0) = Mask(96, 0, stor101.field_160)
                    stor103 = arg1
                    stor104 = arg2
                    unit = 10^16
                    stor112 = test266151307()
                    lastGlobalUpdate = 0
                    epochBase = 0
                    epochLength = 24
                    burn_fee_multiplier = 1
                    burn_fee_dividend = 100
                    stor117 = 1
                    stor118 = 5
                    totalBalance = 0
                    totalUsers = 0
                    totalBurnFee = 0
                    totalTransferFee = 0
                    totalDeposits = 0
                    totalFundCount = 0
                    stor125 = -1
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        uint256(stor101.field_0) = Mask(96, 0, stor101.field_160)
                        stor103 = arg1
                        stor104 = arg2
                        unit = 10^16
                        stor112 = test266151307()
                        lastGlobalUpdate = 0
                        epochBase = 0
                        epochLength = 24
                        burn_fee_multiplier = 1
                        burn_fee_dividend = 100
                        stor117 = 1
                        stor118 = 5
                        totalBalance = 0
                        totalUsers = 0
                        totalBurnFee = 0
                        totalTransferFee = 0
                        totalDeposits = 0
                        totalFundCount = 0
                        stor125 = -1
                    else:
                        uint16(stor0.field_0) = 257
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        uint256(stor101.field_0) = Mask(96, 0, stor101.field_160)
                        stor103 = arg1
                        stor104 = arg2
                        unit = 10^16
                        stor112 = test266151307()
                        lastGlobalUpdate = 0
                        epochBase = 0
                        epochLength = 24
                        burn_fee_multiplier = 1
                        burn_fee_dividend = 100
                        stor117 = 1
                        stor118 = 5
                        totalBalance = 0
                        totalUsers = 0
                        totalBurnFee = 0
                        totalTransferFee = 0
                        totalDeposits = 0
                        totalFundCount = 0
                        stor125 = -1
                        uint8(stor0.field_8) = 0
}

function initializeSuterETH(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        uint256(stor101.field_0) = Mask(96, 0, stor101.field_160)
        stor103 = arg1
        stor104 = arg2
        unit = 10^16
        stor112 = test266151307()
        lastGlobalUpdate = 0
        epochBase = 0
        epochLength = 24
        burn_fee_multiplier = 1
        burn_fee_dividend = 100
        stor117 = 1
        stor118 = 5
        totalBalance = 0
        totalUsers = 0
        totalBurnFee = 0
        totalTransferFee = 0
        totalDeposits = 0
        totalFundCount = 0
        stor125 = -1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            uint256(stor101.field_0) = Mask(96, 0, stor101.field_160)
            stor103 = arg1
            stor104 = arg2
            unit = 10^16
            stor112 = test266151307()
            lastGlobalUpdate = 0
            epochBase = 0
            epochLength = 24
            burn_fee_multiplier = 1
            burn_fee_dividend = 100
            stor117 = 1
            stor118 = 5
            totalBalance = 0
            totalUsers = 0
            totalBurnFee = 0
            totalTransferFee = 0
            totalDeposits = 0
            totalFundCount = 0
            stor125 = -1
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                uint256(stor101.field_0) = Mask(96, 0, stor101.field_160)
                stor103 = arg1
                stor104 = arg2
                unit = 10^16
                stor112 = test266151307()
                lastGlobalUpdate = 0
                epochBase = 0
                epochLength = 24
                burn_fee_multiplier = 1
                burn_fee_dividend = 100
                stor117 = 1
                stor118 = 5
                totalBalance = 0
                totalUsers = 0
                totalBurnFee = 0
                totalTransferFee = 0
                totalDeposits = 0
                totalFundCount = 0
                stor125 = -1
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    uint256(stor101.field_0) = Mask(96, 0, stor101.field_160)
                    stor103 = arg1
                    stor104 = arg2
                    unit = 10^16
                    stor112 = test266151307()
                    lastGlobalUpdate = 0
                    epochBase = 0
                    epochLength = 24
                    burn_fee_multiplier = 1
                    burn_fee_dividend = 100
                    stor117 = 1
                    stor118 = 5
                    totalBalance = 0
                    totalUsers = 0
                    totalBurnFee = 0
                    totalTransferFee = 0
                    totalDeposits = 0
                    totalFundCount = 0
                    stor125 = -1
                else:
                    uint16(stor0.field_0) = 257
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        uint256(stor101.field_0) = Mask(96, 0, stor101.field_160)
                        stor103 = arg1
                        stor104 = arg2
                        unit = 10^16
                        stor112 = test266151307()
                        lastGlobalUpdate = 0
                        epochBase = 0
                        epochLength = 24
                        burn_fee_multiplier = 1
                        burn_fee_dividend = 100
                        stor117 = 1
                        stor118 = 5
                        totalBalance = 0
                        totalUsers = 0
                        totalBurnFee = 0
                        totalTransferFee = 0
                        totalDeposits = 0
                        totalFundCount = 0
                        stor125 = -1
                    else:
                        uint16(stor0.field_0) = 257
                        uint8(stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(owner, msg.sender);
                            uint256(stor101.field_0) = Mask(96, 0, stor101.field_160)
                            stor103 = arg1
                            stor104 = arg2
                            unit = 10^16
                            stor112 = test266151307()
                            lastGlobalUpdate = 0
                            epochBase = 0
                            epochLength = 24
                            burn_fee_multiplier = 1
                            burn_fee_dividend = 100
                            stor117 = 1
                            stor118 = 5
                            totalBalance = 0
                            totalUsers = 0
                            totalBurnFee = 0
                            totalTransferFee = 0
                            totalDeposits = 0
                            totalFundCount = 0
                            stor125 = -1
                        else:
                            uint16(stor0.field_0) = 257
                            owner = msg.sender
                            emit OwnershipTransferred(owner, msg.sender);
                            uint8(stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            uint256(stor101.field_0) = Mask(96, 0, stor101.field_160)
                            stor103 = arg1
                            stor104 = arg2
                            unit = 10^16
                            stor112 = test266151307()
                            lastGlobalUpdate = 0
                            epochBase = 0
                            epochLength = 24
                            burn_fee_multiplier = 1
                            burn_fee_dividend = 100
                            stor117 = 1
                            stor118 = 5
                            totalBalance = 0
                            totalUsers = 0
                            totalBurnFee = 0
                            totalTransferFee = 0
                            totalDeposits = 0
                            totalFundCount = 0
                            stor125 = -1
                            uint8(stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
}

function getBalance(bytes32[2][] arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (64 * arg1.length) + 36 <= calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            _51 = mem[64]
            mem[mem[64] + 32 len 64] = call.data[(64 * idx) + arg1 + 36 len 64]
            mem[mem[64] + 96] = 0
            _54 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _56 = sha3(mem[_54 + 32 len mem[_54]])
            mem[0] = sha3(mem[_54 + 32 len mem[_54]])
            _57 = sha3(mem[0], 105)
            mem[64] = _51 + 160
            t = _51 + 96
            s = 0
            while s < 2:
                _65 = mem[64]
                mem[64] = mem[64] + 64
                mem[_65] = stor[(2 * s) + _57]
                mem[_65 + 32] = stor[(2 * s) + _57 + 1]
                mem[t] = _65
                t = t + 32
                s = s + 1
                continue 
            mem[0] = _56
            mem[32] = 108
            if arg2 > lastRollOver[_56]:
                mem[0] = _56
                mem[32] = 106
                _68 = mem[64]
                mem[64] = mem[64] + 64
                t = _68
                s = 0
                while s < 2:
                    _98 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_98] = stor106[_56][s].field_0
                    mem[_98 + 32] = stor106[_56][s].field_256
                    mem[t] = _98
                    t = t + 32
                    s = s + 1
                    continue 
                _100 = mem[_68]
                _103 = mem[_51 + 96]
                _106 = mem[64]
                mem[64] = mem[64] + 64
                mem[_106] = 0
                mem[_106 + 32] = 0
                mem[mem[64]] = mem[_103]
                mem[mem[64] + 32] = mem[_103 + 32]
                mem[mem[64] + 64] = mem[_100]
                mem[mem[64] + 96] = mem[_100 + 32]
                bn_add = bn256Add(mem[mem[64] len 128]) 
                mem[_106 len 64] = bn_add
                require bn256Add.result
                mem[_51 + 96] = _106
                _118 = mem[_68 + 32]
                _120 = mem[_51 + 128]
                _122 = mem[64]
                mem[64] = mem[64] + 64
                mem[_122] = 0
                mem[_122 + 32] = 0
                mem[mem[64]] = mem[_120]
                mem[mem[64] + 32] = mem[_120 + 32]
                mem[mem[64] + 64] = mem[_118]
                mem[mem[64] + 96] = mem[_118 + 32]
                bn_add = bn256Add(mem[mem[64] len 128]) 
                mem[_122 len 64] = bn_add
                mem[_51 + 128] = _122
                _134 = mem[64]
                mem[64] = mem[64] + 128
                mem[_134 + 64] = bn_add
                mem[_134 + 96] = Mask(256, -256, bn_add) << 256
                mem[_134] = _134 + 64
                _139 = mem[64]
                mem[64] = mem[64] + 64
                mem[_139] = bn_add
                mem[_139 + 32] = Mask(256, -256, bn_add) << 256
                mem[_134 + 32] = _139
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _134
            else:
                if 0 > stor125:
                    _69 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_69 + 64] = mem[mem[_51 + 96]]
                    mem[_69 + 96] = mem[mem[_51 + 96] + 32]
                    mem[_69] = _69 + 64
                    _74 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_74] = mem[mem[_51 + 128]]
                    mem[_74 + 32] = mem[mem[_51 + 128] + 32]
                    mem[_69 + 32] = _74
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _69
                else:
                    mem[0] = _56
                    mem[32] = 106
                    _81 = mem[64]
                    mem[64] = mem[64] + 64
                    t = _81
                    s = 0
                    while s < 2:
                        _99 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_99] = stor106[_56][s].field_0
                        mem[_99 + 32] = stor106[_56][s].field_256
                        mem[t] = _99
                        t = t + 32
                        s = s + 1
                        continue 
                    _101 = mem[_81]
                    _104 = mem[_51 + 96]
                    _112 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_112] = 0
                    mem[_112 + 32] = 0
                    mem[mem[64]] = mem[_104]
                    mem[mem[64] + 32] = mem[_104 + 32]
                    mem[mem[64] + 64] = mem[_101]
                    mem[mem[64] + 96] = mem[_101 + 32]
                    bn_add = bn256Add(mem[mem[64] len 128]) 
                    mem[_112 len 64] = bn_add
                    require bn256Add.result
                    mem[_51 + 96] = _112
                    _119 = mem[_81 + 32]
                    _121 = mem[_51 + 128]
                    _128 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_128] = 0
                    mem[_128 + 32] = 0
                    mem[mem[64]] = mem[_121]
                    mem[mem[64] + 32] = mem[_121 + 32]
                    mem[mem[64] + 64] = mem[_119]
                    mem[mem[64] + 96] = mem[_119 + 32]
                    bn_add = bn256Add(mem[mem[64] len 128]) 
                    mem[_128 len 64] = bn_add
                    mem[_51 + 128] = _128
                    _145 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_145 + 64] = bn_add
                    mem[_145 + 96] = Mask(256, -256, bn_add) << 256
                    mem[_145] = _145 + 64
                    _150 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_150] = bn_add
                    mem[_150 + 32] = Mask(256, -256, bn_add) << 256
                    mem[_145 + 32] = _150
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _145
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _52 = mem[96]
        mem[mem[64] + 32] = mem[96]
        s = 0
        t = mem[64] + 64
        u = 128
        while s < _52:
            v = 0
            w = mem[u]
            x = t
            while v < 2:
                s = 0
                t = mem[w]
                u = x
                while s < 2:
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                v = v + 1
                w = w + 32
                x = x + 64
                continue 
            s = s + 1
            t = t + 128
            u = u + 32
            continue 
    else:
        mem[64] = (32 * arg1.length) + 256
        mem[(32 * arg1.length) + 192 len 64] = call.data[calldata.size len 64]
        mem[var26002] = (32 * arg1.length) + 192
        if var26003 - 1:
            var26002 = var26002 + 32
            var26003 = var26003 - 1
            var26004 = var26004
            var26006 = var26006
            var26007 = var26007
            continue 
        mem[var26006] = var26004
        if var26007 - 1:
            mem[64] = (32 * arg1.length) + 320
            var26002 = (32 * arg1.length) + 256
            var26003 = 2
            var26004 = (32 * arg1.length) + 256
            var26006 = var26006 + 32
            var26007 = var26007 - 1
            continue 
        idx = 0
        while idx < arg1.length:
            _213 = mem[64]
            mem[mem[64] + 32 len 64] = call.data[(64 * idx) + arg1 + 36 len 64]
            mem[mem[64] + 96] = 0
            _215 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _217 = sha3(mem[_215 + 32 len mem[_215]])
            mem[0] = sha3(mem[_215 + 32 len mem[_215]])
            _218 = sha3(mem[0], 105)
            mem[64] = _213 + 160
            t = _213 + 96
            s = 0
            while s < 2:
                _226 = mem[64]
                mem[64] = mem[64] + 64
                mem[_226] = stor[(2 * s) + _218]
                mem[_226 + 32] = stor[(2 * s) + _218 + 1]
                mem[t] = _226
                t = t + 32
                s = s + 1
                continue 
            mem[0] = _217
            mem[32] = 108
            if arg2 > lastRollOver[_217]:
                mem[0] = _217
                mem[32] = 106
                _228 = mem[64]
                mem[64] = mem[64] + 64
                t = _228
                s = 0
                while s < 2:
                    _245 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_245] = stor106[_217][s].field_0
                    mem[_245 + 32] = stor106[_217][s].field_256
                    mem[t] = _245
                    t = t + 32
                    s = s + 1
                    continue 
                _247 = mem[_228]
                _249 = mem[_213 + 96]
                _252 = mem[64]
                mem[64] = mem[64] + 64
                mem[_252] = 0
                mem[_252 + 32] = 0
                mem[mem[64]] = mem[_249]
                mem[mem[64] + 32] = mem[_249 + 32]
                mem[mem[64] + 64] = mem[_247]
                mem[mem[64] + 96] = mem[_247 + 32]
                bn_add = bn256Add(mem[mem[64] len 128]) 
                mem[_252 len 64] = bn_add
                require bn256Add.result
                mem[_213 + 96] = _252
                _264 = mem[_228 + 32]
                _266 = mem[_213 + 128]
                _268 = mem[64]
                mem[64] = mem[64] + 64
                mem[_268] = 0
                mem[_268 + 32] = 0
                mem[mem[64]] = mem[_266]
                mem[mem[64] + 32] = mem[_266 + 32]
                mem[mem[64] + 64] = mem[_264]
                mem[mem[64] + 96] = mem[_264 + 32]
                bn_add = bn256Add(mem[mem[64] len 128]) 
                mem[_268 len 64] = bn_add
                mem[_213 + 128] = _268
                _280 = mem[64]
                mem[64] = mem[64] + 128
                mem[_280 + 64] = bn_add
                mem[_280 + 96] = Mask(256, -256, bn_add) << 256
                mem[_280] = _280 + 64
                _285 = mem[64]
                mem[64] = mem[64] + 64
                mem[_285] = bn_add
                mem[_285 + 32] = Mask(256, -256, bn_add) << 256
                mem[_280 + 32] = _285
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _280
            else:
                if 0 > stor125:
                    _229 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_229 + 64] = mem[mem[_213 + 96]]
                    mem[_229 + 96] = mem[mem[_213 + 96] + 32]
                    mem[_229] = _229 + 64
                    _234 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_234] = mem[mem[_213 + 128]]
                    mem[_234 + 32] = mem[mem[_213 + 128] + 32]
                    mem[_229 + 32] = _234
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _229
                else:
                    mem[0] = _217
                    mem[32] = 106
                    _241 = mem[64]
                    mem[64] = mem[64] + 64
                    t = _241
                    s = 0
                    while s < 2:
                        _246 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_246] = stor106[_217][s].field_0
                        mem[_246 + 32] = stor106[_217][s].field_256
                        mem[t] = _246
                        t = t + 32
                        s = s + 1
                        continue 
                    _248 = mem[_241]
                    _250 = mem[_213 + 96]
                    _258 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_258] = 0
                    mem[_258 + 32] = 0
                    mem[mem[64]] = mem[_250]
                    mem[mem[64] + 32] = mem[_250 + 32]
                    mem[mem[64] + 64] = mem[_248]
                    mem[mem[64] + 96] = mem[_248 + 32]
                    bn_add = bn256Add(mem[mem[64] len 128]) 
                    mem[_258 len 64] = bn_add
                    require bn256Add.result
                    mem[_213 + 96] = _258
                    _265 = mem[_241 + 32]
                    _267 = mem[_213 + 128]
                    _274 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_274] = 0
                    mem[_274 + 32] = 0
                    mem[mem[64]] = mem[_267]
                    mem[mem[64] + 32] = mem[_267 + 32]
                    mem[mem[64] + 64] = mem[_265]
                    mem[mem[64] + 96] = mem[_265 + 32]
                    bn_add = bn256Add(mem[mem[64] len 128]) 
                    mem[_274 len 64] = bn_add
                    mem[_213 + 128] = _274
                    _291 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_291 + 64] = bn_add
                    mem[_291 + 96] = Mask(256, -256, bn_add) << 256
                    mem[_291] = _291 + 64
                    _296 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_296] = bn_add
                    mem[_296 + 32] = Mask(256, -256, bn_add) << 256
                    mem[_291 + 32] = _296
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _291
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _214 = mem[96]
        mem[mem[64] + 32] = mem[96]
        s = 0
        t = mem[64] + 64
        u = 128
        while s < _214:
            v = 0
            w = mem[u]
            x = t
            while v < 2:
                s = 0
                t = mem[w]
                u = x
                while s < 2:
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                v = v + 1
                w = w + 32
                x = x + 64
                continue 
            s = s + 1
            t = t + 128
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function fund(bytes32[2] arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 128
    require calldata.size >= 68
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    if not unit:
        revert with 0, 18
    if msg.value % unit:
        revert with 0, 'Invalid nativeAmount.'
    if not unit:
        revert with 0, 18
    if msg.value / unit > stor112:
        revert with 0, 'out of range.'
    if arg3 != msg.value / unit:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Specified fund amount is differnet from the paid amount.'
    if arg3 > stor112:
        revert with 0, 'Fund past maximum value.'
    if totalBalance > !arg3:
        revert with 0, 17
    if totalBalance + arg3 > stor112:
        revert with 0, 'Fund past maximum value.'
    if totalBalance > !arg3:
        revert with 0, 17
    totalBalance += arg3
    if totalDeposits > !arg3:
        revert with 0, 17
    totalDeposits += arg3
    if totalFundCount > -2:
        revert with 0, 17
    totalFundCount++
    mem[128 len 64] = call.data[4 len 64]
    mem[96] = 64
    mem[192] = 0
    mem[224] = 0
    mem[64] = 384
    s = 320
    idx = 0
    while idx < 2:
        _21 = mem[64]
        mem[64] = mem[64] + 64
        mem[_21] = stor105[call.data[4 len 64]][idx].field_0
        mem[_21 + 32] = stor105[call.data[4 len 64]][idx].field_256
        mem[s] = _21
        s = s + 32
        idx = idx + 1
        continue 
    mem[256] = 320
    mem[0] = sha3(call.data[4 len 64])
    mem[32] = 106
    _20 = mem[64]
    mem[64] = mem[64] + 64
    s = _20
    idx = 0
    while idx < 2:
        _23 = mem[64]
        mem[64] = mem[64] + 64
        mem[_23] = stor106[call.data[4 len 64]][idx].field_0
        mem[_23 + 32] = stor106[call.data[4 len 64]][idx].field_256
        mem[s] = _23
        s = s + 32
        idx = idx + 1
        continue 
    mem[288] = _20
    if mem[192] != mem[mem[mem[256]]]:
        if not epochBase:
            if not epochLength:
                revert with 0, 18
            if block.number / epochLength > lastRollOver[call.data[4 len 64]]:
                _49 = mem[64]
                mem[0] = sha3(call.data[4 len 64])
                mem[64] = mem[64] + 128
                s = _49 + 64
                idx = 0
                while idx < 2:
                    _1946 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1946] = stor105[call.data[4 len 64]][idx].field_0
                    mem[_1946 + 32] = stor105[call.data[4 len 64]][idx].field_256
                    mem[s] = _1946
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[_49] = _49 + 64
                mem[0] = sha3(call.data[4 len 64])
                mem[32] = 106
                _1945 = mem[64]
                mem[64] = mem[64] + 64
                s = _1945
                idx = 0
                while idx < 2:
                    _3485 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3485] = stor106[call.data[4 len 64]][idx].field_0
                    mem[_3485 + 32] = stor106[call.data[4 len 64]][idx].field_256
                    mem[s] = _3485
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[_49 + 32] = _1945
                _3483 = mem[_1945]
                _3604 = mem[mem[_49]]
                _3646 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3646] = 0
                mem[_3646 + 32] = 0
                mem[mem[64]] = mem[_3604]
                mem[mem[64] + 32] = mem[_3604 + 32]
                mem[mem[64] + 64] = mem[_3483]
                mem[mem[64] + 96] = mem[_3483 + 32]
                bn_add = bn256Add(mem[mem[64] len 128]) 
                mem[_3646 len 64] = bn_add
                require bn256Add.result
                mem[0] = sha3(call.data[4 len 64])
                mem[32] = 105
                stor105[call.data[4 len 64]].field_0 = bn_add
                stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                _4066 = mem[_1945 + 32]
                _4258 = mem[mem[_49] + 32]
                _4514 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4514] = 0
                mem[_4514 + 32] = 0
                mem[mem[64]] = mem[_4258]
                mem[mem[64] + 32] = mem[_4258 + 32]
                mem[mem[64] + 64] = mem[_4066]
                mem[mem[64] + 96] = mem[_4066 + 32]
                bn_add = bn256Add(mem[mem[64] len 128]) 
                stor105[call.data[4 len 64]].field_512 = bn_add
                stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                stor106[call.data[4 len 64]].field_0 = 0
                stor106[call.data[4 len 64]].field_256 = 0
                stor106[call.data[4 len 64]].field_512 = 0
                stor106[call.data[4 len 64]].field_768 = 0
                lastRollOver[call.data[4 len 64]] = block.number / epochLength
            else:
                if 0 <= stor125:
                    _54 = mem[64]
                    mem[0] = sha3(call.data[4 len 64])
                    mem[64] = mem[64] + 128
                    s = _54 + 64
                    idx = 0
                    while idx < 2:
                        _1949 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1949] = stor105[call.data[4 len 64]][idx].field_0
                        mem[_1949 + 32] = stor105[call.data[4 len 64]][idx].field_256
                        mem[s] = _1949
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[_54] = _54 + 64
                    mem[0] = sha3(call.data[4 len 64])
                    mem[32] = 106
                    _1948 = mem[64]
                    mem[64] = mem[64] + 64
                    s = _1948
                    idx = 0
                    while idx < 2:
                        _3489 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3489] = stor106[call.data[4 len 64]][idx].field_0
                        mem[_3489 + 32] = stor106[call.data[4 len 64]][idx].field_256
                        mem[s] = _3489
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[_54 + 32] = _1948
                    _3487 = mem[_1948]
                    _3605 = mem[mem[_54]]
                    _3652 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3652] = 0
                    mem[_3652 + 32] = 0
                    mem[mem[64]] = mem[_3605]
                    mem[mem[64] + 32] = mem[_3605 + 32]
                    mem[mem[64] + 64] = mem[_3487]
                    mem[mem[64] + 96] = mem[_3487 + 32]
                    bn_add = bn256Add(mem[mem[64] len 128]) 
                    mem[_3652 len 64] = bn_add
                    require bn256Add.result
                    mem[0] = sha3(call.data[4 len 64])
                    mem[32] = 105
                    stor105[call.data[4 len 64]].field_0 = bn_add
                    stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                    _4072 = mem[_1948 + 32]
                    _4273 = mem[mem[_54] + 32]
                    _4524 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4524] = 0
                    mem[_4524 + 32] = 0
                    mem[mem[64]] = mem[_4273]
                    mem[mem[64] + 32] = mem[_4273 + 32]
                    mem[mem[64] + 64] = mem[_4072]
                    mem[mem[64] + 96] = mem[_4072 + 32]
                    bn_add = bn256Add(mem[mem[64] len 128]) 
                    stor105[call.data[4 len 64]].field_512 = bn_add
                    stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                    stor106[call.data[4 len 64]].field_0 = 0
                    stor106[call.data[4 len 64]].field_256 = 0
                    stor106[call.data[4 len 64]].field_512 = 0
                    stor106[call.data[4 len 64]].field_768 = 0
                    lastRollOver[call.data[4 len 64]] = block.number / epochLength
            if block.number / epochLength > lastGlobalUpdate:
                lastGlobalUpdate = block.number / epochLength
                stor109.length = 0
                idx = 0
                while stor109.length > idx:
                    stor109[idx] = 0
                    idx = idx + 1
                    continue 
            else:
                if 0 <= stor125:
                    lastGlobalUpdate = block.number / epochLength
                    stor109.length = 0
                    idx = 0
                    while stor109.length > idx:
                        stor109[idx] = 0
                        idx = idx + 1
                        continue 
        else:
            if epochBase != 1:
                revert with 0, 'Invalid epoch base.'
            if not epochLength:
                revert with 0, 18
            if block.timestamp / epochLength > lastRollOver[call.data[4 len 64]]:
                _52 = mem[64]
                mem[0] = sha3(call.data[4 len 64])
                mem[64] = mem[64] + 128
                s = _52 + 64
                idx = 0
                while idx < 2:
                    _1940 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1940] = stor105[call.data[4 len 64]][idx].field_0
                    mem[_1940 + 32] = stor105[call.data[4 len 64]][idx].field_256
                    mem[s] = _1940
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[_52] = _52 + 64
                mem[0] = sha3(call.data[4 len 64])
                mem[32] = 106
                _1939 = mem[64]
                mem[64] = mem[64] + 64
                s = _1939
                idx = 0
                while idx < 2:
                    _3477 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3477] = stor106[call.data[4 len 64]][idx].field_0
                    mem[_3477 + 32] = stor106[call.data[4 len 64]][idx].field_256
                    mem[s] = _3477
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[_52 + 32] = _1939
                _3475 = mem[_1939]
                _3602 = mem[mem[_52]]
                _3634 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3634] = 0
                mem[_3634 + 32] = 0
                mem[mem[64]] = mem[_3602]
                mem[mem[64] + 32] = mem[_3602 + 32]
                mem[mem[64] + 64] = mem[_3475]
                mem[mem[64] + 96] = mem[_3475 + 32]
                bn_add = bn256Add(mem[mem[64] len 128]) 
                mem[_3634 len 64] = bn_add
                require bn256Add.result
                mem[0] = sha3(call.data[4 len 64])
                mem[32] = 105
                stor105[call.data[4 len 64]].field_0 = bn_add
                stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                _4054 = mem[_1939 + 32]
                _4242 = mem[mem[_52] + 32]
                _4498 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4498] = 0
                mem[_4498 + 32] = 0
                mem[mem[64]] = mem[_4242]
                mem[mem[64] + 32] = mem[_4242 + 32]
                mem[mem[64] + 64] = mem[_4054]
                mem[mem[64] + 96] = mem[_4054 + 32]
                bn_add = bn256Add(mem[mem[64] len 128]) 
                stor105[call.data[4 len 64]].field_512 = bn_add
                stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                stor106[call.data[4 len 64]].field_0 = 0
                stor106[call.data[4 len 64]].field_256 = 0
                stor106[call.data[4 len 64]].field_512 = 0
                stor106[call.data[4 len 64]].field_768 = 0
                lastRollOver[call.data[4 len 64]] = block.timestamp / epochLength
            else:
                if 0 <= stor125:
                    _59 = mem[64]
                    mem[0] = sha3(call.data[4 len 64])
                    mem[64] = mem[64] + 128
                    s = _59 + 64
                    idx = 0
                    while idx < 2:
                        _1943 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1943] = stor105[call.data[4 len 64]][idx].field_0
                        mem[_1943 + 32] = stor105[call.data[4 len 64]][idx].field_256
                        mem[s] = _1943
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[_59] = _59 + 64
                    mem[0] = sha3(call.data[4 len 64])
                    mem[32] = 106
                    _1942 = mem[64]
                    mem[64] = mem[64] + 64
                    s = _1942
                    idx = 0
                    while idx < 2:
                        _3481 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3481] = stor106[call.data[4 len 64]][idx].field_0
                        mem[_3481 + 32] = stor106[call.data[4 len 64]][idx].field_256
                        mem[s] = _3481
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[_59 + 32] = _1942
                    _3479 = mem[_1942]
                    _3603 = mem[mem[_59]]
                    _3640 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3640] = 0
                    mem[_3640 + 32] = 0
                    mem[mem[64]] = mem[_3603]
                    mem[mem[64] + 32] = mem[_3603 + 32]
                    mem[mem[64] + 64] = mem[_3479]
                    mem[mem[64] + 96] = mem[_3479 + 32]
                    bn_add = bn256Add(mem[mem[64] len 128]) 
                    mem[_3640 len 64] = bn_add
                    require bn256Add.result
                    mem[0] = sha3(call.data[4 len 64])
                    mem[32] = 105
                    stor105[call.data[4 len 64]].field_0 = bn_add
                    stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                    _4060 = mem[_1942 + 32]
                    _4257 = mem[mem[_59] + 32]
                    _4508 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4508] = 0
                    mem[_4508 + 32] = 0
                    mem[mem[64]] = mem[_4257]
                    mem[mem[64] + 32] = mem[_4257 + 32]
                    mem[mem[64] + 64] = mem[_4060]
                    mem[mem[64] + 96] = mem[_4060 + 32]
                    bn_add = bn256Add(mem[mem[64] len 128]) 
                    stor105[call.data[4 len 64]].field_512 = bn_add
                    stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                    stor106[call.data[4 len 64]].field_0 = 0
                    stor106[call.data[4 len 64]].field_256 = 0
                    stor106[call.data[4 len 64]].field_512 = 0
                    stor106[call.data[4 len 64]].field_768 = 0
                    lastRollOver[call.data[4 len 64]] = block.timestamp / epochLength
            if block.timestamp / epochLength > lastGlobalUpdate:
                lastGlobalUpdate = block.timestamp / epochLength
                stor109.length = 0
                idx = 0
                while stor109.length > idx:
                    stor109[idx] = 0
                    idx = idx + 1
                    continue 
            else:
                if 0 <= stor125:
                    lastGlobalUpdate = block.timestamp / epochLength
                    stor109.length = 0
                    idx = 0
                    while stor109.length > idx:
                        stor109[idx] = 0
                        idx = idx + 1
                        continue 
    else:
        if mem[mem[mem[256]] + 32] != mem[224]:
            if not epochBase:
                if not epochLength:
                    revert with 0, 18
                if block.number / epochLength > lastRollOver[call.data[4 len 64]]:
                    _56 = mem[64]
                    mem[0] = sha3(call.data[4 len 64])
                    mem[64] = mem[64] + 128
                    s = _56 + 64
                    idx = 0
                    while idx < 2:
                        _1958 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1958] = stor105[call.data[4 len 64]][idx].field_0
                        mem[_1958 + 32] = stor105[call.data[4 len 64]][idx].field_256
                        mem[s] = _1958
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[_56] = _56 + 64
                    mem[0] = sha3(call.data[4 len 64])
                    mem[32] = 106
                    _1957 = mem[64]
                    mem[64] = mem[64] + 64
                    s = _1957
                    idx = 0
                    while idx < 2:
                        _3501 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3501] = stor106[call.data[4 len 64]][idx].field_0
                        mem[_3501 + 32] = stor106[call.data[4 len 64]][idx].field_256
                        mem[s] = _3501
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[_56 + 32] = _1957
                    _3499 = mem[_1957]
                    _3608 = mem[mem[_56]]
                    _3670 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3670] = 0
                    mem[_3670 + 32] = 0
                    mem[mem[64]] = mem[_3608]
                    mem[mem[64] + 32] = mem[_3608 + 32]
                    mem[mem[64] + 64] = mem[_3499]
                    mem[mem[64] + 96] = mem[_3499 + 32]
                    bn_add = bn256Add(mem[mem[64] len 128]) 
                    mem[_3670 len 64] = bn_add
                    require bn256Add.result
                    mem[0] = sha3(call.data[4 len 64])
                    mem[32] = 105
                    stor105[call.data[4 len 64]].field_0 = bn_add
                    stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                    _4090 = mem[_1957 + 32]
                    _4290 = mem[mem[_56] + 32]
                    _4546 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4546] = 0
                    mem[_4546 + 32] = 0
                    mem[mem[64]] = mem[_4290]
                    mem[mem[64] + 32] = mem[_4290 + 32]
                    mem[mem[64] + 64] = mem[_4090]
                    mem[mem[64] + 96] = mem[_4090 + 32]
                    bn_add = bn256Add(mem[mem[64] len 128]) 
                    stor105[call.data[4 len 64]].field_512 = bn_add
                    stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                    stor106[call.data[4 len 64]].field_0 = 0
                    stor106[call.data[4 len 64]].field_256 = 0
                    stor106[call.data[4 len 64]].field_512 = 0
                    stor106[call.data[4 len 64]].field_768 = 0
                    lastRollOver[call.data[4 len 64]] = block.number / epochLength
                else:
                    if 0 <= stor125:
                        _64 = mem[64]
                        mem[0] = sha3(call.data[4 len 64])
                        mem[64] = mem[64] + 128
                        s = _64 + 64
                        idx = 0
                        while idx < 2:
                            _1961 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1961] = stor105[call.data[4 len 64]][idx].field_0
                            mem[_1961 + 32] = stor105[call.data[4 len 64]][idx].field_256
                            mem[s] = _1961
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[_64] = _64 + 64
                        mem[0] = sha3(call.data[4 len 64])
                        mem[32] = 106
                        _1960 = mem[64]
                        mem[64] = mem[64] + 64
                        s = _1960
                        idx = 0
                        while idx < 2:
                            _3505 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3505] = stor106[call.data[4 len 64]][idx].field_0
                            mem[_3505 + 32] = stor106[call.data[4 len 64]][idx].field_256
                            mem[s] = _3505
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[_64 + 32] = _1960
                        _3503 = mem[_1960]
                        _3609 = mem[mem[_64]]
                        _3676 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3676] = 0
                        mem[_3676 + 32] = 0
                        mem[mem[64]] = mem[_3609]
                        mem[mem[64] + 32] = mem[_3609 + 32]
                        mem[mem[64] + 64] = mem[_3503]
                        mem[mem[64] + 96] = mem[_3503 + 32]
                        bn_add = bn256Add(mem[mem[64] len 128]) 
                        mem[_3676 len 64] = bn_add
                        require bn256Add.result
                        mem[0] = sha3(call.data[4 len 64])
                        mem[32] = 105
                        stor105[call.data[4 len 64]].field_0 = bn_add
                        stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                        _4096 = mem[_1960 + 32]
                        _4305 = mem[mem[_64] + 32]
                        _4556 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4556] = 0
                        mem[_4556 + 32] = 0
                        mem[mem[64]] = mem[_4305]
                        mem[mem[64] + 32] = mem[_4305 + 32]
                        mem[mem[64] + 64] = mem[_4096]
                        mem[mem[64] + 96] = mem[_4096 + 32]
                        bn_add = bn256Add(mem[mem[64] len 128]) 
                        stor105[call.data[4 len 64]].field_512 = bn_add
                        stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                        stor106[call.data[4 len 64]].field_0 = 0
                        stor106[call.data[4 len 64]].field_256 = 0
                        stor106[call.data[4 len 64]].field_512 = 0
                        stor106[call.data[4 len 64]].field_768 = 0
                        lastRollOver[call.data[4 len 64]] = block.number / epochLength
                if block.number / epochLength > lastGlobalUpdate:
                    lastGlobalUpdate = block.number / epochLength
                    stor109.length = 0
                    idx = 0
                    while stor109.length > idx:
                        stor109[idx] = 0
                        idx = idx + 1
                        continue 
                else:
                    if 0 <= stor125:
                        lastGlobalUpdate = block.number / epochLength
                        stor109.length = 0
                        idx = 0
                        while stor109.length > idx:
                            stor109[idx] = 0
                            idx = idx + 1
                            continue 
            else:
                if epochBase != 1:
                    revert with 0, 'Invalid epoch base.'
                if not epochLength:
                    revert with 0, 18
                if block.timestamp / epochLength > lastRollOver[call.data[4 len 64]]:
                    _62 = mem[64]
                    mem[0] = sha3(call.data[4 len 64])
                    mem[64] = mem[64] + 128
                    s = _62 + 64
                    idx = 0
                    while idx < 2:
                        _1952 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1952] = stor105[call.data[4 len 64]][idx].field_0
                        mem[_1952 + 32] = stor105[call.data[4 len 64]][idx].field_256
                        mem[s] = _1952
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[_62] = _62 + 64
                    mem[0] = sha3(call.data[4 len 64])
                    mem[32] = 106
                    _1951 = mem[64]
                    mem[64] = mem[64] + 64
                    s = _1951
                    idx = 0
                    while idx < 2:
                        _3493 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3493] = stor106[call.data[4 len 64]][idx].field_0
                        mem[_3493 + 32] = stor106[call.data[4 len 64]][idx].field_256
                        mem[s] = _3493
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[_62 + 32] = _1951
                    _3491 = mem[_1951]
                    _3606 = mem[mem[_62]]
                    _3658 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3658] = 0
                    mem[_3658 + 32] = 0
                    mem[mem[64]] = mem[_3606]
                    mem[mem[64] + 32] = mem[_3606 + 32]
                    mem[mem[64] + 64] = mem[_3491]
                    mem[mem[64] + 96] = mem[_3491 + 32]
                    bn_add = bn256Add(mem[mem[64] len 128]) 
                    mem[_3658 len 64] = bn_add
                    require bn256Add.result
                    mem[0] = sha3(call.data[4 len 64])
                    mem[32] = 105
                    stor105[call.data[4 len 64]].field_0 = bn_add
                    stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                    _4078 = mem[_1951 + 32]
                    _4274 = mem[mem[_62] + 32]
                    _4530 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4530] = 0
                    mem[_4530 + 32] = 0
                    mem[mem[64]] = mem[_4274]
                    mem[mem[64] + 32] = mem[_4274 + 32]
                    mem[mem[64] + 64] = mem[_4078]
                    mem[mem[64] + 96] = mem[_4078 + 32]
                    bn_add = bn256Add(mem[mem[64] len 128]) 
                    stor105[call.data[4 len 64]].field_512 = bn_add
                    stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                    stor106[call.data[4 len 64]].field_0 = 0
                    stor106[call.data[4 len 64]].field_256 = 0
                    stor106[call.data[4 len 64]].field_512 = 0
                    stor106[call.data[4 len 64]].field_768 = 0
                    lastRollOver[call.data[4 len 64]] = block.timestamp / epochLength
                else:
                    if 0 <= stor125:
                        _70 = mem[64]
                        mem[0] = sha3(call.data[4 len 64])
                        mem[64] = mem[64] + 128
                        s = _70 + 64
                        idx = 0
                        while idx < 2:
                            _1955 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1955] = stor105[call.data[4 len 64]][idx].field_0
                            mem[_1955 + 32] = stor105[call.data[4 len 64]][idx].field_256
                            mem[s] = _1955
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[_70] = _70 + 64
                        mem[0] = sha3(call.data[4 len 64])
                        mem[32] = 106
                        _1954 = mem[64]
                        mem[64] = mem[64] + 64
                        s = _1954
                        idx = 0
                        while idx < 2:
                            _3497 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3497] = stor106[call.data[4 len 64]][idx].field_0
                            mem[_3497 + 32] = stor106[call.data[4 len 64]][idx].field_256
                            mem[s] = _3497
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[_70 + 32] = _1954
                        _3495 = mem[_1954]
                        _3607 = mem[mem[_70]]
                        _3664 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3664] = 0
                        mem[_3664 + 32] = 0
                        mem[mem[64]] = mem[_3607]
                        mem[mem[64] + 32] = mem[_3607 + 32]
                        mem[mem[64] + 64] = mem[_3495]
                        mem[mem[64] + 96] = mem[_3495 + 32]
                        bn_add = bn256Add(mem[mem[64] len 128]) 
                        mem[_3664 len 64] = bn_add
                        require bn256Add.result
                        mem[0] = sha3(call.data[4 len 64])
                        mem[32] = 105
                        stor105[call.data[4 len 64]].field_0 = bn_add
                        stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                        _4084 = mem[_1954 + 32]
                        _4289 = mem[mem[_70] + 32]
                        _4540 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4540] = 0
                        mem[_4540 + 32] = 0
                        mem[mem[64]] = mem[_4289]
                        mem[mem[64] + 32] = mem[_4289 + 32]
                        mem[mem[64] + 64] = mem[_4084]
                        mem[mem[64] + 96] = mem[_4084 + 32]
                        bn_add = bn256Add(mem[mem[64] len 128]) 
                        stor105[call.data[4 len 64]].field_512 = bn_add
                        stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                        stor106[call.data[4 len 64]].field_0 = 0
                        stor106[call.data[4 len 64]].field_256 = 0
                        stor106[call.data[4 len 64]].field_512 = 0
                        stor106[call.data[4 len 64]].field_768 = 0
                        lastRollOver[call.data[4 len 64]] = block.timestamp / epochLength
                if block.timestamp / epochLength > lastGlobalUpdate:
                    lastGlobalUpdate = block.timestamp / epochLength
                    stor109.length = 0
                    idx = 0
                    while stor109.length > idx:
                        stor109[idx] = 0
                        idx = idx + 1
                        continue 
                else:
                    if 0 <= stor125:
                        lastGlobalUpdate = block.timestamp / epochLength
                        stor109.length = 0
                        idx = 0
                        while stor109.length > idx:
                            stor109[idx] = 0
                            idx = idx + 1
                            continue 
        else:
            if mem[192] != mem[mem[mem[256] + 32]]:
                if not epochBase:
                    if not epochLength:
                        revert with 0, 18
                    if block.number / epochLength > lastRollOver[call.data[4 len 64]]:
                        _104 = mem[64]
                        mem[0] = sha3(call.data[4 len 64])
                        mem[64] = mem[64] + 128
                        s = _104 + 64
                        idx = 0
                        while idx < 2:
                            _1970 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1970] = stor105[call.data[4 len 64]][idx].field_0
                            mem[_1970 + 32] = stor105[call.data[4 len 64]][idx].field_256
                            mem[s] = _1970
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[_104] = _104 + 64
                        mem[0] = sha3(call.data[4 len 64])
                        mem[32] = 106
                        _1969 = mem[64]
                        mem[64] = mem[64] + 64
                        s = _1969
                        idx = 0
                        while idx < 2:
                            _3517 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3517] = stor106[call.data[4 len 64]][idx].field_0
                            mem[_3517 + 32] = stor106[call.data[4 len 64]][idx].field_256
                            mem[s] = _3517
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[_104 + 32] = _1969
                        _3515 = mem[_1969]
                        _3612 = mem[mem[_104]]
                        _3694 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3694] = 0
                        mem[_3694 + 32] = 0
                        mem[mem[64]] = mem[_3612]
                        mem[mem[64] + 32] = mem[_3612 + 32]
                        mem[mem[64] + 64] = mem[_3515]
                        mem[mem[64] + 96] = mem[_3515 + 32]
                        bn_add = bn256Add(mem[mem[64] len 128]) 
                        mem[_3694 len 64] = bn_add
                        require bn256Add.result
                        mem[0] = sha3(call.data[4 len 64])
                        mem[32] = 105
                        stor105[call.data[4 len 64]].field_0 = bn_add
                        stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                        _4114 = mem[_1969 + 32]
                        _4322 = mem[mem[_104] + 32]
                        _4578 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4578] = 0
                        mem[_4578 + 32] = 0
                        mem[mem[64]] = mem[_4322]
                        mem[mem[64] + 32] = mem[_4322 + 32]
                        mem[mem[64] + 64] = mem[_4114]
                        mem[mem[64] + 96] = mem[_4114 + 32]
                        bn_add = bn256Add(mem[mem[64] len 128]) 
                        stor105[call.data[4 len 64]].field_512 = bn_add
                        stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                        stor106[call.data[4 len 64]].field_0 = 0
                        stor106[call.data[4 len 64]].field_256 = 0
                        stor106[call.data[4 len 64]].field_512 = 0
                        stor106[call.data[4 len 64]].field_768 = 0
                        lastRollOver[call.data[4 len 64]] = block.number / epochLength
                    else:
                        if 0 <= stor125:
                            _120 = mem[64]
                            mem[0] = sha3(call.data[4 len 64])
                            mem[64] = mem[64] + 128
                            s = _120 + 64
                            idx = 0
                            while idx < 2:
                                _1973 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1973] = stor105[call.data[4 len 64]][idx].field_0
                                mem[_1973 + 32] = stor105[call.data[4 len 64]][idx].field_256
                                mem[s] = _1973
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[_120] = _120 + 64
                            mem[0] = sha3(call.data[4 len 64])
                            mem[32] = 106
                            _1972 = mem[64]
                            mem[64] = mem[64] + 64
                            s = _1972
                            idx = 0
                            while idx < 2:
                                _3521 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3521] = stor106[call.data[4 len 64]][idx].field_0
                                mem[_3521 + 32] = stor106[call.data[4 len 64]][idx].field_256
                                mem[s] = _3521
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[_120 + 32] = _1972
                            _3519 = mem[_1972]
                            _3613 = mem[mem[_120]]
                            _3700 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3700] = 0
                            mem[_3700 + 32] = 0
                            mem[mem[64]] = mem[_3613]
                            mem[mem[64] + 32] = mem[_3613 + 32]
                            mem[mem[64] + 64] = mem[_3519]
                            mem[mem[64] + 96] = mem[_3519 + 32]
                            bn_add = bn256Add(mem[mem[64] len 128]) 
                            mem[_3700 len 64] = bn_add
                            require bn256Add.result
                            mem[0] = sha3(call.data[4 len 64])
                            mem[32] = 105
                            stor105[call.data[4 len 64]].field_0 = bn_add
                            stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                            _4120 = mem[_1972 + 32]
                            _4337 = mem[mem[_120] + 32]
                            _4588 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4588] = 0
                            mem[_4588 + 32] = 0
                            mem[mem[64]] = mem[_4337]
                            mem[mem[64] + 32] = mem[_4337 + 32]
                            mem[mem[64] + 64] = mem[_4120]
                            mem[mem[64] + 96] = mem[_4120 + 32]
                            bn_add = bn256Add(mem[mem[64] len 128]) 
                            stor105[call.data[4 len 64]].field_512 = bn_add
                            stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                            stor106[call.data[4 len 64]].field_0 = 0
                            stor106[call.data[4 len 64]].field_256 = 0
                            stor106[call.data[4 len 64]].field_512 = 0
                            stor106[call.data[4 len 64]].field_768 = 0
                            lastRollOver[call.data[4 len 64]] = block.number / epochLength
                    if block.number / epochLength > lastGlobalUpdate:
                        lastGlobalUpdate = block.number / epochLength
                        stor109.length = 0
                        idx = 0
                        while stor109.length > idx:
                            stor109[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        if 0 <= stor125:
                            lastGlobalUpdate = block.number / epochLength
                            stor109.length = 0
                            idx = 0
                            while stor109.length > idx:
                                stor109[idx] = 0
                                idx = idx + 1
                                continue 
                else:
                    if epochBase != 1:
                        revert with 0, 'Invalid epoch base.'
                    if not epochLength:
                        revert with 0, 18
                    if block.timestamp / epochLength > lastRollOver[call.data[4 len 64]]:
                        _118 = mem[64]
                        mem[0] = sha3(call.data[4 len 64])
                        mem[64] = mem[64] + 128
                        s = _118 + 64
                        idx = 0
                        while idx < 2:
                            _1964 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1964] = stor105[call.data[4 len 64]][idx].field_0
                            mem[_1964 + 32] = stor105[call.data[4 len 64]][idx].field_256
                            mem[s] = _1964
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[_118] = _118 + 64
                        mem[0] = sha3(call.data[4 len 64])
                        mem[32] = 106
                        _1963 = mem[64]
                        mem[64] = mem[64] + 64
                        s = _1963
                        idx = 0
                        while idx < 2:
                            _3509 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3509] = stor106[call.data[4 len 64]][idx].field_0
                            mem[_3509 + 32] = stor106[call.data[4 len 64]][idx].field_256
                            mem[s] = _3509
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[_118 + 32] = _1963
                        _3507 = mem[_1963]
                        _3610 = mem[mem[_118]]
                        _3682 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3682] = 0
                        mem[_3682 + 32] = 0
                        mem[mem[64]] = mem[_3610]
                        mem[mem[64] + 32] = mem[_3610 + 32]
                        mem[mem[64] + 64] = mem[_3507]
                        mem[mem[64] + 96] = mem[_3507 + 32]
                        bn_add = bn256Add(mem[mem[64] len 128]) 
                        mem[_3682 len 64] = bn_add
                        require bn256Add.result
                        mem[0] = sha3(call.data[4 len 64])
                        mem[32] = 105
                        stor105[call.data[4 len 64]].field_0 = bn_add
                        stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                        _4102 = mem[_1963 + 32]
                        _4306 = mem[mem[_118] + 32]
                        _4562 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4562] = 0
                        mem[_4562 + 32] = 0
                        mem[mem[64]] = mem[_4306]
                        mem[mem[64] + 32] = mem[_4306 + 32]
                        mem[mem[64] + 64] = mem[_4102]
                        mem[mem[64] + 96] = mem[_4102 + 32]
                        bn_add = bn256Add(mem[mem[64] len 128]) 
                        stor105[call.data[4 len 64]].field_512 = bn_add
                        stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                        stor106[call.data[4 len 64]].field_0 = 0
                        stor106[call.data[4 len 64]].field_256 = 0
                        stor106[call.data[4 len 64]].field_512 = 0
                        stor106[call.data[4 len 64]].field_768 = 0
                        lastRollOver[call.data[4 len 64]] = block.timestamp / epochLength
                    else:
                        if 0 <= stor125:
                            _133 = mem[64]
                            mem[0] = sha3(call.data[4 len 64])
                            mem[64] = mem[64] + 128
                            s = _133 + 64
                            idx = 0
                            while idx < 2:
                                _1967 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1967] = stor105[call.data[4 len 64]][idx].field_0
                                mem[_1967 + 32] = stor105[call.data[4 len 64]][idx].field_256
                                mem[s] = _1967
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[_133] = _133 + 64
                            mem[0] = sha3(call.data[4 len 64])
                            mem[32] = 106
                            _1966 = mem[64]
                            mem[64] = mem[64] + 64
                            s = _1966
                            idx = 0
                            while idx < 2:
                                _3513 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3513] = stor106[call.data[4 len 64]][idx].field_0
                                mem[_3513 + 32] = stor106[call.data[4 len 64]][idx].field_256
                                mem[s] = _3513
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[_133 + 32] = _1966
                            _3511 = mem[_1966]
                            _3611 = mem[mem[_133]]
                            _3688 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3688] = 0
                            mem[_3688 + 32] = 0
                            mem[mem[64]] = mem[_3611]
                            mem[mem[64] + 32] = mem[_3611 + 32]
                            mem[mem[64] + 64] = mem[_3511]
                            mem[mem[64] + 96] = mem[_3511 + 32]
                            bn_add = bn256Add(mem[mem[64] len 128]) 
                            mem[_3688 len 64] = bn_add
                            require bn256Add.result
                            mem[0] = sha3(call.data[4 len 64])
                            mem[32] = 105
                            stor105[call.data[4 len 64]].field_0 = bn_add
                            stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                            _4108 = mem[_1966 + 32]
                            _4321 = mem[mem[_133] + 32]
                            _4572 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4572] = 0
                            mem[_4572 + 32] = 0
                            mem[mem[64]] = mem[_4321]
                            mem[mem[64] + 32] = mem[_4321 + 32]
                            mem[mem[64] + 64] = mem[_4108]
                            mem[mem[64] + 96] = mem[_4108 + 32]
                            bn_add = bn256Add(mem[mem[64] len 128]) 
                            stor105[call.data[4 len 64]].field_512 = bn_add
                            stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                            stor106[call.data[4 len 64]].field_0 = 0
                            stor106[call.data[4 len 64]].field_256 = 0
                            stor106[call.data[4 len 64]].field_512 = 0
                            stor106[call.data[4 len 64]].field_768 = 0
                            lastRollOver[call.data[4 len 64]] = block.timestamp / epochLength
                    if block.timestamp / epochLength > lastGlobalUpdate:
                        lastGlobalUpdate = block.timestamp / epochLength
                        stor109.length = 0
                        idx = 0
                        while stor109.length > idx:
                            stor109[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        if 0 <= stor125:
                            lastGlobalUpdate = block.timestamp / epochLength
                            stor109.length = 0
                            idx = 0
                            while stor109.length > idx:
                                stor109[idx] = 0
                                idx = idx + 1
                                continue 
            else:
                if mem[mem[mem[256] + 32] + 32] != mem[224]:
                    if not epochBase:
                        if not epochLength:
                            revert with 0, 18
                        if block.number / epochLength > lastRollOver[call.data[4 len 64]]:
                            _122 = mem[64]
                            mem[0] = sha3(call.data[4 len 64])
                            mem[64] = mem[64] + 128
                            s = _122 + 64
                            idx = 0
                            while idx < 2:
                                _1982 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1982] = stor105[call.data[4 len 64]][idx].field_0
                                mem[_1982 + 32] = stor105[call.data[4 len 64]][idx].field_256
                                mem[s] = _1982
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[_122] = _122 + 64
                            mem[0] = sha3(call.data[4 len 64])
                            mem[32] = 106
                            _1981 = mem[64]
                            mem[64] = mem[64] + 64
                            s = _1981
                            idx = 0
                            while idx < 2:
                                _3533 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3533] = stor106[call.data[4 len 64]][idx].field_0
                                mem[_3533 + 32] = stor106[call.data[4 len 64]][idx].field_256
                                mem[s] = _3533
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[_122 + 32] = _1981
                            _3531 = mem[_1981]
                            _3616 = mem[mem[_122]]
                            _3718 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3718] = 0
                            mem[_3718 + 32] = 0
                            mem[mem[64]] = mem[_3616]
                            mem[mem[64] + 32] = mem[_3616 + 32]
                            mem[mem[64] + 64] = mem[_3531]
                            mem[mem[64] + 96] = mem[_3531 + 32]
                            bn_add = bn256Add(mem[mem[64] len 128]) 
                            mem[_3718 len 64] = bn_add
                            require bn256Add.result
                            mem[0] = sha3(call.data[4 len 64])
                            mem[32] = 105
                            stor105[call.data[4 len 64]].field_0 = bn_add
                            stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                            _4138 = mem[_1981 + 32]
                            _4354 = mem[mem[_122] + 32]
                            _4610 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4610] = 0
                            mem[_4610 + 32] = 0
                            mem[mem[64]] = mem[_4354]
                            mem[mem[64] + 32] = mem[_4354 + 32]
                            mem[mem[64] + 64] = mem[_4138]
                            mem[mem[64] + 96] = mem[_4138 + 32]
                            bn_add = bn256Add(mem[mem[64] len 128]) 
                            stor105[call.data[4 len 64]].field_512 = bn_add
                            stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                            stor106[call.data[4 len 64]].field_0 = 0
                            stor106[call.data[4 len 64]].field_256 = 0
                            stor106[call.data[4 len 64]].field_512 = 0
                            stor106[call.data[4 len 64]].field_768 = 0
                            lastRollOver[call.data[4 len 64]] = block.number / epochLength
                        else:
                            if 0 <= stor125:
                                _138 = mem[64]
                                mem[0] = sha3(call.data[4 len 64])
                                mem[64] = mem[64] + 128
                                s = _138 + 64
                                idx = 0
                                while idx < 2:
                                    _1985 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1985] = stor105[call.data[4 len 64]][idx].field_0
                                    mem[_1985 + 32] = stor105[call.data[4 len 64]][idx].field_256
                                    mem[s] = _1985
                                    s = s + 32
                                    idx = idx + 1
                                    continue 
                                mem[_138] = _138 + 64
                                mem[0] = sha3(call.data[4 len 64])
                                mem[32] = 106
                                _1984 = mem[64]
                                mem[64] = mem[64] + 64
                                s = _1984
                                idx = 0
                                while idx < 2:
                                    _3537 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3537] = stor106[call.data[4 len 64]][idx].field_0
                                    mem[_3537 + 32] = stor106[call.data[4 len 64]][idx].field_256
                                    mem[s] = _3537
                                    s = s + 32
                                    idx = idx + 1
                                    continue 
                                mem[_138 + 32] = _1984
                                _3535 = mem[_1984]
                                _3617 = mem[mem[_138]]
                                _3724 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3724] = 0
                                mem[_3724 + 32] = 0
                                mem[mem[64]] = mem[_3617]
                                mem[mem[64] + 32] = mem[_3617 + 32]
                                mem[mem[64] + 64] = mem[_3535]
                                mem[mem[64] + 96] = mem[_3535 + 32]
                                bn_add = bn256Add(mem[mem[64] len 128]) 
                                mem[_3724 len 64] = bn_add
                                require bn256Add.result
                                mem[0] = sha3(call.data[4 len 64])
                                mem[32] = 105
                                stor105[call.data[4 len 64]].field_0 = bn_add
                                stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                                _4144 = mem[_1984 + 32]
                                _4369 = mem[mem[_138] + 32]
                                _4620 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4620] = 0
                                mem[_4620 + 32] = 0
                                mem[mem[64]] = mem[_4369]
                                mem[mem[64] + 32] = mem[_4369 + 32]
                                mem[mem[64] + 64] = mem[_4144]
                                mem[mem[64] + 96] = mem[_4144 + 32]
                                bn_add = bn256Add(mem[mem[64] len 128]) 
                                stor105[call.data[4 len 64]].field_512 = bn_add
                                stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                                stor106[call.data[4 len 64]].field_0 = 0
                                stor106[call.data[4 len 64]].field_256 = 0
                                stor106[call.data[4 len 64]].field_512 = 0
                                stor106[call.data[4 len 64]].field_768 = 0
                                lastRollOver[call.data[4 len 64]] = block.number / epochLength
                        if block.number / epochLength > lastGlobalUpdate:
                            lastGlobalUpdate = block.number / epochLength
                            stor109.length = 0
                            idx = 0
                            while stor109.length > idx:
                                stor109[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 0 <= stor125:
                                lastGlobalUpdate = block.number / epochLength
                                stor109.length = 0
                                idx = 0
                                while stor109.length > idx:
                                    stor109[idx] = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        if epochBase != 1:
                            revert with 0, 'Invalid epoch base.'
                        if not epochLength:
                            revert with 0, 18
                        if block.timestamp / epochLength > lastRollOver[call.data[4 len 64]]:
                            _136 = mem[64]
                            mem[0] = sha3(call.data[4 len 64])
                            mem[64] = mem[64] + 128
                            s = _136 + 64
                            idx = 0
                            while idx < 2:
                                _1976 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1976] = stor105[call.data[4 len 64]][idx].field_0
                                mem[_1976 + 32] = stor105[call.data[4 len 64]][idx].field_256
                                mem[s] = _1976
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[_136] = _136 + 64
                            mem[0] = sha3(call.data[4 len 64])
                            mem[32] = 106
                            _1975 = mem[64]
                            mem[64] = mem[64] + 64
                            s = _1975
                            idx = 0
                            while idx < 2:
                                _3525 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3525] = stor106[call.data[4 len 64]][idx].field_0
                                mem[_3525 + 32] = stor106[call.data[4 len 64]][idx].field_256
                                mem[s] = _3525
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[_136 + 32] = _1975
                            _3523 = mem[_1975]
                            _3614 = mem[mem[_136]]
                            _3706 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3706] = 0
                            mem[_3706 + 32] = 0
                            mem[mem[64]] = mem[_3614]
                            mem[mem[64] + 32] = mem[_3614 + 32]
                            mem[mem[64] + 64] = mem[_3523]
                            mem[mem[64] + 96] = mem[_3523 + 32]
                            bn_add = bn256Add(mem[mem[64] len 128]) 
                            mem[_3706 len 64] = bn_add
                            require bn256Add.result
                            mem[0] = sha3(call.data[4 len 64])
                            mem[32] = 105
                            stor105[call.data[4 len 64]].field_0 = bn_add
                            stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                            _4126 = mem[_1975 + 32]
                            _4338 = mem[mem[_136] + 32]
                            _4594 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4594] = 0
                            mem[_4594 + 32] = 0
                            mem[mem[64]] = mem[_4338]
                            mem[mem[64] + 32] = mem[_4338 + 32]
                            mem[mem[64] + 64] = mem[_4126]
                            mem[mem[64] + 96] = mem[_4126 + 32]
                            bn_add = bn256Add(mem[mem[64] len 128]) 
                            stor105[call.data[4 len 64]].field_512 = bn_add
                            stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                            stor106[call.data[4 len 64]].field_0 = 0
                            stor106[call.data[4 len 64]].field_256 = 0
                            stor106[call.data[4 len 64]].field_512 = 0
                            stor106[call.data[4 len 64]].field_768 = 0
                            lastRollOver[call.data[4 len 64]] = block.timestamp / epochLength
                        else:
                            if 0 <= stor125:
                                _148 = mem[64]
                                mem[0] = sha3(call.data[4 len 64])
                                mem[64] = mem[64] + 128
                                s = _148 + 64
                                idx = 0
                                while idx < 2:
                                    _1979 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1979] = stor105[call.data[4 len 64]][idx].field_0
                                    mem[_1979 + 32] = stor105[call.data[4 len 64]][idx].field_256
                                    mem[s] = _1979
                                    s = s + 32
                                    idx = idx + 1
                                    continue 
                                mem[_148] = _148 + 64
                                mem[0] = sha3(call.data[4 len 64])
                                mem[32] = 106
                                _1978 = mem[64]
                                mem[64] = mem[64] + 64
                                s = _1978
                                idx = 0
                                while idx < 2:
                                    _3529 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3529] = stor106[call.data[4 len 64]][idx].field_0
                                    mem[_3529 + 32] = stor106[call.data[4 len 64]][idx].field_256
                                    mem[s] = _3529
                                    s = s + 32
                                    idx = idx + 1
                                    continue 
                                mem[_148 + 32] = _1978
                                _3527 = mem[_1978]
                                _3615 = mem[mem[_148]]
                                _3712 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3712] = 0
                                mem[_3712 + 32] = 0
                                mem[mem[64]] = mem[_3615]
                                mem[mem[64] + 32] = mem[_3615 + 32]
                                mem[mem[64] + 64] = mem[_3527]
                                mem[mem[64] + 96] = mem[_3527 + 32]
                                bn_add = bn256Add(mem[mem[64] len 128]) 
                                mem[_3712 len 64] = bn_add
                                require bn256Add.result
                                mem[0] = sha3(call.data[4 len 64])
                                mem[32] = 105
                                stor105[call.data[4 len 64]].field_0 = bn_add
                                stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                                _4132 = mem[_1978 + 32]
                                _4353 = mem[mem[_148] + 32]
                                _4604 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4604] = 0
                                mem[_4604 + 32] = 0
                                mem[mem[64]] = mem[_4353]
                                mem[mem[64] + 32] = mem[_4353 + 32]
                                mem[mem[64] + 64] = mem[_4132]
                                mem[mem[64] + 96] = mem[_4132 + 32]
                                bn_add = bn256Add(mem[mem[64] len 128]) 
                                stor105[call.data[4 len 64]].field_512 = bn_add
                                stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                                stor106[call.data[4 len 64]].field_0 = 0
                                stor106[call.data[4 len 64]].field_256 = 0
                                stor106[call.data[4 len 64]].field_512 = 0
                                stor106[call.data[4 len 64]].field_768 = 0
                                lastRollOver[call.data[4 len 64]] = block.timestamp / epochLength
                        if block.timestamp / epochLength > lastGlobalUpdate:
                            lastGlobalUpdate = block.timestamp / epochLength
                            stor109.length = 0
                            idx = 0
                            while stor109.length > idx:
                                stor109[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 0 <= stor125:
                                lastGlobalUpdate = block.timestamp / epochLength
                                stor109.length = 0
                                idx = 0
                                while stor109.length > idx:
                                    stor109[idx] = 0
                                    idx = idx + 1
                                    continue 
                else:
                    if mem[192] != mem[mem[_20]]:
                        if not epochBase:
                            if not epochLength:
                                revert with 0, 18
                            if block.number / epochLength > lastRollOver[call.data[4 len 64]]:
                                _240 = mem[64]
                                mem[0] = sha3(call.data[4 len 64])
                                mem[64] = mem[64] + 128
                                s = _240 + 64
                                idx = 0
                                while idx < 2:
                                    _1994 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1994] = stor105[call.data[4 len 64]][idx].field_0
                                    mem[_1994 + 32] = stor105[call.data[4 len 64]][idx].field_256
                                    mem[s] = _1994
                                    s = s + 32
                                    idx = idx + 1
                                    continue 
                                mem[_240] = _240 + 64
                                mem[0] = sha3(call.data[4 len 64])
                                mem[32] = 106
                                _1993 = mem[64]
                                mem[64] = mem[64] + 64
                                s = _1993
                                idx = 0
                                while idx < 2:
                                    _3549 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3549] = stor106[call.data[4 len 64]][idx].field_0
                                    mem[_3549 + 32] = stor106[call.data[4 len 64]][idx].field_256
                                    mem[s] = _3549
                                    s = s + 32
                                    idx = idx + 1
                                    continue 
                                mem[_240 + 32] = _1993
                                _3547 = mem[_1993]
                                _3620 = mem[mem[_240]]
                                _3742 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3742] = 0
                                mem[_3742 + 32] = 0
                                mem[mem[64]] = mem[_3620]
                                mem[mem[64] + 32] = mem[_3620 + 32]
                                mem[mem[64] + 64] = mem[_3547]
                                mem[mem[64] + 96] = mem[_3547 + 32]
                                bn_add = bn256Add(mem[mem[64] len 128]) 
                                mem[_3742 len 64] = bn_add
                                require bn256Add.result
                                mem[0] = sha3(call.data[4 len 64])
                                mem[32] = 105
                                stor105[call.data[4 len 64]].field_0 = bn_add
                                stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                                _4162 = mem[_1993 + 32]
                                _4386 = mem[mem[_240] + 32]
                                _4642 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4642] = 0
                                mem[_4642 + 32] = 0
                                mem[mem[64]] = mem[_4386]
                                mem[mem[64] + 32] = mem[_4386 + 32]
                                mem[mem[64] + 64] = mem[_4162]
                                mem[mem[64] + 96] = mem[_4162 + 32]
                                bn_add = bn256Add(mem[mem[64] len 128]) 
                                stor105[call.data[4 len 64]].field_512 = bn_add
                                stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                                stor106[call.data[4 len 64]].field_0 = 0
                                stor106[call.data[4 len 64]].field_256 = 0
                                stor106[call.data[4 len 64]].field_512 = 0
                                stor106[call.data[4 len 64]].field_768 = 0
                                lastRollOver[call.data[4 len 64]] = block.number / epochLength
                            else:
                                if 0 <= stor125:
                                    _278 = mem[64]
                                    mem[0] = sha3(call.data[4 len 64])
                                    mem[64] = mem[64] + 128
                                    s = _278 + 64
                                    idx = 0
                                    while idx < 2:
                                        _1997 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1997] = stor105[call.data[4 len 64]][idx].field_0
                                        mem[_1997 + 32] = stor105[call.data[4 len 64]][idx].field_256
                                        mem[s] = _1997
                                        s = s + 32
                                        idx = idx + 1
                                        continue 
                                    mem[_278] = _278 + 64
                                    mem[0] = sha3(call.data[4 len 64])
                                    mem[32] = 106
                                    _1996 = mem[64]
                                    mem[64] = mem[64] + 64
                                    s = _1996
                                    idx = 0
                                    while idx < 2:
                                        _3553 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3553] = stor106[call.data[4 len 64]][idx].field_0
                                        mem[_3553 + 32] = stor106[call.data[4 len 64]][idx].field_256
                                        mem[s] = _3553
                                        s = s + 32
                                        idx = idx + 1
                                        continue 
                                    mem[_278 + 32] = _1996
                                    _3551 = mem[_1996]
                                    _3621 = mem[mem[_278]]
                                    _3748 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3748] = 0
                                    mem[_3748 + 32] = 0
                                    mem[mem[64]] = mem[_3621]
                                    mem[mem[64] + 32] = mem[_3621 + 32]
                                    mem[mem[64] + 64] = mem[_3551]
                                    mem[mem[64] + 96] = mem[_3551 + 32]
                                    bn_add = bn256Add(mem[mem[64] len 128]) 
                                    mem[_3748 len 64] = bn_add
                                    require bn256Add.result
                                    mem[0] = sha3(call.data[4 len 64])
                                    mem[32] = 105
                                    stor105[call.data[4 len 64]].field_0 = bn_add
                                    stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                                    _4168 = mem[_1996 + 32]
                                    _4401 = mem[mem[_278] + 32]
                                    _4652 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4652] = 0
                                    mem[_4652 + 32] = 0
                                    mem[mem[64]] = mem[_4401]
                                    mem[mem[64] + 32] = mem[_4401 + 32]
                                    mem[mem[64] + 64] = mem[_4168]
                                    mem[mem[64] + 96] = mem[_4168 + 32]
                                    bn_add = bn256Add(mem[mem[64] len 128]) 
                                    stor105[call.data[4 len 64]].field_512 = bn_add
                                    stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                                    stor106[call.data[4 len 64]].field_0 = 0
                                    stor106[call.data[4 len 64]].field_256 = 0
                                    stor106[call.data[4 len 64]].field_512 = 0
                                    stor106[call.data[4 len 64]].field_768 = 0
                                    lastRollOver[call.data[4 len 64]] = block.number / epochLength
                            if block.number / epochLength > lastGlobalUpdate:
                                lastGlobalUpdate = block.number / epochLength
                                stor109.length = 0
                                idx = 0
                                while stor109.length > idx:
                                    stor109[idx] = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 0 <= stor125:
                                    lastGlobalUpdate = block.number / epochLength
                                    stor109.length = 0
                                    idx = 0
                                    while stor109.length > idx:
                                        stor109[idx] = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if epochBase != 1:
                                revert with 0, 'Invalid epoch base.'
                            if not epochLength:
                                revert with 0, 18
                            if block.timestamp / epochLength > lastRollOver[call.data[4 len 64]]:
                                _276 = mem[64]
                                mem[0] = sha3(call.data[4 len 64])
                                mem[64] = mem[64] + 128
                                s = _276 + 64
                                idx = 0
                                while idx < 2:
                                    _1988 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1988] = stor105[call.data[4 len 64]][idx].field_0
                                    mem[_1988 + 32] = stor105[call.data[4 len 64]][idx].field_256
                                    mem[s] = _1988
                                    s = s + 32
                                    idx = idx + 1
                                    continue 
                                mem[_276] = _276 + 64
                                mem[0] = sha3(call.data[4 len 64])
                                mem[32] = 106
                                _1987 = mem[64]
                                mem[64] = mem[64] + 64
                                s = _1987
                                idx = 0
                                while idx < 2:
                                    _3541 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3541] = stor106[call.data[4 len 64]][idx].field_0
                                    mem[_3541 + 32] = stor106[call.data[4 len 64]][idx].field_256
                                    mem[s] = _3541
                                    s = s + 32
                                    idx = idx + 1
                                    continue 
                                mem[_276 + 32] = _1987
                                _3539 = mem[_1987]
                                _3618 = mem[mem[_276]]
                                _3730 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3730] = 0
                                mem[_3730 + 32] = 0
                                mem[mem[64]] = mem[_3618]
                                mem[mem[64] + 32] = mem[_3618 + 32]
                                mem[mem[64] + 64] = mem[_3539]
                                mem[mem[64] + 96] = mem[_3539 + 32]
                                bn_add = bn256Add(mem[mem[64] len 128]) 
                                mem[_3730 len 64] = bn_add
                                require bn256Add.result
                                mem[0] = sha3(call.data[4 len 64])
                                mem[32] = 105
                                stor105[call.data[4 len 64]].field_0 = bn_add
                                stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                                _4150 = mem[_1987 + 32]
                                _4370 = mem[mem[_276] + 32]
                                _4626 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4626] = 0
                                mem[_4626 + 32] = 0
                                mem[mem[64]] = mem[_4370]
                                mem[mem[64] + 32] = mem[_4370 + 32]
                                mem[mem[64] + 64] = mem[_4150]
                                mem[mem[64] + 96] = mem[_4150 + 32]
                                bn_add = bn256Add(mem[mem[64] len 128]) 
                                stor105[call.data[4 len 64]].field_512 = bn_add
                                stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                                stor106[call.data[4 len 64]].field_0 = 0
                                stor106[call.data[4 len 64]].field_256 = 0
                                stor106[call.data[4 len 64]].field_512 = 0
                                stor106[call.data[4 len 64]].field_768 = 0
                                lastRollOver[call.data[4 len 64]] = block.timestamp / epochLength
                            else:
                                if 0 <= stor125:
                                    _307 = mem[64]
                                    mem[0] = sha3(call.data[4 len 64])
                                    mem[64] = mem[64] + 128
                                    s = _307 + 64
                                    idx = 0
                                    while idx < 2:
                                        _1991 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1991] = stor105[call.data[4 len 64]][idx].field_0
                                        mem[_1991 + 32] = stor105[call.data[4 len 64]][idx].field_256
                                        mem[s] = _1991
                                        s = s + 32
                                        idx = idx + 1
                                        continue 
                                    mem[_307] = _307 + 64
                                    mem[0] = sha3(call.data[4 len 64])
                                    mem[32] = 106
                                    _1990 = mem[64]
                                    mem[64] = mem[64] + 64
                                    s = _1990
                                    idx = 0
                                    while idx < 2:
                                        _3545 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3545] = stor106[call.data[4 len 64]][idx].field_0
                                        mem[_3545 + 32] = stor106[call.data[4 len 64]][idx].field_256
                                        mem[s] = _3545
                                        s = s + 32
                                        idx = idx + 1
                                        continue 
                                    mem[_307 + 32] = _1990
                                    _3543 = mem[_1990]
                                    _3619 = mem[mem[_307]]
                                    _3736 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3736] = 0
                                    mem[_3736 + 32] = 0
                                    mem[mem[64]] = mem[_3619]
                                    mem[mem[64] + 32] = mem[_3619 + 32]
                                    mem[mem[64] + 64] = mem[_3543]
                                    mem[mem[64] + 96] = mem[_3543 + 32]
                                    bn_add = bn256Add(mem[mem[64] len 128]) 
                                    mem[_3736 len 64] = bn_add
                                    require bn256Add.result
                                    mem[0] = sha3(call.data[4 len 64])
                                    mem[32] = 105
                                    stor105[call.data[4 len 64]].field_0 = bn_add
                                    stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                                    _4156 = mem[_1990 + 32]
                                    _4385 = mem[mem[_307] + 32]
                                    _4636 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4636] = 0
                                    mem[_4636 + 32] = 0
                                    mem[mem[64]] = mem[_4385]
                                    mem[mem[64] + 32] = mem[_4385 + 32]
                                    mem[mem[64] + 64] = mem[_4156]
                                    mem[mem[64] + 96] = mem[_4156 + 32]
                                    bn_add = bn256Add(mem[mem[64] len 128]) 
                                    stor105[call.data[4 len 64]].field_512 = bn_add
                                    stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                                    stor106[call.data[4 len 64]].field_0 = 0
                                    stor106[call.data[4 len 64]].field_256 = 0
                                    stor106[call.data[4 len 64]].field_512 = 0
                                    stor106[call.data[4 len 64]].field_768 = 0
                                    lastRollOver[call.data[4 len 64]] = block.timestamp / epochLength
                            if block.timestamp / epochLength > lastGlobalUpdate:
                                lastGlobalUpdate = block.timestamp / epochLength
                                stor109.length = 0
                                idx = 0
                                while stor109.length > idx:
                                    stor109[idx] = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 0 <= stor125:
                                    lastGlobalUpdate = block.timestamp / epochLength
                                    stor109.length = 0
                                    idx = 0
                                    while stor109.length > idx:
                                        stor109[idx] = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        if mem[mem[_20] + 32] != mem[224]:
                            if not epochBase:
                                if not epochLength:
                                    revert with 0, 18
                                if block.number / epochLength > lastRollOver[call.data[4 len 64]]:
                                    _280 = mem[64]
                                    mem[0] = sha3(call.data[4 len 64])
                                    mem[64] = mem[64] + 128
                                    s = _280 + 64
                                    idx = 0
                                    while idx < 2:
                                        _2006 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2006] = stor105[call.data[4 len 64]][idx].field_0
                                        mem[_2006 + 32] = stor105[call.data[4 len 64]][idx].field_256
                                        mem[s] = _2006
                                        s = s + 32
                                        idx = idx + 1
                                        continue 
                                    mem[_280] = _280 + 64
                                    mem[0] = sha3(call.data[4 len 64])
                                    mem[32] = 106
                                    _2005 = mem[64]
                                    mem[64] = mem[64] + 64
                                    s = _2005
                                    idx = 0
                                    while idx < 2:
                                        _3565 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3565] = stor106[call.data[4 len 64]][idx].field_0
                                        mem[_3565 + 32] = stor106[call.data[4 len 64]][idx].field_256
                                        mem[s] = _3565
                                        s = s + 32
                                        idx = idx + 1
                                        continue 
                                    mem[_280 + 32] = _2005
                                    _3563 = mem[_2005]
                                    _3624 = mem[mem[_280]]
                                    _3766 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3766] = 0
                                    mem[_3766 + 32] = 0
                                    mem[mem[64]] = mem[_3624]
                                    mem[mem[64] + 32] = mem[_3624 + 32]
                                    mem[mem[64] + 64] = mem[_3563]
                                    mem[mem[64] + 96] = mem[_3563 + 32]
                                    bn_add = bn256Add(mem[mem[64] len 128]) 
                                    mem[_3766 len 64] = bn_add
                                    require bn256Add.result
                                    mem[0] = sha3(call.data[4 len 64])
                                    mem[32] = 105
                                    stor105[call.data[4 len 64]].field_0 = bn_add
                                    stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                                    _4186 = mem[_2005 + 32]
                                    _4418 = mem[mem[_280] + 32]
                                    _4674 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4674] = 0
                                    mem[_4674 + 32] = 0
                                    mem[mem[64]] = mem[_4418]
                                    mem[mem[64] + 32] = mem[_4418 + 32]
                                    mem[mem[64] + 64] = mem[_4186]
                                    mem[mem[64] + 96] = mem[_4186 + 32]
                                    bn_add = bn256Add(mem[mem[64] len 128]) 
                                    stor105[call.data[4 len 64]].field_512 = bn_add
                                    stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                                    stor106[call.data[4 len 64]].field_0 = 0
                                    stor106[call.data[4 len 64]].field_256 = 0
                                    stor106[call.data[4 len 64]].field_512 = 0
                                    stor106[call.data[4 len 64]].field_768 = 0
                                    lastRollOver[call.data[4 len 64]] = block.number / epochLength
                                else:
                                    if 0 <= stor125:
                                        _312 = mem[64]
                                        mem[0] = sha3(call.data[4 len 64])
                                        mem[64] = mem[64] + 128
                                        s = _312 + 64
                                        idx = 0
                                        while idx < 2:
                                            _2009 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2009] = stor105[call.data[4 len 64]][idx].field_0
                                            mem[_2009 + 32] = stor105[call.data[4 len 64]][idx].field_256
                                            mem[s] = _2009
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                                        mem[_312] = _312 + 64
                                        mem[0] = sha3(call.data[4 len 64])
                                        mem[32] = 106
                                        _2008 = mem[64]
                                        mem[64] = mem[64] + 64
                                        s = _2008
                                        idx = 0
                                        while idx < 2:
                                            _3569 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3569] = stor106[call.data[4 len 64]][idx].field_0
                                            mem[_3569 + 32] = stor106[call.data[4 len 64]][idx].field_256
                                            mem[s] = _3569
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                                        mem[_312 + 32] = _2008
                                        _3567 = mem[_2008]
                                        _3625 = mem[mem[_312]]
                                        _3772 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3772] = 0
                                        mem[_3772 + 32] = 0
                                        mem[mem[64]] = mem[_3625]
                                        mem[mem[64] + 32] = mem[_3625 + 32]
                                        mem[mem[64] + 64] = mem[_3567]
                                        mem[mem[64] + 96] = mem[_3567 + 32]
                                        bn_add = bn256Add(mem[mem[64] len 128]) 
                                        mem[_3772 len 64] = bn_add
                                        require bn256Add.result
                                        mem[0] = sha3(call.data[4 len 64])
                                        mem[32] = 105
                                        stor105[call.data[4 len 64]].field_0 = bn_add
                                        stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                                        _4192 = mem[_2008 + 32]
                                        _4433 = mem[mem[_312] + 32]
                                        _4684 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4684] = 0
                                        mem[_4684 + 32] = 0
                                        mem[mem[64]] = mem[_4433]
                                        mem[mem[64] + 32] = mem[_4433 + 32]
                                        mem[mem[64] + 64] = mem[_4192]
                                        mem[mem[64] + 96] = mem[_4192 + 32]
                                        bn_add = bn256Add(mem[mem[64] len 128]) 
                                        stor105[call.data[4 len 64]].field_512 = bn_add
                                        stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                                        stor106[call.data[4 len 64]].field_0 = 0
                                        stor106[call.data[4 len 64]].field_256 = 0
                                        stor106[call.data[4 len 64]].field_512 = 0
                                        stor106[call.data[4 len 64]].field_768 = 0
                                        lastRollOver[call.data[4 len 64]] = block.number / epochLength
                                if block.number / epochLength > lastGlobalUpdate:
                                    lastGlobalUpdate = block.number / epochLength
                                    stor109.length = 0
                                    idx = 0
                                    while stor109.length > idx:
                                        stor109[idx] = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 0 <= stor125:
                                        lastGlobalUpdate = block.number / epochLength
                                        stor109.length = 0
                                        idx = 0
                                        while stor109.length > idx:
                                            stor109[idx] = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                if epochBase != 1:
                                    revert with 0, 'Invalid epoch base.'
                                if not epochLength:
                                    revert with 0, 18
                                if block.timestamp / epochLength > lastRollOver[call.data[4 len 64]]:
                                    _310 = mem[64]
                                    mem[0] = sha3(call.data[4 len 64])
                                    mem[64] = mem[64] + 128
                                    s = _310 + 64
                                    idx = 0
                                    while idx < 2:
                                        _2000 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2000] = stor105[call.data[4 len 64]][idx].field_0
                                        mem[_2000 + 32] = stor105[call.data[4 len 64]][idx].field_256
                                        mem[s] = _2000
                                        s = s + 32
                                        idx = idx + 1
                                        continue 
                                    mem[_310] = _310 + 64
                                    mem[0] = sha3(call.data[4 len 64])
                                    mem[32] = 106
                                    _1999 = mem[64]
                                    mem[64] = mem[64] + 64
                                    s = _1999
                                    idx = 0
                                    while idx < 2:
                                        _3557 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3557] = stor106[call.data[4 len 64]][idx].field_0
                                        mem[_3557 + 32] = stor106[call.data[4 len 64]][idx].field_256
                                        mem[s] = _3557
                                        s = s + 32
                                        idx = idx + 1
                                        continue 
                                    mem[_310 + 32] = _1999
                                    _3555 = mem[_1999]
                                    _3622 = mem[mem[_310]]
                                    _3754 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3754] = 0
                                    mem[_3754 + 32] = 0
                                    mem[mem[64]] = mem[_3622]
                                    mem[mem[64] + 32] = mem[_3622 + 32]
                                    mem[mem[64] + 64] = mem[_3555]
                                    mem[mem[64] + 96] = mem[_3555 + 32]
                                    bn_add = bn256Add(mem[mem[64] len 128]) 
                                    mem[_3754 len 64] = bn_add
                                    require bn256Add.result
                                    mem[0] = sha3(call.data[4 len 64])
                                    mem[32] = 105
                                    stor105[call.data[4 len 64]].field_0 = bn_add
                                    stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                                    _4174 = mem[_1999 + 32]
                                    _4402 = mem[mem[_310] + 32]
                                    _4658 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4658] = 0
                                    mem[_4658 + 32] = 0
                                    mem[mem[64]] = mem[_4402]
                                    mem[mem[64] + 32] = mem[_4402 + 32]
                                    mem[mem[64] + 64] = mem[_4174]
                                    mem[mem[64] + 96] = mem[_4174 + 32]
                                    bn_add = bn256Add(mem[mem[64] len 128]) 
                                    stor105[call.data[4 len 64]].field_512 = bn_add
                                    stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                                    stor106[call.data[4 len 64]].field_0 = 0
                                    stor106[call.data[4 len 64]].field_256 = 0
                                    stor106[call.data[4 len 64]].field_512 = 0
                                    stor106[call.data[4 len 64]].field_768 = 0
                                    lastRollOver[call.data[4 len 64]] = block.timestamp / epochLength
                                else:
                                    if 0 <= stor125:
                                        _332 = mem[64]
                                        mem[0] = sha3(call.data[4 len 64])
                                        mem[64] = mem[64] + 128
                                        s = _332 + 64
                                        idx = 0
                                        while idx < 2:
                                            _2003 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2003] = stor105[call.data[4 len 64]][idx].field_0
                                            mem[_2003 + 32] = stor105[call.data[4 len 64]][idx].field_256
                                            mem[s] = _2003
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                                        mem[_332] = _332 + 64
                                        mem[0] = sha3(call.data[4 len 64])
                                        mem[32] = 106
                                        _2002 = mem[64]
                                        mem[64] = mem[64] + 64
                                        s = _2002
                                        idx = 0
                                        while idx < 2:
                                            _3561 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3561] = stor106[call.data[4 len 64]][idx].field_0
                                            mem[_3561 + 32] = stor106[call.data[4 len 64]][idx].field_256
                                            mem[s] = _3561
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                                        mem[_332 + 32] = _2002
                                        _3559 = mem[_2002]
                                        _3623 = mem[mem[_332]]
                                        _3760 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3760] = 0
                                        mem[_3760 + 32] = 0
                                        mem[mem[64]] = mem[_3623]
                                        mem[mem[64] + 32] = mem[_3623 + 32]
                                        mem[mem[64] + 64] = mem[_3559]
                                        mem[mem[64] + 96] = mem[_3559 + 32]
                                        bn_add = bn256Add(mem[mem[64] len 128]) 
                                        mem[_3760 len 64] = bn_add
                                        require bn256Add.result
                                        mem[0] = sha3(call.data[4 len 64])
                                        mem[32] = 105
                                        stor105[call.data[4 len 64]].field_0 = bn_add
                                        stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                                        _4180 = mem[_2002 + 32]
                                        _4417 = mem[mem[_332] + 32]
                                        _4668 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4668] = 0
                                        mem[_4668 + 32] = 0
                                        mem[mem[64]] = mem[_4417]
                                        mem[mem[64] + 32] = mem[_4417 + 32]
                                        mem[mem[64] + 64] = mem[_4180]
                                        mem[mem[64] + 96] = mem[_4180 + 32]
                                        bn_add = bn256Add(mem[mem[64] len 128]) 
                                        stor105[call.data[4 len 64]].field_512 = bn_add
                                        stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                                        stor106[call.data[4 len 64]].field_0 = 0
                                        stor106[call.data[4 len 64]].field_256 = 0
                                        stor106[call.data[4 len 64]].field_512 = 0
                                        stor106[call.data[4 len 64]].field_768 = 0
                                        lastRollOver[call.data[4 len 64]] = block.timestamp / epochLength
                                if block.timestamp / epochLength > lastGlobalUpdate:
                                    lastGlobalUpdate = block.timestamp / epochLength
                                    stor109.length = 0
                                    idx = 0
                                    while stor109.length > idx:
                                        stor109[idx] = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 0 <= stor125:
                                        lastGlobalUpdate = block.timestamp / epochLength
                                        stor109.length = 0
                                        idx = 0
                                        while stor109.length > idx:
                                            stor109[idx] = 0
                                            idx = idx + 1
                                            continue 
                        else:
                            if mem[192] != mem[mem[_20 + 32]]:
                                if not epochBase:
                                    if not epochLength:
                                        revert with 0, 18
                                    if block.number / epochLength > lastRollOver[call.data[4 len 64]]:
                                        _484 = mem[64]
                                        mem[0] = sha3(call.data[4 len 64])
                                        mem[64] = mem[64] + 128
                                        s = _484 + 64
                                        idx = 0
                                        while idx < 2:
                                            _2018 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2018] = stor105[call.data[4 len 64]][idx].field_0
                                            mem[_2018 + 32] = stor105[call.data[4 len 64]][idx].field_256
                                            mem[s] = _2018
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                                        mem[_484] = _484 + 64
                                        mem[0] = sha3(call.data[4 len 64])
                                        mem[32] = 106
                                        _2017 = mem[64]
                                        mem[64] = mem[64] + 64
                                        s = _2017
                                        idx = 0
                                        while idx < 2:
                                            _3581 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3581] = stor106[call.data[4 len 64]][idx].field_0
                                            mem[_3581 + 32] = stor106[call.data[4 len 64]][idx].field_256
                                            mem[s] = _3581
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                                        mem[_484 + 32] = _2017
                                        _3579 = mem[_2017]
                                        _3628 = mem[mem[_484]]
                                        _3790 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3790] = 0
                                        mem[_3790 + 32] = 0
                                        mem[mem[64]] = mem[_3628]
                                        mem[mem[64] + 32] = mem[_3628 + 32]
                                        mem[mem[64] + 64] = mem[_3579]
                                        mem[mem[64] + 96] = mem[_3579 + 32]
                                        bn_add = bn256Add(mem[mem[64] len 128]) 
                                        mem[_3790 len 64] = bn_add
                                        require bn256Add.result
                                        mem[0] = sha3(call.data[4 len 64])
                                        mem[32] = 105
                                        stor105[call.data[4 len 64]].field_0 = bn_add
                                        stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                                        _4210 = mem[_2017 + 32]
                                        _4450 = mem[mem[_484] + 32]
                                        _4706 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4706] = 0
                                        mem[_4706 + 32] = 0
                                        mem[mem[64]] = mem[_4450]
                                        mem[mem[64] + 32] = mem[_4450 + 32]
                                        mem[mem[64] + 64] = mem[_4210]
                                        mem[mem[64] + 96] = mem[_4210 + 32]
                                        bn_add = bn256Add(mem[mem[64] len 128]) 
                                        stor105[call.data[4 len 64]].field_512 = bn_add
                                        stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                                        stor106[call.data[4 len 64]].field_0 = 0
                                        stor106[call.data[4 len 64]].field_256 = 0
                                        stor106[call.data[4 len 64]].field_512 = 0
                                        stor106[call.data[4 len 64]].field_768 = 0
                                        lastRollOver[call.data[4 len 64]] = block.number / epochLength
                                    else:
                                        if 0 <= stor125:
                                            _537 = mem[64]
                                            mem[0] = sha3(call.data[4 len 64])
                                            mem[64] = mem[64] + 128
                                            s = _537 + 64
                                            idx = 0
                                            while idx < 2:
                                                _2021 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2021] = stor105[call.data[4 len 64]][idx].field_0
                                                mem[_2021 + 32] = stor105[call.data[4 len 64]][idx].field_256
                                                mem[s] = _2021
                                                s = s + 32
                                                idx = idx + 1
                                                continue 
                                            mem[_537] = _537 + 64
                                            mem[0] = sha3(call.data[4 len 64])
                                            mem[32] = 106
                                            _2020 = mem[64]
                                            mem[64] = mem[64] + 64
                                            s = _2020
                                            idx = 0
                                            while idx < 2:
                                                _3585 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3585] = stor106[call.data[4 len 64]][idx].field_0
                                                mem[_3585 + 32] = stor106[call.data[4 len 64]][idx].field_256
                                                mem[s] = _3585
                                                s = s + 32
                                                idx = idx + 1
                                                continue 
                                            mem[_537 + 32] = _2020
                                            _3583 = mem[_2020]
                                            _3629 = mem[mem[_537]]
                                            _3796 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3796] = 0
                                            mem[_3796 + 32] = 0
                                            mem[mem[64]] = mem[_3629]
                                            mem[mem[64] + 32] = mem[_3629 + 32]
                                            mem[mem[64] + 64] = mem[_3583]
                                            mem[mem[64] + 96] = mem[_3583 + 32]
                                            bn_add = bn256Add(mem[mem[64] len 128]) 
                                            mem[_3796 len 64] = bn_add
                                            require bn256Add.result
                                            mem[0] = sha3(call.data[4 len 64])
                                            mem[32] = 105
                                            stor105[call.data[4 len 64]].field_0 = bn_add
                                            stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                                            _4216 = mem[_2020 + 32]
                                            _4465 = mem[mem[_537] + 32]
                                            _4716 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4716] = 0
                                            mem[_4716 + 32] = 0
                                            mem[mem[64]] = mem[_4465]
                                            mem[mem[64] + 32] = mem[_4465 + 32]
                                            mem[mem[64] + 64] = mem[_4216]
                                            mem[mem[64] + 96] = mem[_4216 + 32]
                                            bn_add = bn256Add(mem[mem[64] len 128]) 
                                            stor105[call.data[4 len 64]].field_512 = bn_add
                                            stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                                            stor106[call.data[4 len 64]].field_0 = 0
                                            stor106[call.data[4 len 64]].field_256 = 0
                                            stor106[call.data[4 len 64]].field_512 = 0
                                            stor106[call.data[4 len 64]].field_768 = 0
                                            lastRollOver[call.data[4 len 64]] = block.number / epochLength
                                    if block.number / epochLength > lastGlobalUpdate:
                                        lastGlobalUpdate = block.number / epochLength
                                        stor109.length = 0
                                        idx = 0
                                        while stor109.length > idx:
                                            stor109[idx] = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 0 <= stor125:
                                            lastGlobalUpdate = block.number / epochLength
                                            stor109.length = 0
                                            idx = 0
                                            while stor109.length > idx:
                                                stor109[idx] = 0
                                                idx = idx + 1
                                                continue 
                                else:
                                    if epochBase != 1:
                                        revert with 0, 'Invalid epoch base.'
                                    if not epochLength:
                                        revert with 0, 18
                                    if block.timestamp / epochLength > lastRollOver[call.data[4 len 64]]:
                                        _535 = mem[64]
                                        mem[0] = sha3(call.data[4 len 64])
                                        mem[64] = mem[64] + 128
                                        s = _535 + 64
                                        idx = 0
                                        while idx < 2:
                                            _2012 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2012] = stor105[call.data[4 len 64]][idx].field_0
                                            mem[_2012 + 32] = stor105[call.data[4 len 64]][idx].field_256
                                            mem[s] = _2012
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                                        mem[_535] = _535 + 64
                                        mem[0] = sha3(call.data[4 len 64])
                                        mem[32] = 106
                                        _2011 = mem[64]
                                        mem[64] = mem[64] + 64
                                        s = _2011
                                        idx = 0
                                        while idx < 2:
                                            _3573 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3573] = stor106[call.data[4 len 64]][idx].field_0
                                            mem[_3573 + 32] = stor106[call.data[4 len 64]][idx].field_256
                                            mem[s] = _3573
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                                        mem[_535 + 32] = _2011
                                        _3571 = mem[_2011]
                                        _3626 = mem[mem[_535]]
                                        _3778 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3778] = 0
                                        mem[_3778 + 32] = 0
                                        mem[mem[64]] = mem[_3626]
                                        mem[mem[64] + 32] = mem[_3626 + 32]
                                        mem[mem[64] + 64] = mem[_3571]
                                        mem[mem[64] + 96] = mem[_3571 + 32]
                                        bn_add = bn256Add(mem[mem[64] len 128]) 
                                        mem[_3778 len 64] = bn_add
                                        require bn256Add.result
                                        mem[0] = sha3(call.data[4 len 64])
                                        mem[32] = 105
                                        stor105[call.data[4 len 64]].field_0 = bn_add
                                        stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                                        _4198 = mem[_2011 + 32]
                                        _4434 = mem[mem[_535] + 32]
                                        _4690 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4690] = 0
                                        mem[_4690 + 32] = 0
                                        mem[mem[64]] = mem[_4434]
                                        mem[mem[64] + 32] = mem[_4434 + 32]
                                        mem[mem[64] + 64] = mem[_4198]
                                        mem[mem[64] + 96] = mem[_4198 + 32]
                                        bn_add = bn256Add(mem[mem[64] len 128]) 
                                        stor105[call.data[4 len 64]].field_512 = bn_add
                                        stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                                        stor106[call.data[4 len 64]].field_0 = 0
                                        stor106[call.data[4 len 64]].field_256 = 0
                                        stor106[call.data[4 len 64]].field_512 = 0
                                        stor106[call.data[4 len 64]].field_768 = 0
                                        lastRollOver[call.data[4 len 64]] = block.timestamp / epochLength
                                    else:
                                        if 0 <= stor125:
                                            _570 = mem[64]
                                            mem[0] = sha3(call.data[4 len 64])
                                            mem[64] = mem[64] + 128
                                            s = _570 + 64
                                            idx = 0
                                            while idx < 2:
                                                _2015 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2015] = stor105[call.data[4 len 64]][idx].field_0
                                                mem[_2015 + 32] = stor105[call.data[4 len 64]][idx].field_256
                                                mem[s] = _2015
                                                s = s + 32
                                                idx = idx + 1
                                                continue 
                                            mem[_570] = _570 + 64
                                            mem[0] = sha3(call.data[4 len 64])
                                            mem[32] = 106
                                            _2014 = mem[64]
                                            mem[64] = mem[64] + 64
                                            s = _2014
                                            idx = 0
                                            while idx < 2:
                                                _3577 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3577] = stor106[call.data[4 len 64]][idx].field_0
                                                mem[_3577 + 32] = stor106[call.data[4 len 64]][idx].field_256
                                                mem[s] = _3577
                                                s = s + 32
                                                idx = idx + 1
                                                continue 
                                            mem[_570 + 32] = _2014
                                            _3575 = mem[_2014]
                                            _3627 = mem[mem[_570]]
                                            _3784 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3784] = 0
                                            mem[_3784 + 32] = 0
                                            mem[mem[64]] = mem[_3627]
                                            mem[mem[64] + 32] = mem[_3627 + 32]
                                            mem[mem[64] + 64] = mem[_3575]
                                            mem[mem[64] + 96] = mem[_3575 + 32]
                                            bn_add = bn256Add(mem[mem[64] len 128]) 
                                            mem[_3784 len 64] = bn_add
                                            require bn256Add.result
                                            mem[0] = sha3(call.data[4 len 64])
                                            mem[32] = 105
                                            stor105[call.data[4 len 64]].field_0 = bn_add
                                            stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                                            _4204 = mem[_2014 + 32]
                                            _4449 = mem[mem[_570] + 32]
                                            _4700 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4700] = 0
                                            mem[_4700 + 32] = 0
                                            mem[mem[64]] = mem[_4449]
                                            mem[mem[64] + 32] = mem[_4449 + 32]
                                            mem[mem[64] + 64] = mem[_4204]
                                            mem[mem[64] + 96] = mem[_4204 + 32]
                                            bn_add = bn256Add(mem[mem[64] len 128]) 
                                            stor105[call.data[4 len 64]].field_512 = bn_add
                                            stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                                            stor106[call.data[4 len 64]].field_0 = 0
                                            stor106[call.data[4 len 64]].field_256 = 0
                                            stor106[call.data[4 len 64]].field_512 = 0
                                            stor106[call.data[4 len 64]].field_768 = 0
                                            lastRollOver[call.data[4 len 64]] = block.timestamp / epochLength
                                    if block.timestamp / epochLength > lastGlobalUpdate:
                                        lastGlobalUpdate = block.timestamp / epochLength
                                        stor109.length = 0
                                        idx = 0
                                        while stor109.length > idx:
                                            stor109[idx] = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 0 <= stor125:
                                            lastGlobalUpdate = block.timestamp / epochLength
                                            stor109.length = 0
                                            idx = 0
                                            while stor109.length > idx:
                                                stor109[idx] = 0
                                                idx = idx + 1
                                                continue 
                            else:
                                if mem[mem[_20 + 32] + 32] == mem[224]:
                                    revert with 0, 'Account not yet registered.'
                                if not epochBase:
                                    if not epochLength:
                                        revert with 0, 18
                                    if block.number / epochLength > lastRollOver[call.data[4 len 64]]:
                                        _539 = mem[64]
                                        mem[0] = sha3(call.data[4 len 64])
                                        mem[64] = mem[64] + 128
                                        s = _539 + 64
                                        idx = 0
                                        while idx < 2:
                                            _2030 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2030] = stor105[call.data[4 len 64]][idx].field_0
                                            mem[_2030 + 32] = stor105[call.data[4 len 64]][idx].field_256
                                            mem[s] = _2030
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                                        mem[_539] = _539 + 64
                                        mem[0] = sha3(call.data[4 len 64])
                                        mem[32] = 106
                                        _2029 = mem[64]
                                        mem[64] = mem[64] + 64
                                        s = _2029
                                        idx = 0
                                        while idx < 2:
                                            _3597 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3597] = stor106[call.data[4 len 64]][idx].field_0
                                            mem[_3597 + 32] = stor106[call.data[4 len 64]][idx].field_256
                                            mem[s] = _3597
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                                        mem[_539 + 32] = _2029
                                        _3595 = mem[_2029]
                                        _3632 = mem[mem[_539]]
                                        _3814 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3814] = 0
                                        mem[_3814 + 32] = 0
                                        mem[mem[64]] = mem[_3632]
                                        mem[mem[64] + 32] = mem[_3632 + 32]
                                        mem[mem[64] + 64] = mem[_3595]
                                        mem[mem[64] + 96] = mem[_3595 + 32]
                                        bn_add = bn256Add(mem[mem[64] len 128]) 
                                        mem[_3814 len 64] = bn_add
                                        require bn256Add.result
                                        mem[0] = sha3(call.data[4 len 64])
                                        mem[32] = 105
                                        stor105[call.data[4 len 64]].field_0 = bn_add
                                        stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                                        _4234 = mem[_2029 + 32]
                                        _4482 = mem[mem[_539] + 32]
                                        _4738 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4738] = 0
                                        mem[_4738 + 32] = 0
                                        mem[mem[64]] = mem[_4482]
                                        mem[mem[64] + 32] = mem[_4482 + 32]
                                        mem[mem[64] + 64] = mem[_4234]
                                        mem[mem[64] + 96] = mem[_4234 + 32]
                                        bn_add = bn256Add(mem[mem[64] len 128]) 
                                        stor105[call.data[4 len 64]].field_512 = bn_add
                                        stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                                        stor106[call.data[4 len 64]].field_0 = 0
                                        stor106[call.data[4 len 64]].field_256 = 0
                                        stor106[call.data[4 len 64]].field_512 = 0
                                        stor106[call.data[4 len 64]].field_768 = 0
                                        lastRollOver[call.data[4 len 64]] = block.number / epochLength
                                    else:
                                        if 0 <= stor125:
                                            _575 = mem[64]
                                            mem[0] = sha3(call.data[4 len 64])
                                            mem[64] = mem[64] + 128
                                            s = _575 + 64
                                            idx = 0
                                            while idx < 2:
                                                _2033 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2033] = stor105[call.data[4 len 64]][idx].field_0
                                                mem[_2033 + 32] = stor105[call.data[4 len 64]][idx].field_256
                                                mem[s] = _2033
                                                s = s + 32
                                                idx = idx + 1
                                                continue 
                                            mem[_575] = _575 + 64
                                            mem[0] = sha3(call.data[4 len 64])
                                            mem[32] = 106
                                            _2032 = mem[64]
                                            mem[64] = mem[64] + 64
                                            s = _2032
                                            idx = 0
                                            while idx < 2:
                                                _3601 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3601] = stor106[call.data[4 len 64]][idx].field_0
                                                mem[_3601 + 32] = stor106[call.data[4 len 64]][idx].field_256
                                                mem[s] = _3601
                                                s = s + 32
                                                idx = idx + 1
                                                continue 
                                            mem[_575 + 32] = _2032
                                            _3599 = mem[_2032]
                                            _3633 = mem[mem[_575]]
                                            _3820 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3820] = 0
                                            mem[_3820 + 32] = 0
                                            mem[mem[64]] = mem[_3633]
                                            mem[mem[64] + 32] = mem[_3633 + 32]
                                            mem[mem[64] + 64] = mem[_3599]
                                            mem[mem[64] + 96] = mem[_3599 + 32]
                                            bn_add = bn256Add(mem[mem[64] len 128]) 
                                            mem[_3820 len 64] = bn_add
                                            require bn256Add.result
                                            mem[0] = sha3(call.data[4 len 64])
                                            mem[32] = 105
                                            stor105[call.data[4 len 64]].field_0 = bn_add
                                            stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                                            _4240 = mem[_2032 + 32]
                                            _4497 = mem[mem[_575] + 32]
                                            _4748 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4748] = 0
                                            mem[_4748 + 32] = 0
                                            mem[mem[64]] = mem[_4497]
                                            mem[mem[64] + 32] = mem[_4497 + 32]
                                            mem[mem[64] + 64] = mem[_4240]
                                            mem[mem[64] + 96] = mem[_4240 + 32]
                                            bn_add = bn256Add(mem[mem[64] len 128]) 
                                            stor105[call.data[4 len 64]].field_512 = bn_add
                                            stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                                            stor106[call.data[4 len 64]].field_0 = 0
                                            stor106[call.data[4 len 64]].field_256 = 0
                                            stor106[call.data[4 len 64]].field_512 = 0
                                            stor106[call.data[4 len 64]].field_768 = 0
                                            lastRollOver[call.data[4 len 64]] = block.number / epochLength
                                    if block.number / epochLength > lastGlobalUpdate:
                                        lastGlobalUpdate = block.number / epochLength
                                        stor109.length = 0
                                        idx = 0
                                        while stor109.length > idx:
                                            stor109[idx] = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 0 <= stor125:
                                            lastGlobalUpdate = block.number / epochLength
                                            stor109.length = 0
                                            idx = 0
                                            while stor109.length > idx:
                                                stor109[idx] = 0
                                                idx = idx + 1
                                                continue 
                                else:
                                    if epochBase != 1:
                                        revert with 0, 'Invalid epoch base.'
                                    if not epochLength:
                                        revert with 0, 18
                                    if block.timestamp / epochLength > lastRollOver[call.data[4 len 64]]:
                                        _573 = mem[64]
                                        mem[0] = sha3(call.data[4 len 64])
                                        mem[64] = mem[64] + 128
                                        s = _573 + 64
                                        idx = 0
                                        while idx < 2:
                                            _2024 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2024] = stor105[call.data[4 len 64]][idx].field_0
                                            mem[_2024 + 32] = stor105[call.data[4 len 64]][idx].field_256
                                            mem[s] = _2024
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                                        mem[_573] = _573 + 64
                                        mem[0] = sha3(call.data[4 len 64])
                                        mem[32] = 106
                                        _2023 = mem[64]
                                        mem[64] = mem[64] + 64
                                        s = _2023
                                        idx = 0
                                        while idx < 2:
                                            _3589 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3589] = stor106[call.data[4 len 64]][idx].field_0
                                            mem[_3589 + 32] = stor106[call.data[4 len 64]][idx].field_256
                                            mem[s] = _3589
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                                        mem[_573 + 32] = _2023
                                        _3587 = mem[_2023]
                                        _3630 = mem[mem[_573]]
                                        _3802 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3802] = 0
                                        mem[_3802 + 32] = 0
                                        mem[mem[64]] = mem[_3630]
                                        mem[mem[64] + 32] = mem[_3630 + 32]
                                        mem[mem[64] + 64] = mem[_3587]
                                        mem[mem[64] + 96] = mem[_3587 + 32]
                                        bn_add = bn256Add(mem[mem[64] len 128]) 
                                        mem[_3802 len 64] = bn_add
                                        require bn256Add.result
                                        mem[0] = sha3(call.data[4 len 64])
                                        mem[32] = 105
                                        stor105[call.data[4 len 64]].field_0 = bn_add
                                        stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                                        _4222 = mem[_2023 + 32]
                                        _4466 = mem[mem[_573] + 32]
                                        _4722 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4722] = 0
                                        mem[_4722 + 32] = 0
                                        mem[mem[64]] = mem[_4466]
                                        mem[mem[64] + 32] = mem[_4466 + 32]
                                        mem[mem[64] + 64] = mem[_4222]
                                        mem[mem[64] + 96] = mem[_4222 + 32]
                                        bn_add = bn256Add(mem[mem[64] len 128]) 
                                        stor105[call.data[4 len 64]].field_512 = bn_add
                                        stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                                        stor106[call.data[4 len 64]].field_0 = 0
                                        stor106[call.data[4 len 64]].field_256 = 0
                                        stor106[call.data[4 len 64]].field_512 = 0
                                        stor106[call.data[4 len 64]].field_768 = 0
                                        lastRollOver[call.data[4 len 64]] = block.timestamp / epochLength
                                    else:
                                        if 0 <= stor125:
                                            _593 = mem[64]
                                            mem[0] = sha3(call.data[4 len 64])
                                            mem[64] = mem[64] + 128
                                            s = _593 + 64
                                            idx = 0
                                            while idx < 2:
                                                _2027 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2027] = stor105[call.data[4 len 64]][idx].field_0
                                                mem[_2027 + 32] = stor105[call.data[4 len 64]][idx].field_256
                                                mem[s] = _2027
                                                s = s + 32
                                                idx = idx + 1
                                                continue 
                                            mem[_593] = _593 + 64
                                            mem[0] = sha3(call.data[4 len 64])
                                            mem[32] = 106
                                            _2026 = mem[64]
                                            mem[64] = mem[64] + 64
                                            s = _2026
                                            idx = 0
                                            while idx < 2:
                                                _3593 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3593] = stor106[call.data[4 len 64]][idx].field_0
                                                mem[_3593 + 32] = stor106[call.data[4 len 64]][idx].field_256
                                                mem[s] = _3593
                                                s = s + 32
                                                idx = idx + 1
                                                continue 
                                            mem[_593 + 32] = _2026
                                            _3591 = mem[_2026]
                                            _3631 = mem[mem[_593]]
                                            _3808 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3808] = 0
                                            mem[_3808 + 32] = 0
                                            mem[mem[64]] = mem[_3631]
                                            mem[mem[64] + 32] = mem[_3631 + 32]
                                            mem[mem[64] + 64] = mem[_3591]
                                            mem[mem[64] + 96] = mem[_3591 + 32]
                                            bn_add = bn256Add(mem[mem[64] len 128]) 
                                            mem[_3808 len 64] = bn_add
                                            require bn256Add.result
                                            mem[0] = sha3(call.data[4 len 64])
                                            mem[32] = 105
                                            stor105[call.data[4 len 64]].field_0 = bn_add
                                            stor105[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
                                            _4228 = mem[_2026 + 32]
                                            _4481 = mem[mem[_593] + 32]
                                            _4732 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4732] = 0
                                            mem[_4732 + 32] = 0
                                            mem[mem[64]] = mem[_4481]
                                            mem[mem[64] + 32] = mem[_4481 + 32]
                                            mem[mem[64] + 64] = mem[_4228]
                                            mem[mem[64] + 96] = mem[_4228 + 32]
                                            bn_add = bn256Add(mem[mem[64] len 128]) 
                                            stor105[call.data[4 len 64]].field_512 = bn_add
                                            stor105[call.data[4 len 64]].field_768 = Mask(256, -256, bn_add) << 256
                                            stor106[call.data[4 len 64]].field_0 = 0
                                            stor106[call.data[4 len 64]].field_256 = 0
                                            stor106[call.data[4 len 64]].field_512 = 0
                                            stor106[call.data[4 len 64]].field_768 = 0
                                            lastRollOver[call.data[4 len 64]] = block.timestamp / epochLength
                                    if block.timestamp / epochLength > lastGlobalUpdate:
                                        lastGlobalUpdate = block.timestamp / epochLength
                                        stor109.length = 0
                                        idx = 0
                                        while stor109.length > idx:
                                            stor109[idx] = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 0 <= stor125:
                                            lastGlobalUpdate = block.timestamp / epochLength
                                            stor109.length = 0
                                            idx = 0
                                            while stor109.length > idx:
                                                stor109[idx] = 0
                                                idx = idx + 1
                                                continue 
    stor125 = -1
    bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
    require bn256ScalarMul.result
    bn_add = bn256Add(stor106[call.data[4 len 64]].field_0, stor106[call.data[4 len 64]].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
    require bn256Add.result
    stor106[call.data[4 len 64]].field_0 = bn_add
    stor106[call.data[4 len 64]].field_256 = Mask(256, -256, bn_add) << 256
    if bool(stor107[call.data[4 len 64]].field_0):
        if bool(stor107[call.data[4 len 64]].field_0) == uint255(stor107[call.data[4 len 64]].field_0) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 100).length:
            stor107[call.data[4 len 64]].field_0 = 0
            idx = 0
            while (uint255(stor107[call.data[4 len 64]].field_0) * 0.5) + 31 / 32 > idx:
                stor107[call.data[4 len 64]][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor107[call.data[4 len 64]].field_0 = (2 * ('cd', 100).length) + 1
            s = 0
            idx = cd[100] + 36
            while cd[100] + ('cd', 100).length + 36 > idx:
                stor107[call.data[4 len 64]][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 100).length + 31) >> 5
            while (uint255(stor107[call.data[4 len 64]].field_0) * 0.5) + 31 / 32 > idx:
                stor107[call.data[4 len 64]][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor107[call.data[4 len 64]].field_0) == stor107[call.data[4 len 64]].field_1 % 128 < 32:
            revert with 0, 34
        if not ('cd', 100).length:
            stor107[call.data[4 len 64]].field_0 = 0
            idx = 0
            while stor107[call.data[4 len 64]].field_1 % 128 + 31 / 32 > idx:
                stor107[call.data[4 len 64]][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor107[call.data[4 len 64]].field_0 = (2 * ('cd', 100).length) + 1
            s = 0
            idx = cd[100] + 36
            while cd[100] + ('cd', 100).length + 36 > idx:
                stor107[call.data[4 len 64]][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 100).length + 31) >> 5
            while stor107[call.data[4 len 64]].field_1 % 128 + 31 / 32 > idx:
                stor107[call.data[4 len 64]][idx].field_0 = 0
                idx = idx + 1
                continue 
    emit 0x7eb7058d: call.data[4 len 64], arg3
}



}
