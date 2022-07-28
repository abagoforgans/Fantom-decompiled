contract main {




// =====================  Runtime code  =====================


#
#  - sub_c3b6dcdc(?)
#
const MAX = test266151307()


address suterAgencyAddress;
uint256 sub_7d84839c;
uint256 sub_840cd74c;
uint256 sub_95e95248;
uint256 sub_7601a39e;
uint256 epochLength;
uint256 epochBase;
uint256 unit;
uint256 totalBalance;
uint256 totalUsers;
uint256 totalBurnFee;
uint256 totalTransferFee;
uint256 totalDeposits;
uint256 totalFundCount;
array of struct stor16;
array of struct stor17;
mapping of uint256 lastRollOver;
array of uint256 stor19;
uint256 lastGlobalUpdate;
array of uint256 sub_a9b05a56;

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

function sub_7601a39e(?) {
    return sub_7601a39e
}

function sub_7d84839c(?) {
    return sub_7d84839c
}

function totalDeposits() {
    return totalDeposits
}

function sub_840cd74c(?) {
    return sub_840cd74c
}

function unit() {
    return unit
}

function sub_95e95248(?) {
    return sub_95e95248
}

function sub_a9b05a56(?) {
    return sub_a9b05a56[arg1][arg2][0 len sub_a9b05a56[arg1][arg2].length]
}

function totalBalance() {
    return totalBalance
}

function totalFundCount() {
    return totalFundCount
}

function lastRollOver(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function setUnit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if suterAgencyAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Permission denied: Only admin can change unit.'
    unit = arg1
}

function setSuterAgency(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if suterAgencyAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Permission denied: Only admin can change agency.'
    suterAgencyAddress = arg1
}

function setEpochBase(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if suterAgencyAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Permission denied: Only admin can change epoch base.'
    epochBase = arg1
}

function setEpochLength(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if suterAgencyAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Permission denied: Only admin can change epoch length.'
    epochLength = arg1
}

function setBurnFeeStrategy(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if suterAgencyAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Permission denied: Only admin can change burn fee strategy.'
    sub_7d84839c = arg1
    sub_840cd74c = arg2
}

function setTransferFeeStrategy(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if suterAgencyAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Permission denied: Only admin can change transfer fee strategy.'
    sub_95e95248 = arg1
    sub_7601a39e = arg2
}

function sub_a568ce51(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[96] = arg1
    require arg2 == arg2
    mem[128] = arg2
    mem[64] = 288
    mem[224] = 0
    mem[256] = 0
    mem[var31001] = 224
    s = var31001
    idx = var31002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[224] = 0
        mem[256] = 0
        mem[s + 32] = 224
        s = s + 32
        idx = idx - 1
        continue 
    mem[64] = mem[64] + 64
    _20 = mem[64]
    mem[64] = mem[64] + 64
    mem[_20] = 0
    mem[_20 + 32] = 0
    mem[var39001] = _20
    s = var39001
    idx = var39002
    while idx - 1:
        _20 = mem[64]
        mem[64] = mem[64] + 64
        mem[_20] = 0
        mem[_20 + 32] = 0
        mem[s + 32] = _20
        s = s + 32
        idx = idx - 1
        continue 
    _21 = mem[64]
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64] = mem[128]
    _24 = mem[64]
    mem[mem[64]] = 64
    mem[64] = mem[64] + 96
    _26 = sha3(mem[_24 + 32 len mem[_24]])
    mem[0] = sha3(mem[_24 + 32 len mem[_24]])
    _27 = sha3(mem[0], 16)
    mem[64] = _21 + 160
    s = _21 + 96
    idx = 0
    while idx < 2:
        _32 = mem[64]
        mem[64] = mem[64] + 64
        mem[_32] = stor[(2 * idx) + _27]
        mem[_32 + 32] = stor[(2 * idx) + _27 + 1]
        mem[s] = _32
        s = s + 32
        idx = idx + 1
        continue 
    mem[0] = _26
    mem[32] = 17
    _31 = mem[64]
    mem[64] = mem[64] + 64
    s = _31
    idx = 0
    while idx < 2:
        _34 = mem[64]
        mem[64] = mem[64] + 64
        mem[_34] = stor17[_26][idx].field_0
        mem[_34 + 32] = stor17[_26][idx].field_256
        mem[s] = _34
        s = s + 32
        idx = idx + 1
        continue 
    _35 = mem[64]
    idx = 0
    s = _21 + 96
    t = mem[64]
    while idx < 2:
        _39 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_39 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    idx = 0
    s = _31
    t = _35 + 128
    while idx < 2:
        _45 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_45 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _35 + -mem[64] + 256
}

function registered(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[64] = 416
    mem[352] = 0
    mem[384] = 0
    mem[var30002] = 352
    if var30003 - 1:
        var30002 = var30002 + 32
        var30003 = var30003 - 1
        var30004 = var30004
        var30006 = var30006
        var30007 = var30007
        continue 
    mem[var30006] = var30004
    if var30007 - 1:
        mem[64] = 480
        var30002 = 416
        var30003 = 2
        var30004 = 416
        var30006 = var30006 + 32
        var30007 = var30007 - 1
        continue 
    mem[64] = 544
    s = 480
    idx = 0
    while idx < 2:
        _30 = mem[64]
        mem[64] = mem[64] + 64
        mem[_30] = stor16[arg1][idx].field_0
        mem[_30 + 32] = stor16[arg1][idx].field_256
        mem[s] = _30
        s = s + 32
        idx = idx + 1
        continue 
    mem[416] = 480
    mem[0] = arg1
    mem[32] = 17
    _29 = mem[64]
    mem[64] = mem[64] + 64
    s = _29
    idx = 0
    while idx < 2:
        _32 = mem[64]
        mem[64] = mem[64] + 64
        mem[_32] = stor17[arg1][idx].field_0
        mem[_32 + 32] = stor17[arg1][idx].field_256
        mem[s] = _32
        s = s + 32
        idx = idx + 1
        continue 
    mem[448] = _29
    if mem[mem[mem[416]]] != mem[160]:
        mem[mem[64]] = mem[mem[mem[416]]] != mem[160]
    else:
        if mem[mem[mem[416]] + 32] != mem[192]:
            mem[mem[64]] = mem[mem[mem[416]] + 32] != mem[192]
        else:
            if mem[mem[mem[416] + 32]] != mem[160]:
                mem[mem[64]] = mem[mem[mem[416] + 32]] != mem[160]
            else:
                if mem[mem[mem[416] + 32] + 32] != mem[192]:
                    mem[mem[64]] = mem[mem[mem[416] + 32] + 32] != mem[192]
                else:
                    if mem[mem[_29]] != mem[160]:
                        mem[mem[64]] = mem[mem[_29]] != mem[160]
                    else:
                        if mem[mem[_29] + 32] != mem[192]:
                            mem[mem[64]] = mem[mem[_29] + 32] != mem[192]
                        else:
                            if mem[mem[_29 + 32]] != mem[160]:
                                mem[mem[64]] = mem[mem[_29 + 32]] != mem[160]
                            else:
                                mem[mem[64]] = mem[mem[_29 + 32] + 32] != mem[192]
    return memory
      from mem[64]
       len 32
}

function sub_9b0d85d3(?) {
    require calldata.size - 4 >= 128
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[96] = arg1
    require arg2 == arg2
    mem[128] = arg2
    require arg3 == arg3
    require arg4 == arg4
    mem[160] = 0
    mem[192] = 0
    bn_scalar_mul = bn256ScalarMul(arg1, arg2, -arg3 + 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001) 
    mem[224 len 64] = bn_scalar_mul
    require bn256ScalarMul.result
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
    mem[384] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
    bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg4) 
    mem[416 len 64] = bn_scalar_mul
    bn_add = bn256Add(bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
    mem[480 len 64] = bn_add
    require bn256Add.result
    mem[576] = this.address
    mem[608] = arg1
    mem[640] = arg2
    mem[672] = bn_add
    mem[704] = Mask(256, -256, bn_add) << 256
    mem[544] = 160
    if sha3(address(this.address), arg1, arg2, bn_add, Mask(256, -256, bn_add) << 256) % 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001 != arg3:
        revert with 0, 'Invalid registration signature!'
    mem[768] = arg1
    mem[800] = arg2
    mem[736] = 64
    mem[832] = 0
    mem[864] = 0
    mem[896] = 0
    mem[928] = 0
    mem[64] = 1152
    mem[1088] = 0
    mem[1120] = 0
    mem[var125002] = 1088
    if var125003 - 1:
        var125002 = var125002 + 32
        var125003 = var125003 - 1
        var125004 = var125004
        var125006 = var125006
        var125007 = var125007
        continue 
    mem[var125006] = var125004
    if var125007 - 1:
        mem[64] = 1216
        var125002 = 1152
        var125003 = 2
        var125004 = 1152
        var125006 = var125006 + 32
        var125007 = var125007 - 1
        continue 
    mem[64] = 1280
    s = 1216
    idx = 0
    while idx < 2:
        _64 = mem[64]
        mem[64] = mem[64] + 64
        mem[_64] = stor16[arg1][arg2][idx].field_0
        mem[_64 + 32] = stor16[arg1][arg2][idx].field_256
        mem[s] = _64
        s = s + 32
        idx = idx + 1
        continue 
    mem[1152] = 1216
    mem[0] = sha3(arg1, arg2)
    mem[32] = 17
    _63 = mem[64]
    mem[64] = mem[64] + 64
    s = _63
    idx = 0
    while idx < 2:
        _66 = mem[64]
        mem[64] = mem[64] + 64
        mem[_66] = stor17[arg1][arg2][idx].field_0
        mem[_66 + 32] = stor17[arg1][arg2][idx].field_256
        mem[s] = _66
        s = s + 32
        idx = idx + 1
        continue 
    mem[1184] = _63
    if mem[mem[mem[1152]]] != mem[896]:
        revert with 0, 'Account already registered!'
    if mem[mem[mem[1152]] + 32] != mem[928]:
        revert with 0, 'Account already registered!'
    if mem[mem[mem[1152] + 32]] != mem[896]:
        revert with 0, 'Account already registered!'
    if mem[mem[mem[1152] + 32] + 32] != mem[928]:
        revert with 0, 'Account already registered!'
    if mem[mem[_63]] != mem[896]:
        revert with 0, 'Account already registered!'
    if mem[mem[_63] + 32] != mem[928]:
        revert with 0, 'Account already registered!'
    if mem[mem[_63 + 32]] != mem[896]:
        revert with 0, 'Account already registered!'
    if mem[mem[_63 + 32] + 32] != mem[928]:
        revert with 0, 'Account already registered!'
    stor17[arg1][arg2].field_0 = mem[96]
    stor17[arg1][arg2].field_256 = mem[128]
    stor17[arg1][arg2].field_512 = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
    stor17[arg1][arg2].field_768 = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
    totalUsers++
}

function sub_27d084e7(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (64 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 64
        _25 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require cd[s] == cd[s]
        mem[_25] = cd[s]
        require cd[(s + 32)] == cd[(s + 32)]
        mem[_25 + 32] = cd[(s + 32)]
        mem[t] = _25
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    require cd[36] == cd[36]
    _26 = mem[96]
    require mem[96] <= test266151307()
    _27 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _26) + 32
    if not _26:
        idx = 0
        while idx < _26:
            require idx < mem[96]
            _78 = mem[(32 * idx) + 128]
            _79 = mem[64]
            mem[mem[64] + 32] = mem[mem[(32 * idx) + 128]]
            mem[mem[64] + 64] = mem[_78 + 32]
            _86 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _88 = sha3(mem[_86 + 32 len mem[_86]])
            mem[0] = sha3(mem[_86 + 32 len mem[_86]])
            mem[32] = 16
            _89 = sha3(mem[0], 16)
            mem[64] = _79 + 160
            t = _79 + 96
            s = 0
            while s < 2:
                _97 = mem[64]
                mem[64] = mem[64] + 64
                mem[_97] = stor[(2 * s) + _89]
                mem[_97 + 32] = stor[(2 * s) + _89 + 1]
                mem[t] = _97
                t = t + 32
                s = s + 1
                continue 
            require idx < mem[_27]
            mem[(32 * idx) + _27 + 32] = _79 + 96
            mem[0] = _88
            mem[32] = 18
            if lastRollOver[_88] < cd[36]:
                mem[64] = mem[64] + 64
                _133 = mem[64]
                mem[64] = mem[64] + 64
                mem[_133] = 0
                mem[_133 + 32] = 0
                mem[var55001] = _133
                t = var55001
                s = var55002
                while s - 1:
                    _133 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_133] = 0
                    mem[_133 + 32] = 0
                    mem[t + 32] = _133
                    t = t + 32
                    s = s - 1
                    continue 
                mem[0] = _88
                mem[32] = 17
                _138 = mem[64]
                mem[64] = mem[64] + 64
                t = _138
                s = 0
                while s < 2:
                    _161 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_161] = stor17[_88][s].field_0
                    mem[_161 + 32] = stor17[_88][s].field_256
                    mem[t] = _161
                    t = t + 32
                    s = s + 1
                    continue 
                _162 = mem[_138]
                require idx < mem[_27]
                _165 = mem[mem[(32 * idx) + _27 + 32]]
                _167 = mem[64]
                mem[64] = mem[64] + 64
                mem[_167] = 0
                mem[_167 + 32] = 0
                mem[mem[64]] = mem[_165]
                mem[mem[64] + 32] = mem[_165 + 32]
                mem[mem[64] + 64] = mem[_162]
                mem[mem[64] + 96] = mem[_162 + 32]
                bn_add = bn256Add(mem[mem[64] len 128]) 
                mem[_167 len 64] = bn_add
                require bn256Add.result
                require idx < mem[_27]
                mem[mem[(32 * idx) + _27 + 32]] = _167
                _181 = mem[_138 + 32]
                require idx < mem[_27]
                _184 = mem[mem[(32 * idx) + _27 + 32] + 32]
                _186 = mem[64]
                mem[64] = mem[64] + 64
                mem[_186] = 0
                mem[_186 + 32] = 0
                mem[mem[64]] = mem[_184]
                mem[mem[64] + 32] = mem[_184 + 32]
                mem[mem[64] + 64] = mem[_181]
                mem[mem[64] + 96] = mem[_181 + 32]
                bn_add = bn256Add(mem[mem[64] len 128]) 
                mem[_186 len 64] = bn_add
                require bn256Add.result
                require idx < mem[_27]
                mem[mem[(32 * idx) + _27 + 32] + 32] = _186
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _82 = mem[_27]
        mem[mem[64] + 32] = mem[_27]
        idx = 0
        s = _27 + 32
        t = mem[64] + 64
        while idx < _82:
            u = 0
            v = mem[s]
            w = t
            while u < 2:
                _134 = mem[v]
                mem[w] = mem[mem[v]]
                mem[w + 32] = mem[_134 + 32]
                u = u + 1
                v = v + 32
                w = w + 64
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
    else:
        mem[64] = _27 + (32 * _26) + 160
        mem[_27 + (32 * _26) + 96] = 0
        mem[_27 + (32 * _26) + 128] = 0
        mem[var43002] = _27 + (32 * _26) + 96
        if var43003 - 1:
            var43002 = var43002 + 32
            var43003 = var43003 - 1
            var43004 = var43004
            var43006 = var43006
            var43007 = var43007
            continue 
        mem[var43006] = var43004
        if var43007 - 1:
            mem[64] = _27 + (32 * _26) + 224
            var43002 = _27 + (32 * _26) + 160
            var43003 = 2
            var43004 = _27 + (32 * _26) + 160
            var43006 = var43006 + 32
            var43007 = var43007 - 1
            continue 
        idx = 0
        while idx < _26:
            require idx < mem[96]
            _215 = mem[(32 * idx) + 128]
            _216 = mem[64]
            mem[mem[64] + 32] = mem[mem[(32 * idx) + 128]]
            mem[mem[64] + 64] = mem[_215 + 32]
            _222 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _224 = sha3(mem[_222 + 32 len mem[_222]])
            mem[0] = sha3(mem[_222 + 32 len mem[_222]])
            mem[32] = 16
            _225 = sha3(mem[0], 16)
            mem[64] = _216 + 160
            t = _216 + 96
            s = 0
            while s < 2:
                _233 = mem[64]
                mem[64] = mem[64] + 64
                mem[_233] = stor[(2 * s) + _225]
                mem[_233 + 32] = stor[(2 * s) + _225 + 1]
                mem[t] = _233
                t = t + 32
                s = s + 1
                continue 
            require idx < mem[_27]
            mem[(32 * idx) + _27 + 32] = _216 + 96
            mem[0] = _224
            mem[32] = 18
            if lastRollOver[_224] < cd[36]:
                mem[64] = mem[64] + 64
                _248 = mem[64]
                mem[64] = mem[64] + 64
                mem[_248] = 0
                mem[_248 + 32] = 0
                mem[var68001] = _248
                t = var68001
                s = var68002
                while s - 1:
                    _248 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_248] = 0
                    mem[_248 + 32] = 0
                    mem[t + 32] = _248
                    t = t + 32
                    s = s - 1
                    continue 
                mem[0] = _224
                mem[32] = 17
                _252 = mem[64]
                mem[64] = mem[64] + 64
                t = _252
                s = 0
                while s < 2:
                    _255 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_255] = stor17[_224][s].field_0
                    mem[_255 + 32] = stor17[_224][s].field_256
                    mem[t] = _255
                    t = t + 32
                    s = s + 1
                    continue 
                _256 = mem[_252]
                require idx < mem[_27]
                _259 = mem[mem[(32 * idx) + _27 + 32]]
                _260 = mem[64]
                mem[64] = mem[64] + 64
                mem[_260] = 0
                mem[_260 + 32] = 0
                mem[mem[64]] = mem[_259]
                mem[mem[64] + 32] = mem[_259 + 32]
                mem[mem[64] + 64] = mem[_256]
                mem[mem[64] + 96] = mem[_256 + 32]
                bn_add = bn256Add(mem[mem[64] len 128]) 
                mem[_260 len 64] = bn_add
                require bn256Add.result
                require idx < mem[_27]
                mem[mem[(32 * idx) + _27 + 32]] = _260
                _268 = mem[_252 + 32]
                require idx < mem[_27]
                _271 = mem[mem[(32 * idx) + _27 + 32] + 32]
                _272 = mem[64]
                mem[64] = mem[64] + 64
                mem[_272] = 0
                mem[_272 + 32] = 0
                mem[mem[64]] = mem[_271]
                mem[mem[64] + 32] = mem[_271 + 32]
                mem[mem[64] + 64] = mem[_268]
                mem[mem[64] + 96] = mem[_268 + 32]
                bn_add = bn256Add(mem[mem[64] len 128]) 
                mem[_272 len 64] = bn_add
                require bn256Add.result
                require idx < mem[_27]
                mem[mem[(32 * idx) + _27 + 32] + 32] = _272
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _218 = mem[_27]
        mem[mem[64] + 32] = mem[_27]
        idx = 0
        s = _27 + 32
        t = mem[64] + 64
        while idx < _218:
            u = 0
            v = mem[s]
            w = t
            while u < 2:
                _249 = mem[v]
                mem[w] = mem[mem[v]]
                mem[w + 32] = mem[_249 + 32]
                u = u + 1
                v = v + 32
                w = w + 64
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_eff4d178(?) payable {
    require calldata.size - 4 >= 224
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (64 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 64
        _245 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require cd[s] == cd[s]
        mem[_245] = cd[s]
        require cd[(s + 32)] == cd[(s + 32)]
        mem[_245 + 32] = cd[(s + 32)]
        mem[t] = _245
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    require calldata.size - 36 >= 64
    _246 = mem[64]
    require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
    mem[64] = mem[64] + 64
    require cd[36] == cd[36]
    mem[_246] = cd[36]
    require cd[68] == cd[68]
    mem[_246 + 32] = cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    _247 = mem[64]
    require mem[64] + (32 * ('cd', 100).length) + 32 <= test266151307() and mem[64] + (32 * ('cd', 100).length) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
    mem[_247] = ('cd', 100).length
    require cd[100] + (64 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = _247 + 32
    while idx < ('cd', 100).length:
        require calldata.size - s >= 64
        _590 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require cd[s] == cd[s]
        mem[_590] = cd[s]
        require cd[(s + 32)] == cd[(s + 32)]
        mem[_590 + 32] = cd[(s + 32)]
        mem[t] = _590
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    require calldata.size - 132 >= 64
    _591 = mem[64]
    require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
    mem[64] = mem[64] + 64
    require cd[132] == cd[132]
    mem[_591] = cd[132]
    require cd[164] == cd[164]
    mem[_591 + 32] = cd[164]
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    require ('cd', 196).length <= test266151307()
    _592 = mem[64]
    require mem[64] + ceil32(('cd', 196).length) + 32 <= test266151307() and mem[64] + ceil32(('cd', 196).length) + 32 >= mem[64]
    mem[64] = mem[64] + ceil32(('cd', 196).length) + 32
    mem[_592] = ('cd', 196).length
    require cd[196] + ('cd', 196).length + 36 <= calldata.size
    mem[_592 + 32 len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
    mem[_592 + ('cd', 196).length + 32] = 0
    _593 = mem[_247]
    require mem[_247] <= test266151307()
    _594 = mem[64]
    if mem[_247]:
        _1376 = mem[64] + (32 * mem[_247]) + 32
        mem[64] = mem[64] + (32 * mem[_247]) + 96
        mem[_1376] = 0
        mem[_1376 + 32] = 0
        mem[var92001] = _1376
        s = var92001
        idx = var92002
        while idx - 1:
            _1376 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1376] = 0
            mem[_1376 + 32] = 0
            mem[s + 32] = _1376
            s = s + 32
            idx = idx - 1
            continue 
        require _593 <= test266151307()
        _1384 = mem[64]
        mem[mem[64]] = _593
        mem[64] = mem[64] + (32 * _593) + 32
        if _593:
            mem[64] = _1384 + (32 * _593) + 96
            mem[_1384 + (32 * _593) + 32] = 0
            mem[_1384 + (32 * _593) + 64] = 0
            mem[var101001] = _1384 + (32 * _593) + 32
            s = var101001
            idx = var101002
            while idx - 1:
                mem[64] = mem[64] + 64
                mem[_1384 + (32 * _593) + 32] = 0
                mem[_1384 + (32 * _593) + 64] = 0
                mem[s + 32] = _1384 + (32 * _593) + 32
                s = s + 32
                idx = idx - 1
                continue 
            if mem[96] != _593:
                revert with 0, 'Input array length mismatch!'
            if var227001 >= _593:
                # nil
            else:
                require var227001 < mem[_247]
                # nil
        else:
            if mem[96] != _593:
                revert with 0, 'Input array length mismatch!'
            if var220001 < _593:
                require var220001 < mem[_247]
                # nil
            else:
                mem[_1384 + (32 * _593) + 64] = mem[_591]
                mem[_1384 + (32 * _593) + 96] = mem[_591 + 32]
                mem[_1384 + (32 * _593) + 32] = 64
                mem[64] = _1384 + (32 * _593) + 128
                idx = 0
                while idx < stor19.length:
                    mem[0] = 19
                    if stor19[idx] == sha3(mem[_1384 + (32 * _593) + 64 len 64]):
                        revert with 0, 'Nonce already seen!'
                    idx = idx + 1
                    continue 
                stor19.length++
                mem[0] = 19
                stor19[stor19.length] = sha3(mem[_1384 + (32 * _593) + 64 len 64])
                mem[_1384 + (32 * _593) + 128] = 0xd2d5e70a00000000000000000000000000000000000000000000000000000000
                mem[_1384 + (32 * _593) + 132] = 320
                _10456 = mem[_594]
                mem[_1384 + (32 * _593) + 452] = mem[_594]
                idx = 0
                s = _594 + 32
                t = _1384 + (32 * _593) + 484
                while idx < _10456:
                    _11265 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_11265 + 32]
                    idx = idx + 1
                    s = s + 32
                    t = t + 64
                    continue 
                # nil
    else:
        require mem[_247] <= test266151307()
        _595 = mem[64] + (32 * mem[_247]) + 32
        mem[mem[64] + (32 * mem[_247]) + 32] = mem[_247]
        mem[64] = _595 + (32 * _593) + 32
        if not _593:
            if mem[96] != _593:
                revert with 0, 'Input array length mismatch!'
            if var213001 < _593:
                require var213001 < mem[_247]
                # nil
            else:
                mem[_595 + (32 * _593) + 64] = cd[132]
                mem[_595 + (32 * _593) + 96] = cd[164]
                mem[_595 + (32 * _593) + 32] = 64
                mem[64] = _595 + (32 * _593) + 128
                idx = 0
                while idx < stor19.length:
                    mem[0] = 19
                    if stor19[idx] == sha3(cd[132], cd[164]):
                        revert with 0, 'Nonce already seen!'
                    idx = idx + 1
                    continue 
                stor19.length++
                mem[0] = 19
                stor19[stor19.length] = sha3(cd[132], cd[164])
                mem[_595 + (32 * _593) + 128] = 0xd2d5e70a00000000000000000000000000000000000000000000000000000000
                mem[_595 + (32 * _593) + 132] = 320
                _8135 = mem[_594]
                mem[_595 + (32 * _593) + 452] = mem[_594]
                idx = 0
                s = _594 + 32
                t = _595 + (32 * _593) + 484
                while idx < _8135:
                    _9472 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_9472 + 32]
                    idx = idx + 1
                    s = s + 32
                    t = t + 64
                    continue 
                mem[_595 + (32 * _593) + 164] = (64 * _8135) + 352
                _9598 = mem[_595]
                mem[_595 + (32 * _593) + (64 * _8135) + 484] = mem[_595]
                idx = 0
                s = _595 + 32
                t = _595 + (32 * _593) + (64 * _8135) + 516
                while idx < mem[_595]:
                    _10297 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_10297 + 32]
                    idx = idx + 1
                    s = s + 32
                    t = t + 64
                    continue 
                mem[_595 + (32 * _593) + 196] = (64 * _8135) + (64 * _9598) + 384
                mem[_595 + (32 * _593) + (64 * _8135) + (64 * _9598) + 516] = mem[96]
                idx = 0
                s = 128
                t = _595 + (32 * _593) + (64 * _8135) + (64 * _9598) + 548
                while idx < mem[96]:
                    _11262 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_11262 + 32]
                    idx = idx + 1
                    s = s + 32
                    t = t + 64
                    continue 
                # nil
        else:
            mem[64] = _595 + (32 * _593) + 96
            mem[_595 + (32 * _593) + 32] = 0
            mem[_595 + (32 * _593) + 64] = 0
            mem[var94001] = _595 + (32 * _593) + 32
            s = var94001
            idx = var94002
            while idx - 1:
                mem[64] = mem[64] + 64
                mem[_595 + (32 * _593) + 32] = 0
                mem[_595 + (32 * _593) + 64] = 0
                mem[s + 32] = _595 + (32 * _593) + 32
                s = s + 32
                idx = idx - 1
                continue 
            if mem[96] != _593:
                revert with 0, 'Input array length mismatch!'
            if var220001 < _593:
                require var220001 < mem[_247]
                # nil
            else:
                _9474 = mem[64]
                mem[mem[64] + 32] = mem[_591]
                mem[mem[64] + 64] = mem[_591 + 32]
                _9864 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                _9866 = sha3(mem[_9864 + 32 len mem[_9864]])
                idx = 0
                while idx < stor19.length:
                    mem[0] = 19
                    if stor19[idx] == _9866:
                        revert with 0, 'Nonce already seen!'
                    idx = idx + 1
                    continue 
                stor19.length++
                mem[0] = 19
                stor19[stor19.length] = _9866
                mem[_9474 + 96] = 0xd2d5e70a00000000000000000000000000000000000000000000000000000000
                mem[_9474 + 100] = 320
                _10455 = mem[_594]
                mem[_9474 + 420] = mem[_594]
                idx = 0
                s = _594 + 32
                t = _9474 + 452
                while idx < _10455:
                    _11263 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_11263 + 32]
                    idx = idx + 1
                    s = s + 32
                    t = t + 64
                    continue 
                # nil
}

function sub_042ed32a(?) payable {
    require calldata.size - 4 >= 128
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[96] = arg1
    require arg2 == arg2
    mem[128] = arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 192 <= test266151307() and ceil32(arg4.length) + 192 >= 160
    mem[160] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[192 len arg4.length] = arg4[all]
    mem[arg4.length + 192] = 0
    require unit
    if msg.value % unit:
        revert with 0, 'Native amount must be multiple of a unit.'
    require unit
    if 0 > msg.value / unit:
        revert with 0, 'Amount out of range.'
    if msg.value / unit > test266151307():
        revert with 0, 'Amount out of range.'
    if arg3 != msg.value / unit:
        revert with 0, 'Specified fund amount is differnet from the paid amount.'
    if arg3 > test266151307():
        revert with 0, 'Fund pushes contract past maximum value.'
    if totalBalance + arg3 > test266151307():
        revert with 0, 'Fund pushes contract past maximum value.'
    totalBalance += arg3
    totalDeposits += arg3
    totalFundCount++
    mem[ceil32(arg4.length) + 224] = arg1
    mem[ceil32(arg4.length) + 256] = arg2
    mem[ceil32(arg4.length) + 192] = 64
    _20 = sha3(mem[ceil32(arg4.length) + 224 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 224 len -arg4.length + ceil32(arg4.length)]])
    mem[ceil32(arg4.length) + 288] = 0
    mem[ceil32(arg4.length) + 320] = 0
    mem[ceil32(arg4.length) + 352] = 0
    mem[ceil32(arg4.length) + 384] = 0
    mem[64] = ceil32(arg4.length) + 608
    mem[ceil32(arg4.length) + 544] = 0
    mem[ceil32(arg4.length) + 576] = 0
    mem[var88002] = ceil32(arg4.length) + 544
    if var88003 - 1:
        var88002 = var88002 + 32
        var88003 = var88003 - 1
        var88004 = var88004
        var88006 = var88006
        var88007 = var88007
        continue 
    mem[var88006] = var88004
    if var88007 - 1:
        mem[64] = ceil32(arg4.length) + 672
        var88002 = ceil32(arg4.length) + 608
        var88003 = 2
        var88004 = ceil32(arg4.length) + 608
        var88006 = var88006 + 32
        var88007 = var88007 - 1
        continue 
    mem[64] = ceil32(arg4.length) + 736
    s = ceil32(arg4.length) + 672
    idx = 0
    while idx < 2:
        _50 = mem[64]
        mem[64] = mem[64] + 64
        mem[_50] = stor16[_20][idx].field_0
        mem[_50 + 32] = stor16[_20][idx].field_256
        mem[s] = _50
        s = s + 32
        idx = idx + 1
        continue 
    mem[ceil32(arg4.length) + 608] = ceil32(arg4.length) + 672
    mem[0] = _20
    mem[32] = 17
    _49 = mem[64]
    mem[64] = mem[64] + 64
    s = _49
    idx = 0
    while idx < 2:
        _52 = mem[64]
        mem[64] = mem[64] + 64
        mem[_52] = stor17[_20][idx].field_0
        mem[_52 + 32] = stor17[_20][idx].field_256
        mem[s] = _52
        s = s + 32
        idx = idx + 1
        continue 
    mem[ceil32(arg4.length) + 640] = _49
    if mem[mem[mem[ceil32(arg4.length) + 608]]] != mem[ceil32(arg4.length) + 352]:
        if not epochBase:
            require epochLength
            mem[0] = _20
            mem[32] = 18
            if lastRollOver[_20] >= block.number / epochLength:
                if lastGlobalUpdate >= block.number / epochLength:
                    _77 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_77] = 0
                    mem[_77 + 32] = 0
                    mem[0] = _20
                    mem[32] = 17
                    _92 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_92] = stor17[_20].field_0
                    mem[_92 + 32] = stor17[_20].field_256
                    _107 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_107] = 0
                    mem[_107 + 32] = 0
                    _110 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_110] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                    mem[_110 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                    _130 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[mem[64] + 64] = arg3
                    bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                    mem[_130 len 64] = bn_scalar_mul
                    require bn256ScalarMul.result
                    _198 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[mem[64]] = stor17[_20].field_0
                    mem[mem[64] + 32] = stor17[_20].field_256
                    mem[mem[64] + 64] = bn_scalar_mul
                    mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                    bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                    mem[_198 len 64] = bn_add
                else:
                    lastGlobalUpdate = block.number / epochLength
                    stor19.length = 0
                    mem[0] = 19
                    idx = 0
                    while stor19.length > idx:
                        stor19[idx] = 0
                        idx = idx + 1
                        continue 
                    _944 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_944] = 0
                    mem[_944 + 32] = 0
                    mem[0] = _20
                    mem[32] = 17
                    _976 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_976] = stor17[_20].field_0
                    mem[_976 + 32] = stor17[_20].field_256
                    _992 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_992] = 0
                    mem[_992 + 32] = 0
                    _1008 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1008] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                    mem[_1008 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                    _1024 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[mem[64] + 64] = arg3
                    bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                    mem[_1024 len 64] = bn_scalar_mul
                    require bn256ScalarMul.result
                    _1088 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[mem[64]] = stor17[_20].field_0
                    mem[mem[64] + 32] = stor17[_20].field_256
                    mem[mem[64] + 64] = bn_scalar_mul
                    mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                    bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                    mem[_1088 len 64] = bn_add
            else:
                mem[64] = mem[64] + 64
                mem[64] = mem[64] + 64
                _1568 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1568] = 0
                mem[_1568 + 32] = 0
                mem[var123002] = _1568
                if var123003 - 1:
                    var123002 = var123002 + 32
                    var123003 = var123003 - 1
                    var123004 = var123004
                    var123006 = var123006
                    var123007 = var123007
                    continue 
                mem[var123006] = var123004
                if var123007 - 1:
                    _1587 = mem[64]
                    mem[64] = mem[64] + 64
                    var123002 = _1587
                    var123003 = 2
                    var123004 = _1587
                    var123006 = var123006 + 32
                    var123007 = var123007 - 1
                    continue 
                _1588 = mem[64]
                mem[64] = mem[64] + 64
                mem[0] = _20
                _1590 = mem[64]
                mem[64] = mem[64] + 64
                s = _1590
                idx = 0
                while idx < 2:
                    _1668 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1668] = stor16[_20][idx].field_0
                    mem[_1668 + 32] = stor16[_20][idx].field_256
                    mem[s] = _1668
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[_1588] = _1590
                mem[0] = _20
                mem[32] = 17
                _1667 = mem[64]
                mem[64] = mem[64] + 64
                s = _1667
                idx = 0
                while idx < 2:
                    _1728 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1728] = stor17[_20][idx].field_0
                    mem[_1728 + 32] = stor17[_20][idx].field_256
                    mem[s] = _1728
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[_1588 + 32] = _1667
                _1760 = mem[_1667]
                _1792 = mem[mem[_1588]]
                _1808 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1808] = 0
                mem[_1808 + 32] = 0
                mem[mem[64]] = mem[_1792]
                mem[mem[64] + 32] = mem[_1792 + 32]
                mem[mem[64] + 64] = mem[_1760]
                mem[mem[64] + 96] = mem[_1760 + 32]
                bn_add = bn256Add(mem[mem[64] len 128]) 
                mem[_1808 len 64] = bn_add
                require bn256Add.result
                mem[0] = _20
                mem[32] = 16
                stor16[_20].field_0 = bn_add
                stor16[_20].field_256 = Mask(256, -256, bn_add) << 256
                _1968 = mem[_1667 + 32]
                _2000 = mem[mem[_1588] + 32]
                _2016 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2016] = 0
                mem[_2016 + 32] = 0
                mem[mem[64]] = mem[_2000]
                mem[mem[64] + 32] = mem[_2000 + 32]
                mem[mem[64] + 64] = mem[_1968]
                mem[mem[64] + 96] = mem[_1968 + 32]
                bn_add = bn256Add(mem[mem[64] len 128]) 
                mem[_2016 len 64] = bn_add
                require bn256Add.result
                stor16[_20].field_512 = bn_add
                stor16[_20].field_768 = Mask(256, -256, bn_add) << 256
                stor17[_20].field_0 = 0
                stor17[_20].field_256 = 0
                stor17[_20].field_512 = 0
                stor17[_20].field_768 = 0
                mem[0] = _20
                mem[32] = 18
                lastRollOver[_20] = block.number / epochLength
                if lastGlobalUpdate >= block.number / epochLength:
                    _2208 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2208] = 0
                    mem[_2208 + 32] = 0
                    mem[0] = _20
                    mem[32] = 17
                    _2240 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2240] = stor17[_20].field_0
                    mem[_2240 + 32] = stor17[_20].field_256
                    _2256 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2256] = 0
                    mem[_2256 + 32] = 0
                    _2272 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2272] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                    mem[_2272 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                    _2305 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[mem[64] + 64] = arg3
                    bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                    mem[_2305 len 64] = bn_scalar_mul
                    require bn256ScalarMul.result
                    _2432 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[mem[64]] = stor17[_20].field_0
                    mem[mem[64] + 32] = stor17[_20].field_256
                    mem[mem[64] + 64] = bn_scalar_mul
                    mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                    bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                    mem[_2432 len 64] = bn_add
                else:
                    lastGlobalUpdate = block.number / epochLength
                    stor19.length = 0
                    mem[0] = 19
                    idx = 0
                    while stor19.length > idx:
                        stor19[idx] = 0
                        idx = idx + 1
                        continue 
                    _2960 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2960] = 0
                    mem[_2960 + 32] = 0
                    mem[0] = _20
                    mem[32] = 17
                    _2992 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2992] = stor17[_20].field_0
                    mem[_2992 + 32] = stor17[_20].field_256
                    _3008 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3008] = 0
                    mem[_3008 + 32] = 0
                    _3024 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3024] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                    mem[_3024 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                    _3040 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[mem[64] + 64] = arg3
                    bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                    mem[_3040 len 64] = bn_scalar_mul
                    require bn256ScalarMul.result
                    _3104 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[mem[64]] = stor17[_20].field_0
                    mem[mem[64] + 32] = stor17[_20].field_256
                    mem[mem[64] + 64] = bn_scalar_mul
                    mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                    bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                    mem[_3104 len 64] = bn_add
        else:
            if epochBase != 1:
                revert with 0, 'Invalid epoch base.'
            require epochLength
            mem[0] = _20
            mem[32] = 18
            if lastRollOver[_20] >= block.timestamp / epochLength:
                if lastGlobalUpdate >= block.timestamp / epochLength:
                    _90 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_90] = 0
                    mem[_90 + 32] = 0
                    mem[0] = _20
                    mem[32] = 17
                    _105 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_105] = stor17[_20].field_0
                    mem[_105 + 32] = stor17[_20].field_256
                    _116 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_116] = 0
                    mem[_116 + 32] = 0
                    _122 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_122] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                    mem[_122 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                    _159 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[mem[64] + 64] = arg3
                    bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                    mem[_159 len 64] = bn_scalar_mul
                    require bn256ScalarMul.result
                    _221 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[mem[64]] = stor17[_20].field_0
                    mem[mem[64] + 32] = stor17[_20].field_256
                    mem[mem[64] + 64] = bn_scalar_mul
                    mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                    bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                    mem[_221 len 64] = bn_add
                else:
                    lastGlobalUpdate = block.timestamp / epochLength
                    stor19.length = 0
                    mem[0] = 19
                    idx = 0
                    while stor19.length > idx:
                        stor19[idx] = 0
                        idx = idx + 1
                        continue 
                    _943 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_943] = 0
                    mem[_943 + 32] = 0
                    mem[0] = _20
                    mem[32] = 17
                    _975 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_975] = stor17[_20].field_0
                    mem[_975 + 32] = stor17[_20].field_256
                    _991 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_991] = 0
                    mem[_991 + 32] = 0
                    _1007 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1007] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                    mem[_1007 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                    _1023 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[mem[64] + 64] = arg3
                    bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                    mem[_1023 len 64] = bn_scalar_mul
                    require bn256ScalarMul.result
                    _1087 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[mem[64]] = stor17[_20].field_0
                    mem[mem[64] + 32] = stor17[_20].field_256
                    mem[mem[64] + 64] = bn_scalar_mul
                    mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                    bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                    mem[_1087 len 64] = bn_add
            else:
                mem[64] = mem[64] + 64
                mem[64] = mem[64] + 64
                _1567 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1567] = 0
                mem[_1567 + 32] = 0
                mem[var125002] = _1567
                if var125003 - 1:
                    var125002 = var125002 + 32
                    var125003 = var125003 - 1
                    var125004 = var125004
                    var125006 = var125006
                    var125007 = var125007
                    continue 
                mem[var125006] = var125004
                if var125007 - 1:
                    _1583 = mem[64]
                    mem[64] = mem[64] + 64
                    var125002 = _1583
                    var125003 = 2
                    var125004 = _1583
                    var125006 = var125006 + 32
                    var125007 = var125007 - 1
                    continue 
                _1584 = mem[64]
                mem[64] = mem[64] + 64
                mem[0] = _20
                _1586 = mem[64]
                mem[64] = mem[64] + 64
                s = _1586
                idx = 0
                while idx < 2:
                    _1665 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1665] = stor16[_20][idx].field_0
                    mem[_1665 + 32] = stor16[_20][idx].field_256
                    mem[s] = _1665
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[_1584] = _1586
                mem[0] = _20
                mem[32] = 17
                _1664 = mem[64]
                mem[64] = mem[64] + 64
                s = _1664
                idx = 0
                while idx < 2:
                    _1727 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1727] = stor17[_20][idx].field_0
                    mem[_1727 + 32] = stor17[_20][idx].field_256
                    mem[s] = _1727
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[_1584 + 32] = _1664
                _1759 = mem[_1664]
                _1791 = mem[mem[_1584]]
                _1807 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1807] = 0
                mem[_1807 + 32] = 0
                mem[mem[64]] = mem[_1791]
                mem[mem[64] + 32] = mem[_1791 + 32]
                mem[mem[64] + 64] = mem[_1759]
                mem[mem[64] + 96] = mem[_1759 + 32]
                bn_add = bn256Add(mem[mem[64] len 128]) 
                mem[_1807 len 64] = bn_add
                require bn256Add.result
                mem[0] = _20
                mem[32] = 16
                stor16[_20].field_0 = bn_add
                stor16[_20].field_256 = Mask(256, -256, bn_add) << 256
                _1967 = mem[_1664 + 32]
                _1999 = mem[mem[_1584] + 32]
                _2015 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2015] = 0
                mem[_2015 + 32] = 0
                mem[mem[64]] = mem[_1999]
                mem[mem[64] + 32] = mem[_1999 + 32]
                mem[mem[64] + 64] = mem[_1967]
                mem[mem[64] + 96] = mem[_1967 + 32]
                bn_add = bn256Add(mem[mem[64] len 128]) 
                mem[_2015 len 64] = bn_add
                require bn256Add.result
                stor16[_20].field_512 = bn_add
                stor16[_20].field_768 = Mask(256, -256, bn_add) << 256
                stor17[_20].field_0 = 0
                stor17[_20].field_256 = 0
                stor17[_20].field_512 = 0
                stor17[_20].field_768 = 0
                mem[0] = _20
                mem[32] = 18
                lastRollOver[_20] = block.timestamp / epochLength
                if lastGlobalUpdate >= block.timestamp / epochLength:
                    _2207 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2207] = 0
                    mem[_2207 + 32] = 0
                    mem[0] = _20
                    mem[32] = 17
                    _2239 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2239] = stor17[_20].field_0
                    mem[_2239 + 32] = stor17[_20].field_256
                    _2255 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2255] = 0
                    mem[_2255 + 32] = 0
                    _2271 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2271] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                    mem[_2271 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                    _2303 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[mem[64] + 64] = arg3
                    bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                    mem[_2303 len 64] = bn_scalar_mul
                    require bn256ScalarMul.result
                    _2431 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[mem[64]] = stor17[_20].field_0
                    mem[mem[64] + 32] = stor17[_20].field_256
                    mem[mem[64] + 64] = bn_scalar_mul
                    mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                    bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                    mem[_2431 len 64] = bn_add
                else:
                    lastGlobalUpdate = block.timestamp / epochLength
                    stor19.length = 0
                    mem[0] = 19
                    idx = 0
                    while stor19.length > idx:
                        stor19[idx] = 0
                        idx = idx + 1
                        continue 
                    _2959 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2959] = 0
                    mem[_2959 + 32] = 0
                    mem[0] = _20
                    mem[32] = 17
                    _2991 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2991] = stor17[_20].field_0
                    mem[_2991 + 32] = stor17[_20].field_256
                    _3007 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3007] = 0
                    mem[_3007 + 32] = 0
                    _3023 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3023] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                    mem[_3023 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                    _3039 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[mem[64] + 64] = arg3
                    bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                    mem[_3039 len 64] = bn_scalar_mul
                    require bn256ScalarMul.result
                    _3103 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[mem[64]] = stor17[_20].field_0
                    mem[mem[64] + 32] = stor17[_20].field_256
                    mem[mem[64] + 64] = bn_scalar_mul
                    mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                    bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                    mem[_3103 len 64] = bn_add
    else:
        if mem[mem[mem[ceil32(arg4.length) + 608]] + 32] != mem[ceil32(arg4.length) + 384]:
            if not epochBase:
                require epochLength
                mem[0] = _20
                mem[32] = 18
                if lastRollOver[_20] >= block.number / epochLength:
                    if lastGlobalUpdate >= block.number / epochLength:
                        _86 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_86] = 0
                        mem[_86 + 32] = 0
                        mem[0] = _20
                        mem[32] = 17
                        _101 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_101] = stor17[_20].field_0
                        mem[_101 + 32] = stor17[_20].field_256
                        _113 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_113] = 0
                        mem[_113 + 32] = 0
                        _117 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_117] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                        mem[_117 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                        _147 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[mem[64] + 64] = arg3
                        bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                        mem[_147 len 64] = bn_scalar_mul
                        require bn256ScalarMul.result
                        _212 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[mem[64]] = stor17[_20].field_0
                        mem[mem[64] + 32] = stor17[_20].field_256
                        mem[mem[64] + 64] = bn_scalar_mul
                        mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                        bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                        mem[_212 len 64] = bn_add
                    else:
                        lastGlobalUpdate = block.number / epochLength
                        stor19.length = 0
                        mem[0] = 19
                        idx = 0
                        while stor19.length > idx:
                            stor19[idx] = 0
                            idx = idx + 1
                            continue 
                        _946 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_946] = 0
                        mem[_946 + 32] = 0
                        mem[0] = _20
                        mem[32] = 17
                        _978 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_978] = stor17[_20].field_0
                        mem[_978 + 32] = stor17[_20].field_256
                        _994 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_994] = 0
                        mem[_994 + 32] = 0
                        _1010 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1010] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                        mem[_1010 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                        _1026 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[mem[64] + 64] = arg3
                        bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                        mem[_1026 len 64] = bn_scalar_mul
                        require bn256ScalarMul.result
                        _1090 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[mem[64]] = stor17[_20].field_0
                        mem[mem[64] + 32] = stor17[_20].field_256
                        mem[mem[64] + 64] = bn_scalar_mul
                        mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                        bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                        mem[_1090 len 64] = bn_add
                else:
                    mem[64] = mem[64] + 64
                    mem[64] = mem[64] + 64
                    _1570 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1570] = 0
                    mem[_1570 + 32] = 0
                    mem[var124002] = _1570
                    if var124003 - 1:
                        var124002 = var124002 + 32
                        var124003 = var124003 - 1
                        var124004 = var124004
                        var124006 = var124006
                        var124007 = var124007
                        continue 
                    mem[var124006] = var124004
                    if var124007 - 1:
                        _1595 = mem[64]
                        mem[64] = mem[64] + 64
                        var124002 = _1595
                        var124003 = 2
                        var124004 = _1595
                        var124006 = var124006 + 32
                        var124007 = var124007 - 1
                        continue 
                    _1596 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[0] = _20
                    _1598 = mem[64]
                    mem[64] = mem[64] + 64
                    s = _1598
                    idx = 0
                    while idx < 2:
                        _1674 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1674] = stor16[_20][idx].field_0
                        mem[_1674 + 32] = stor16[_20][idx].field_256
                        mem[s] = _1674
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[_1596] = _1598
                    mem[0] = _20
                    mem[32] = 17
                    _1673 = mem[64]
                    mem[64] = mem[64] + 64
                    s = _1673
                    idx = 0
                    while idx < 2:
                        _1730 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1730] = stor17[_20][idx].field_0
                        mem[_1730 + 32] = stor17[_20][idx].field_256
                        mem[s] = _1730
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[_1596 + 32] = _1673
                    _1762 = mem[_1673]
                    _1794 = mem[mem[_1596]]
                    _1810 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1810] = 0
                    mem[_1810 + 32] = 0
                    mem[mem[64]] = mem[_1794]
                    mem[mem[64] + 32] = mem[_1794 + 32]
                    mem[mem[64] + 64] = mem[_1762]
                    mem[mem[64] + 96] = mem[_1762 + 32]
                    bn_add = bn256Add(mem[mem[64] len 128]) 
                    mem[_1810 len 64] = bn_add
                    require bn256Add.result
                    mem[0] = _20
                    mem[32] = 16
                    stor16[_20].field_0 = bn_add
                    stor16[_20].field_256 = Mask(256, -256, bn_add) << 256
                    _1970 = mem[_1673 + 32]
                    _2002 = mem[mem[_1596] + 32]
                    _2018 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2018] = 0
                    mem[_2018 + 32] = 0
                    mem[mem[64]] = mem[_2002]
                    mem[mem[64] + 32] = mem[_2002 + 32]
                    mem[mem[64] + 64] = mem[_1970]
                    mem[mem[64] + 96] = mem[_1970 + 32]
                    bn_add = bn256Add(mem[mem[64] len 128]) 
                    mem[_2018 len 64] = bn_add
                    require bn256Add.result
                    stor16[_20].field_512 = bn_add
                    stor16[_20].field_768 = Mask(256, -256, bn_add) << 256
                    stor17[_20].field_0 = 0
                    stor17[_20].field_256 = 0
                    stor17[_20].field_512 = 0
                    stor17[_20].field_768 = 0
                    mem[0] = _20
                    mem[32] = 18
                    lastRollOver[_20] = block.number / epochLength
                    if lastGlobalUpdate >= block.number / epochLength:
                        _2210 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2210] = 0
                        mem[_2210 + 32] = 0
                        mem[0] = _20
                        mem[32] = 17
                        _2242 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2242] = stor17[_20].field_0
                        mem[_2242 + 32] = stor17[_20].field_256
                        _2258 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2258] = 0
                        mem[_2258 + 32] = 0
                        _2274 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2274] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                        mem[_2274 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                        _2309 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[mem[64] + 64] = arg3
                        bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                        mem[_2309 len 64] = bn_scalar_mul
                        require bn256ScalarMul.result
                        _2434 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[mem[64]] = stor17[_20].field_0
                        mem[mem[64] + 32] = stor17[_20].field_256
                        mem[mem[64] + 64] = bn_scalar_mul
                        mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                        bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                        mem[_2434 len 64] = bn_add
                    else:
                        lastGlobalUpdate = block.number / epochLength
                        stor19.length = 0
                        mem[0] = 19
                        idx = 0
                        while stor19.length > idx:
                            stor19[idx] = 0
                            idx = idx + 1
                            continue 
                        _2962 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2962] = 0
                        mem[_2962 + 32] = 0
                        mem[0] = _20
                        mem[32] = 17
                        _2994 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2994] = stor17[_20].field_0
                        mem[_2994 + 32] = stor17[_20].field_256
                        _3010 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3010] = 0
                        mem[_3010 + 32] = 0
                        _3026 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3026] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                        mem[_3026 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                        _3042 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[mem[64] + 64] = arg3
                        bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                        mem[_3042 len 64] = bn_scalar_mul
                        require bn256ScalarMul.result
                        _3106 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[mem[64]] = stor17[_20].field_0
                        mem[mem[64] + 32] = stor17[_20].field_256
                        mem[mem[64] + 64] = bn_scalar_mul
                        mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                        bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                        mem[_3106 len 64] = bn_add
            else:
                if epochBase != 1:
                    revert with 0, 'Invalid epoch base.'
                require epochLength
                mem[0] = _20
                mem[32] = 18
                if lastRollOver[_20] >= block.timestamp / epochLength:
                    if lastGlobalUpdate >= block.timestamp / epochLength:
                        _99 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_99] = 0
                        mem[_99 + 32] = 0
                        mem[0] = _20
                        mem[32] = 17
                        _111 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_111] = stor17[_20].field_0
                        mem[_111 + 32] = stor17[_20].field_256
                        _124 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_124] = 0
                        mem[_124 + 32] = 0
                        _132 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_132] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                        mem[_132 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                        _178 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[mem[64] + 64] = arg3
                        bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                        mem[_178 len 64] = bn_scalar_mul
                        require bn256ScalarMul.result
                        _248 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[mem[64]] = stor17[_20].field_0
                        mem[mem[64] + 32] = stor17[_20].field_256
                        mem[mem[64] + 64] = bn_scalar_mul
                        mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                        bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                        mem[_248 len 64] = bn_add
                    else:
                        lastGlobalUpdate = block.timestamp / epochLength
                        stor19.length = 0
                        mem[0] = 19
                        idx = 0
                        while stor19.length > idx:
                            stor19[idx] = 0
                            idx = idx + 1
                            continue 
                        _945 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_945] = 0
                        mem[_945 + 32] = 0
                        mem[0] = _20
                        mem[32] = 17
                        _977 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_977] = stor17[_20].field_0
                        mem[_977 + 32] = stor17[_20].field_256
                        _993 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_993] = 0
                        mem[_993 + 32] = 0
                        _1009 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1009] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                        mem[_1009 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                        _1025 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[mem[64] + 64] = arg3
                        bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                        mem[_1025 len 64] = bn_scalar_mul
                        require bn256ScalarMul.result
                        _1089 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[mem[64]] = stor17[_20].field_0
                        mem[mem[64] + 32] = stor17[_20].field_256
                        mem[mem[64] + 64] = bn_scalar_mul
                        mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                        bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                        mem[_1089 len 64] = bn_add
                else:
                    mem[64] = mem[64] + 64
                    mem[64] = mem[64] + 64
                    _1569 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1569] = 0
                    mem[_1569 + 32] = 0
                    mem[var126002] = _1569
                    if var126003 - 1:
                        var126002 = var126002 + 32
                        var126003 = var126003 - 1
                        var126004 = var126004
                        var126006 = var126006
                        var126007 = var126007
                        continue 
                    mem[var126006] = var126004
                    if var126007 - 1:
                        _1591 = mem[64]
                        mem[64] = mem[64] + 64
                        var126002 = _1591
                        var126003 = 2
                        var126004 = _1591
                        var126006 = var126006 + 32
                        var126007 = var126007 - 1
                        continue 
                    _1592 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[0] = _20
                    _1594 = mem[64]
                    mem[64] = mem[64] + 64
                    s = _1594
                    idx = 0
                    while idx < 2:
                        _1671 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1671] = stor16[_20][idx].field_0
                        mem[_1671 + 32] = stor16[_20][idx].field_256
                        mem[s] = _1671
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[_1592] = _1594
                    mem[0] = _20
                    mem[32] = 17
                    _1670 = mem[64]
                    mem[64] = mem[64] + 64
                    s = _1670
                    idx = 0
                    while idx < 2:
                        _1729 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1729] = stor17[_20][idx].field_0
                        mem[_1729 + 32] = stor17[_20][idx].field_256
                        mem[s] = _1729
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[_1592 + 32] = _1670
                    _1761 = mem[_1670]
                    _1793 = mem[mem[_1592]]
                    _1809 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1809] = 0
                    mem[_1809 + 32] = 0
                    mem[mem[64]] = mem[_1793]
                    mem[mem[64] + 32] = mem[_1793 + 32]
                    mem[mem[64] + 64] = mem[_1761]
                    mem[mem[64] + 96] = mem[_1761 + 32]
                    bn_add = bn256Add(mem[mem[64] len 128]) 
                    mem[_1809 len 64] = bn_add
                    require bn256Add.result
                    mem[0] = _20
                    mem[32] = 16
                    stor16[_20].field_0 = bn_add
                    stor16[_20].field_256 = Mask(256, -256, bn_add) << 256
                    _1969 = mem[_1670 + 32]
                    _2001 = mem[mem[_1592] + 32]
                    _2017 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2017] = 0
                    mem[_2017 + 32] = 0
                    mem[mem[64]] = mem[_2001]
                    mem[mem[64] + 32] = mem[_2001 + 32]
                    mem[mem[64] + 64] = mem[_1969]
                    mem[mem[64] + 96] = mem[_1969 + 32]
                    bn_add = bn256Add(mem[mem[64] len 128]) 
                    mem[_2017 len 64] = bn_add
                    require bn256Add.result
                    stor16[_20].field_512 = bn_add
                    stor16[_20].field_768 = Mask(256, -256, bn_add) << 256
                    stor17[_20].field_0 = 0
                    stor17[_20].field_256 = 0
                    stor17[_20].field_512 = 0
                    stor17[_20].field_768 = 0
                    mem[0] = _20
                    mem[32] = 18
                    lastRollOver[_20] = block.timestamp / epochLength
                    if lastGlobalUpdate >= block.timestamp / epochLength:
                        _2209 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2209] = 0
                        mem[_2209 + 32] = 0
                        mem[0] = _20
                        mem[32] = 17
                        _2241 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2241] = stor17[_20].field_0
                        mem[_2241 + 32] = stor17[_20].field_256
                        _2257 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2257] = 0
                        mem[_2257 + 32] = 0
                        _2273 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2273] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                        mem[_2273 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                        _2307 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[mem[64] + 64] = arg3
                        bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                        mem[_2307 len 64] = bn_scalar_mul
                        require bn256ScalarMul.result
                        _2433 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[mem[64]] = stor17[_20].field_0
                        mem[mem[64] + 32] = stor17[_20].field_256
                        mem[mem[64] + 64] = bn_scalar_mul
                        mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                        bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                        mem[_2433 len 64] = bn_add
                    else:
                        lastGlobalUpdate = block.timestamp / epochLength
                        stor19.length = 0
                        mem[0] = 19
                        idx = 0
                        while stor19.length > idx:
                            stor19[idx] = 0
                            idx = idx + 1
                            continue 
                        _2961 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2961] = 0
                        mem[_2961 + 32] = 0
                        mem[0] = _20
                        mem[32] = 17
                        _2993 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2993] = stor17[_20].field_0
                        mem[_2993 + 32] = stor17[_20].field_256
                        _3009 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3009] = 0
                        mem[_3009 + 32] = 0
                        _3025 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3025] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                        mem[_3025 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                        _3041 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[mem[64] + 64] = arg3
                        bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                        mem[_3041 len 64] = bn_scalar_mul
                        require bn256ScalarMul.result
                        _3105 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[mem[64]] = stor17[_20].field_0
                        mem[mem[64] + 32] = stor17[_20].field_256
                        mem[mem[64] + 64] = bn_scalar_mul
                        mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                        bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                        mem[_3105 len 64] = bn_add
        else:
            if mem[mem[mem[ceil32(arg4.length) + 608] + 32]] != mem[ceil32(arg4.length) + 352]:
                if not epochBase:
                    require epochLength
                    mem[0] = _20
                    mem[32] = 18
                    if lastRollOver[_20] >= block.number / epochLength:
                        if lastGlobalUpdate >= block.number / epochLength:
                            _126 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_126] = 0
                            mem[_126 + 32] = 0
                            mem[0] = _20
                            mem[32] = 17
                            _151 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_151] = stor17[_20].field_0
                            mem[_151 + 32] = stor17[_20].field_256
                            _182 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_182] = 0
                            mem[_182 + 32] = 0
                            _191 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_191] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                            mem[_191 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                            _229 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[mem[64] + 64] = arg3
                            bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                            mem[_229 len 64] = bn_scalar_mul
                            require bn256ScalarMul.result
                            _345 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[mem[64]] = stor17[_20].field_0
                            mem[mem[64] + 32] = stor17[_20].field_256
                            mem[mem[64] + 64] = bn_scalar_mul
                            mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                            bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                            mem[_345 len 64] = bn_add
                        else:
                            lastGlobalUpdate = block.number / epochLength
                            stor19.length = 0
                            mem[0] = 19
                            idx = 0
                            while stor19.length > idx:
                                stor19[idx] = 0
                                idx = idx + 1
                                continue 
                            _948 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_948] = 0
                            mem[_948 + 32] = 0
                            mem[0] = _20
                            mem[32] = 17
                            _980 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_980] = stor17[_20].field_0
                            mem[_980 + 32] = stor17[_20].field_256
                            _996 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_996] = 0
                            mem[_996 + 32] = 0
                            _1012 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1012] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                            mem[_1012 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                            _1028 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[mem[64] + 64] = arg3
                            bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                            mem[_1028 len 64] = bn_scalar_mul
                            require bn256ScalarMul.result
                            _1092 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[mem[64]] = stor17[_20].field_0
                            mem[mem[64] + 32] = stor17[_20].field_256
                            mem[mem[64] + 64] = bn_scalar_mul
                            mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                            bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                            mem[_1092 len 64] = bn_add
                    else:
                        mem[64] = mem[64] + 64
                        mem[64] = mem[64] + 64
                        _1572 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1572] = 0
                        mem[_1572 + 32] = 0
                        mem[var130002] = _1572
                        if var130003 - 1:
                            var130002 = var130002 + 32
                            var130003 = var130003 - 1
                            var130004 = var130004
                            var130006 = var130006
                            var130007 = var130007
                            continue 
                        mem[var130006] = var130004
                        if var130007 - 1:
                            _1603 = mem[64]
                            mem[64] = mem[64] + 64
                            var130002 = _1603
                            var130003 = 2
                            var130004 = _1603
                            var130006 = var130006 + 32
                            var130007 = var130007 - 1
                            continue 
                        _1604 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[0] = _20
                        _1606 = mem[64]
                        mem[64] = mem[64] + 64
                        s = _1606
                        idx = 0
                        while idx < 2:
                            _1680 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1680] = stor16[_20][idx].field_0
                            mem[_1680 + 32] = stor16[_20][idx].field_256
                            mem[s] = _1680
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[_1604] = _1606
                        mem[0] = _20
                        mem[32] = 17
                        _1679 = mem[64]
                        mem[64] = mem[64] + 64
                        s = _1679
                        idx = 0
                        while idx < 2:
                            _1732 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1732] = stor17[_20][idx].field_0
                            mem[_1732 + 32] = stor17[_20][idx].field_256
                            mem[s] = _1732
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[_1604 + 32] = _1679
                        _1764 = mem[_1679]
                        _1796 = mem[mem[_1604]]
                        _1812 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1812] = 0
                        mem[_1812 + 32] = 0
                        mem[mem[64]] = mem[_1796]
                        mem[mem[64] + 32] = mem[_1796 + 32]
                        mem[mem[64] + 64] = mem[_1764]
                        mem[mem[64] + 96] = mem[_1764 + 32]
                        bn_add = bn256Add(mem[mem[64] len 128]) 
                        mem[_1812 len 64] = bn_add
                        require bn256Add.result
                        mem[0] = _20
                        mem[32] = 16
                        stor16[_20].field_0 = bn_add
                        stor16[_20].field_256 = Mask(256, -256, bn_add) << 256
                        _1972 = mem[_1679 + 32]
                        _2004 = mem[mem[_1604] + 32]
                        _2020 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2020] = 0
                        mem[_2020 + 32] = 0
                        mem[mem[64]] = mem[_2004]
                        mem[mem[64] + 32] = mem[_2004 + 32]
                        mem[mem[64] + 64] = mem[_1972]
                        mem[mem[64] + 96] = mem[_1972 + 32]
                        bn_add = bn256Add(mem[mem[64] len 128]) 
                        mem[_2020 len 64] = bn_add
                        require bn256Add.result
                        stor16[_20].field_512 = bn_add
                        stor16[_20].field_768 = Mask(256, -256, bn_add) << 256
                        stor17[_20].field_0 = 0
                        stor17[_20].field_256 = 0
                        stor17[_20].field_512 = 0
                        stor17[_20].field_768 = 0
                        mem[0] = _20
                        mem[32] = 18
                        lastRollOver[_20] = block.number / epochLength
                        if lastGlobalUpdate >= block.number / epochLength:
                            _2212 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2212] = 0
                            mem[_2212 + 32] = 0
                            mem[0] = _20
                            mem[32] = 17
                            _2244 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2244] = stor17[_20].field_0
                            mem[_2244 + 32] = stor17[_20].field_256
                            _2260 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2260] = 0
                            mem[_2260 + 32] = 0
                            _2276 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2276] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                            mem[_2276 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                            _2313 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[mem[64] + 64] = arg3
                            bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                            mem[_2313 len 64] = bn_scalar_mul
                            require bn256ScalarMul.result
                            _2436 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[mem[64]] = stor17[_20].field_0
                            mem[mem[64] + 32] = stor17[_20].field_256
                            mem[mem[64] + 64] = bn_scalar_mul
                            mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                            bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                            mem[_2436 len 64] = bn_add
                        else:
                            lastGlobalUpdate = block.number / epochLength
                            stor19.length = 0
                            mem[0] = 19
                            idx = 0
                            while stor19.length > idx:
                                stor19[idx] = 0
                                idx = idx + 1
                                continue 
                            _2964 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2964] = 0
                            mem[_2964 + 32] = 0
                            mem[0] = _20
                            mem[32] = 17
                            _2996 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2996] = stor17[_20].field_0
                            mem[_2996 + 32] = stor17[_20].field_256
                            _3012 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3012] = 0
                            mem[_3012 + 32] = 0
                            _3028 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3028] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                            mem[_3028 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                            _3044 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[mem[64] + 64] = arg3
                            bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                            mem[_3044 len 64] = bn_scalar_mul
                            require bn256ScalarMul.result
                            _3108 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[mem[64]] = stor17[_20].field_0
                            mem[mem[64] + 32] = stor17[_20].field_256
                            mem[mem[64] + 64] = bn_scalar_mul
                            mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                            bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                            mem[_3108 len 64] = bn_add
                else:
                    if epochBase != 1:
                        revert with 0, 'Invalid epoch base.'
                    require epochLength
                    mem[0] = _20
                    mem[32] = 18
                    if lastRollOver[_20] >= block.timestamp / epochLength:
                        if lastGlobalUpdate >= block.timestamp / epochLength:
                            _149 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_149] = 0
                            mem[_149 + 32] = 0
                            mem[0] = _20
                            mem[32] = 17
                            _180 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_180] = stor17[_20].field_0
                            mem[_180 + 32] = stor17[_20].field_256
                            _200 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_200] = 0
                            mem[_200 + 32] = 0
                            _213 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_213] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                            mem[_213 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                            _279 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[mem[64] + 64] = arg3
                            bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                            mem[_279 len 64] = bn_scalar_mul
                            require bn256ScalarMul.result
                            _384 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[mem[64]] = stor17[_20].field_0
                            mem[mem[64] + 32] = stor17[_20].field_256
                            mem[mem[64] + 64] = bn_scalar_mul
                            mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                            bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                            mem[_384 len 64] = bn_add
                        else:
                            lastGlobalUpdate = block.timestamp / epochLength
                            stor19.length = 0
                            mem[0] = 19
                            idx = 0
                            while stor19.length > idx:
                                stor19[idx] = 0
                                idx = idx + 1
                                continue 
                            _947 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_947] = 0
                            mem[_947 + 32] = 0
                            mem[0] = _20
                            mem[32] = 17
                            _979 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_979] = stor17[_20].field_0
                            mem[_979 + 32] = stor17[_20].field_256
                            _995 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_995] = 0
                            mem[_995 + 32] = 0
                            _1011 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1011] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                            mem[_1011 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                            _1027 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[mem[64] + 64] = arg3
                            bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                            mem[_1027 len 64] = bn_scalar_mul
                            require bn256ScalarMul.result
                            _1091 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[mem[64]] = stor17[_20].field_0
                            mem[mem[64] + 32] = stor17[_20].field_256
                            mem[mem[64] + 64] = bn_scalar_mul
                            mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                            bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                            mem[_1091 len 64] = bn_add
                    else:
                        mem[64] = mem[64] + 64
                        mem[64] = mem[64] + 64
                        _1571 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1571] = 0
                        mem[_1571 + 32] = 0
                        mem[var132002] = _1571
                        if var132003 - 1:
                            var132002 = var132002 + 32
                            var132003 = var132003 - 1
                            var132004 = var132004
                            var132006 = var132006
                            var132007 = var132007
                            continue 
                        mem[var132006] = var132004
                        if var132007 - 1:
                            _1599 = mem[64]
                            mem[64] = mem[64] + 64
                            var132002 = _1599
                            var132003 = 2
                            var132004 = _1599
                            var132006 = var132006 + 32
                            var132007 = var132007 - 1
                            continue 
                        _1600 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[0] = _20
                        _1602 = mem[64]
                        mem[64] = mem[64] + 64
                        s = _1602
                        idx = 0
                        while idx < 2:
                            _1677 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1677] = stor16[_20][idx].field_0
                            mem[_1677 + 32] = stor16[_20][idx].field_256
                            mem[s] = _1677
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[_1600] = _1602
                        mem[0] = _20
                        mem[32] = 17
                        _1676 = mem[64]
                        mem[64] = mem[64] + 64
                        s = _1676
                        idx = 0
                        while idx < 2:
                            _1731 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1731] = stor17[_20][idx].field_0
                            mem[_1731 + 32] = stor17[_20][idx].field_256
                            mem[s] = _1731
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[_1600 + 32] = _1676
                        _1763 = mem[_1676]
                        _1795 = mem[mem[_1600]]
                        _1811 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1811] = 0
                        mem[_1811 + 32] = 0
                        mem[mem[64]] = mem[_1795]
                        mem[mem[64] + 32] = mem[_1795 + 32]
                        mem[mem[64] + 64] = mem[_1763]
                        mem[mem[64] + 96] = mem[_1763 + 32]
                        bn_add = bn256Add(mem[mem[64] len 128]) 
                        mem[_1811 len 64] = bn_add
                        require bn256Add.result
                        mem[0] = _20
                        mem[32] = 16
                        stor16[_20].field_0 = bn_add
                        stor16[_20].field_256 = Mask(256, -256, bn_add) << 256
                        _1971 = mem[_1676 + 32]
                        _2003 = mem[mem[_1600] + 32]
                        _2019 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2019] = 0
                        mem[_2019 + 32] = 0
                        mem[mem[64]] = mem[_2003]
                        mem[mem[64] + 32] = mem[_2003 + 32]
                        mem[mem[64] + 64] = mem[_1971]
                        mem[mem[64] + 96] = mem[_1971 + 32]
                        bn_add = bn256Add(mem[mem[64] len 128]) 
                        mem[_2019 len 64] = bn_add
                        require bn256Add.result
                        stor16[_20].field_512 = bn_add
                        stor16[_20].field_768 = Mask(256, -256, bn_add) << 256
                        stor17[_20].field_0 = 0
                        stor17[_20].field_256 = 0
                        stor17[_20].field_512 = 0
                        stor17[_20].field_768 = 0
                        mem[0] = _20
                        mem[32] = 18
                        lastRollOver[_20] = block.timestamp / epochLength
                        if lastGlobalUpdate >= block.timestamp / epochLength:
                            _2211 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2211] = 0
                            mem[_2211 + 32] = 0
                            mem[0] = _20
                            mem[32] = 17
                            _2243 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2243] = stor17[_20].field_0
                            mem[_2243 + 32] = stor17[_20].field_256
                            _2259 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2259] = 0
                            mem[_2259 + 32] = 0
                            _2275 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2275] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                            mem[_2275 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                            _2311 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[mem[64] + 64] = arg3
                            bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                            mem[_2311 len 64] = bn_scalar_mul
                            require bn256ScalarMul.result
                            _2435 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[mem[64]] = stor17[_20].field_0
                            mem[mem[64] + 32] = stor17[_20].field_256
                            mem[mem[64] + 64] = bn_scalar_mul
                            mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                            bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                            mem[_2435 len 64] = bn_add
                        else:
                            lastGlobalUpdate = block.timestamp / epochLength
                            stor19.length = 0
                            mem[0] = 19
                            idx = 0
                            while stor19.length > idx:
                                stor19[idx] = 0
                                idx = idx + 1
                                continue 
                            _2963 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2963] = 0
                            mem[_2963 + 32] = 0
                            mem[0] = _20
                            mem[32] = 17
                            _2995 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2995] = stor17[_20].field_0
                            mem[_2995 + 32] = stor17[_20].field_256
                            _3011 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3011] = 0
                            mem[_3011 + 32] = 0
                            _3027 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3027] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                            mem[_3027 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                            _3043 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[mem[64] + 64] = arg3
                            bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                            mem[_3043 len 64] = bn_scalar_mul
                            require bn256ScalarMul.result
                            _3107 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[mem[64]] = stor17[_20].field_0
                            mem[mem[64] + 32] = stor17[_20].field_256
                            mem[mem[64] + 64] = bn_scalar_mul
                            mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                            bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                            mem[_3107 len 64] = bn_add
            else:
                if mem[mem[mem[ceil32(arg4.length) + 608] + 32] + 32] != mem[ceil32(arg4.length) + 384]:
                    if not epochBase:
                        require epochLength
                        mem[0] = _20
                        mem[32] = 18
                        if lastRollOver[_20] >= block.number / epochLength:
                            if lastGlobalUpdate >= block.number / epochLength:
                                _138 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_138] = 0
                                mem[_138 + 32] = 0
                                mem[0] = _20
                                mem[32] = 17
                                _169 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_169] = stor17[_20].field_0
                                mem[_169 + 32] = stor17[_20].field_256
                                _194 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_194] = 0
                                mem[_194 + 32] = 0
                                _201 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_201] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                mem[_201 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                _255 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[mem[64] + 64] = arg3
                                bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                mem[_255 len 64] = bn_scalar_mul
                                require bn256ScalarMul.result
                                _368 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[mem[64]] = stor17[_20].field_0
                                mem[mem[64] + 32] = stor17[_20].field_256
                                mem[mem[64] + 64] = bn_scalar_mul
                                mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                mem[_368 len 64] = bn_add
                            else:
                                lastGlobalUpdate = block.number / epochLength
                                stor19.length = 0
                                mem[0] = 19
                                idx = 0
                                while stor19.length > idx:
                                    stor19[idx] = 0
                                    idx = idx + 1
                                    continue 
                                _950 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_950] = 0
                                mem[_950 + 32] = 0
                                mem[0] = _20
                                mem[32] = 17
                                _982 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_982] = stor17[_20].field_0
                                mem[_982 + 32] = stor17[_20].field_256
                                _998 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_998] = 0
                                mem[_998 + 32] = 0
                                _1014 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1014] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                mem[_1014 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                _1030 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[mem[64] + 64] = arg3
                                bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                mem[_1030 len 64] = bn_scalar_mul
                                require bn256ScalarMul.result
                                _1094 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[mem[64]] = stor17[_20].field_0
                                mem[mem[64] + 32] = stor17[_20].field_256
                                mem[mem[64] + 64] = bn_scalar_mul
                                mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                mem[_1094 len 64] = bn_add
                        else:
                            mem[64] = mem[64] + 64
                            mem[64] = mem[64] + 64
                            _1574 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1574] = 0
                            mem[_1574 + 32] = 0
                            mem[var131002] = _1574
                            if var131003 - 1:
                                var131002 = var131002 + 32
                                var131003 = var131003 - 1
                                var131004 = var131004
                                var131006 = var131006
                                var131007 = var131007
                                continue 
                            mem[var131006] = var131004
                            if var131007 - 1:
                                _1611 = mem[64]
                                mem[64] = mem[64] + 64
                                var131002 = _1611
                                var131003 = 2
                                var131004 = _1611
                                var131006 = var131006 + 32
                                var131007 = var131007 - 1
                                continue 
                            _1612 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[0] = _20
                            _1614 = mem[64]
                            mem[64] = mem[64] + 64
                            s = _1614
                            idx = 0
                            while idx < 2:
                                _1686 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1686] = stor16[_20][idx].field_0
                                mem[_1686 + 32] = stor16[_20][idx].field_256
                                mem[s] = _1686
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[_1612] = _1614
                            mem[0] = _20
                            mem[32] = 17
                            _1685 = mem[64]
                            mem[64] = mem[64] + 64
                            s = _1685
                            idx = 0
                            while idx < 2:
                                _1734 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1734] = stor17[_20][idx].field_0
                                mem[_1734 + 32] = stor17[_20][idx].field_256
                                mem[s] = _1734
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[_1612 + 32] = _1685
                            _1766 = mem[_1685]
                            _1798 = mem[mem[_1612]]
                            _1814 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1814] = 0
                            mem[_1814 + 32] = 0
                            mem[mem[64]] = mem[_1798]
                            mem[mem[64] + 32] = mem[_1798 + 32]
                            mem[mem[64] + 64] = mem[_1766]
                            mem[mem[64] + 96] = mem[_1766 + 32]
                            bn_add = bn256Add(mem[mem[64] len 128]) 
                            mem[_1814 len 64] = bn_add
                            require bn256Add.result
                            mem[0] = _20
                            mem[32] = 16
                            stor16[_20].field_0 = bn_add
                            stor16[_20].field_256 = Mask(256, -256, bn_add) << 256
                            _1974 = mem[_1685 + 32]
                            _2006 = mem[mem[_1612] + 32]
                            _2022 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2022] = 0
                            mem[_2022 + 32] = 0
                            mem[mem[64]] = mem[_2006]
                            mem[mem[64] + 32] = mem[_2006 + 32]
                            mem[mem[64] + 64] = mem[_1974]
                            mem[mem[64] + 96] = mem[_1974 + 32]
                            bn_add = bn256Add(mem[mem[64] len 128]) 
                            mem[_2022 len 64] = bn_add
                            require bn256Add.result
                            stor16[_20].field_512 = bn_add
                            stor16[_20].field_768 = Mask(256, -256, bn_add) << 256
                            stor17[_20].field_0 = 0
                            stor17[_20].field_256 = 0
                            stor17[_20].field_512 = 0
                            stor17[_20].field_768 = 0
                            mem[0] = _20
                            mem[32] = 18
                            lastRollOver[_20] = block.number / epochLength
                            if lastGlobalUpdate >= block.number / epochLength:
                                _2214 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2214] = 0
                                mem[_2214 + 32] = 0
                                mem[0] = _20
                                mem[32] = 17
                                _2246 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2246] = stor17[_20].field_0
                                mem[_2246 + 32] = stor17[_20].field_256
                                _2262 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2262] = 0
                                mem[_2262 + 32] = 0
                                _2278 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2278] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                mem[_2278 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                _2317 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[mem[64] + 64] = arg3
                                bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                mem[_2317 len 64] = bn_scalar_mul
                                require bn256ScalarMul.result
                                _2438 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[mem[64]] = stor17[_20].field_0
                                mem[mem[64] + 32] = stor17[_20].field_256
                                mem[mem[64] + 64] = bn_scalar_mul
                                mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                mem[_2438 len 64] = bn_add
                            else:
                                lastGlobalUpdate = block.number / epochLength
                                stor19.length = 0
                                mem[0] = 19
                                idx = 0
                                while stor19.length > idx:
                                    stor19[idx] = 0
                                    idx = idx + 1
                                    continue 
                                _2966 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2966] = 0
                                mem[_2966 + 32] = 0
                                mem[0] = _20
                                mem[32] = 17
                                _2998 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2998] = stor17[_20].field_0
                                mem[_2998 + 32] = stor17[_20].field_256
                                _3014 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3014] = 0
                                mem[_3014 + 32] = 0
                                _3030 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3030] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                mem[_3030 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                _3046 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[mem[64] + 64] = arg3
                                bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                mem[_3046 len 64] = bn_scalar_mul
                                require bn256ScalarMul.result
                                _3110 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[mem[64]] = stor17[_20].field_0
                                mem[mem[64] + 32] = stor17[_20].field_256
                                mem[mem[64] + 64] = bn_scalar_mul
                                mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                mem[_3110 len 64] = bn_add
                    else:
                        if epochBase != 1:
                            revert with 0, 'Invalid epoch base.'
                        require epochLength
                        mem[0] = _20
                        mem[32] = 18
                        if lastRollOver[_20] >= block.timestamp / epochLength:
                            if lastGlobalUpdate >= block.timestamp / epochLength:
                                _167 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_167] = 0
                                mem[_167 + 32] = 0
                                mem[0] = _20
                                mem[32] = 17
                                _192 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_192] = stor17[_20].field_0
                                mem[_192 + 32] = stor17[_20].field_256
                                _215 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_215] = 0
                                mem[_215 + 32] = 0
                                _231 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_231] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                mem[_231 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                _308 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[mem[64] + 64] = arg3
                                bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                mem[_308 len 64] = bn_scalar_mul
                                require bn256ScalarMul.result
                                _419 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[mem[64]] = stor17[_20].field_0
                                mem[mem[64] + 32] = stor17[_20].field_256
                                mem[mem[64] + 64] = bn_scalar_mul
                                mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                mem[_419 len 64] = bn_add
                            else:
                                lastGlobalUpdate = block.timestamp / epochLength
                                stor19.length = 0
                                mem[0] = 19
                                idx = 0
                                while stor19.length > idx:
                                    stor19[idx] = 0
                                    idx = idx + 1
                                    continue 
                                _949 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_949] = 0
                                mem[_949 + 32] = 0
                                mem[0] = _20
                                mem[32] = 17
                                _981 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_981] = stor17[_20].field_0
                                mem[_981 + 32] = stor17[_20].field_256
                                _997 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_997] = 0
                                mem[_997 + 32] = 0
                                _1013 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1013] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                mem[_1013 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                _1029 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[mem[64] + 64] = arg3
                                bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                mem[_1029 len 64] = bn_scalar_mul
                                require bn256ScalarMul.result
                                _1093 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[mem[64]] = stor17[_20].field_0
                                mem[mem[64] + 32] = stor17[_20].field_256
                                mem[mem[64] + 64] = bn_scalar_mul
                                mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                mem[_1093 len 64] = bn_add
                        else:
                            mem[64] = mem[64] + 64
                            mem[64] = mem[64] + 64
                            _1573 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1573] = 0
                            mem[_1573 + 32] = 0
                            mem[var133002] = _1573
                            if var133003 - 1:
                                var133002 = var133002 + 32
                                var133003 = var133003 - 1
                                var133004 = var133004
                                var133006 = var133006
                                var133007 = var133007
                                continue 
                            mem[var133006] = var133004
                            if var133007 - 1:
                                _1607 = mem[64]
                                mem[64] = mem[64] + 64
                                var133002 = _1607
                                var133003 = 2
                                var133004 = _1607
                                var133006 = var133006 + 32
                                var133007 = var133007 - 1
                                continue 
                            _1608 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[0] = _20
                            _1610 = mem[64]
                            mem[64] = mem[64] + 64
                            s = _1610
                            idx = 0
                            while idx < 2:
                                _1683 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1683] = stor16[_20][idx].field_0
                                mem[_1683 + 32] = stor16[_20][idx].field_256
                                mem[s] = _1683
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[_1608] = _1610
                            mem[0] = _20
                            mem[32] = 17
                            _1682 = mem[64]
                            mem[64] = mem[64] + 64
                            s = _1682
                            idx = 0
                            while idx < 2:
                                _1733 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1733] = stor17[_20][idx].field_0
                                mem[_1733 + 32] = stor17[_20][idx].field_256
                                mem[s] = _1733
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[_1608 + 32] = _1682
                            _1765 = mem[_1682]
                            _1797 = mem[mem[_1608]]
                            _1813 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1813] = 0
                            mem[_1813 + 32] = 0
                            mem[mem[64]] = mem[_1797]
                            mem[mem[64] + 32] = mem[_1797 + 32]
                            mem[mem[64] + 64] = mem[_1765]
                            mem[mem[64] + 96] = mem[_1765 + 32]
                            bn_add = bn256Add(mem[mem[64] len 128]) 
                            mem[_1813 len 64] = bn_add
                            require bn256Add.result
                            mem[0] = _20
                            mem[32] = 16
                            stor16[_20].field_0 = bn_add
                            stor16[_20].field_256 = Mask(256, -256, bn_add) << 256
                            _1973 = mem[_1682 + 32]
                            _2005 = mem[mem[_1608] + 32]
                            _2021 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2021] = 0
                            mem[_2021 + 32] = 0
                            mem[mem[64]] = mem[_2005]
                            mem[mem[64] + 32] = mem[_2005 + 32]
                            mem[mem[64] + 64] = mem[_1973]
                            mem[mem[64] + 96] = mem[_1973 + 32]
                            bn_add = bn256Add(mem[mem[64] len 128]) 
                            mem[_2021 len 64] = bn_add
                            require bn256Add.result
                            stor16[_20].field_512 = bn_add
                            stor16[_20].field_768 = Mask(256, -256, bn_add) << 256
                            stor17[_20].field_0 = 0
                            stor17[_20].field_256 = 0
                            stor17[_20].field_512 = 0
                            stor17[_20].field_768 = 0
                            mem[0] = _20
                            mem[32] = 18
                            lastRollOver[_20] = block.timestamp / epochLength
                            if lastGlobalUpdate >= block.timestamp / epochLength:
                                _2213 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2213] = 0
                                mem[_2213 + 32] = 0
                                mem[0] = _20
                                mem[32] = 17
                                _2245 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2245] = stor17[_20].field_0
                                mem[_2245 + 32] = stor17[_20].field_256
                                _2261 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2261] = 0
                                mem[_2261 + 32] = 0
                                _2277 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2277] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                mem[_2277 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                _2315 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[mem[64] + 64] = arg3
                                bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                mem[_2315 len 64] = bn_scalar_mul
                                require bn256ScalarMul.result
                                _2437 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[mem[64]] = stor17[_20].field_0
                                mem[mem[64] + 32] = stor17[_20].field_256
                                mem[mem[64] + 64] = bn_scalar_mul
                                mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                mem[_2437 len 64] = bn_add
                            else:
                                lastGlobalUpdate = block.timestamp / epochLength
                                stor19.length = 0
                                mem[0] = 19
                                idx = 0
                                while stor19.length > idx:
                                    stor19[idx] = 0
                                    idx = idx + 1
                                    continue 
                                _2965 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2965] = 0
                                mem[_2965 + 32] = 0
                                mem[0] = _20
                                mem[32] = 17
                                _2997 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2997] = stor17[_20].field_0
                                mem[_2997 + 32] = stor17[_20].field_256
                                _3013 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3013] = 0
                                mem[_3013 + 32] = 0
                                _3029 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3029] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                mem[_3029 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                _3045 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[mem[64] + 64] = arg3
                                bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                mem[_3045 len 64] = bn_scalar_mul
                                require bn256ScalarMul.result
                                _3109 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[mem[64]] = stor17[_20].field_0
                                mem[mem[64] + 32] = stor17[_20].field_256
                                mem[mem[64] + 64] = bn_scalar_mul
                                mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                mem[_3109 len 64] = bn_add
                else:
                    if mem[mem[_49]] != mem[ceil32(arg4.length) + 352]:
                        if not epochBase:
                            require epochLength
                            mem[0] = _20
                            mem[32] = 18
                            if lastRollOver[_20] >= block.number / epochLength:
                                if lastGlobalUpdate >= block.number / epochLength:
                                    _217 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_217] = 0
                                    mem[_217 + 32] = 0
                                    mem[0] = _20
                                    mem[32] = 17
                                    _259 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_259] = stor17[_20].field_0
                                    mem[_259 + 32] = stor17[_20].field_256
                                    _312 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_312] = 0
                                    mem[_312 + 32] = 0
                                    _331 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_331] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                    mem[_331 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                    _392 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[mem[64] + 64] = arg3
                                    bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                    mem[_392 len 64] = bn_scalar_mul
                                    require bn256ScalarMul.result
                                    _541 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[mem[64]] = stor17[_20].field_0
                                    mem[mem[64] + 32] = stor17[_20].field_256
                                    mem[mem[64] + 64] = bn_scalar_mul
                                    mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                    bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                    mem[_541 len 64] = bn_add
                                else:
                                    lastGlobalUpdate = block.number / epochLength
                                    stor19.length = 0
                                    mem[0] = 19
                                    idx = 0
                                    while stor19.length > idx:
                                        stor19[idx] = 0
                                        idx = idx + 1
                                        continue 
                                    _952 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_952] = 0
                                    mem[_952 + 32] = 0
                                    mem[0] = _20
                                    mem[32] = 17
                                    _984 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_984] = stor17[_20].field_0
                                    mem[_984 + 32] = stor17[_20].field_256
                                    _1000 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1000] = 0
                                    mem[_1000 + 32] = 0
                                    _1016 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1016] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                    mem[_1016 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                    _1032 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[mem[64] + 64] = arg3
                                    bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                    mem[_1032 len 64] = bn_scalar_mul
                                    require bn256ScalarMul.result
                                    _1096 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[mem[64]] = stor17[_20].field_0
                                    mem[mem[64] + 32] = stor17[_20].field_256
                                    mem[mem[64] + 64] = bn_scalar_mul
                                    mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                    bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                    mem[_1096 len 64] = bn_add
                            else:
                                mem[64] = mem[64] + 64
                                mem[64] = mem[64] + 64
                                _1576 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1576] = 0
                                mem[_1576 + 32] = 0
                                mem[var137002] = _1576
                                if var137003 - 1:
                                    var137002 = var137002 + 32
                                    var137003 = var137003 - 1
                                    var137004 = var137004
                                    var137006 = var137006
                                    var137007 = var137007
                                    continue 
                                mem[var137006] = var137004
                                if var137007 - 1:
                                    _1619 = mem[64]
                                    mem[64] = mem[64] + 64
                                    var137002 = _1619
                                    var137003 = 2
                                    var137004 = _1619
                                    var137006 = var137006 + 32
                                    var137007 = var137007 - 1
                                    continue 
                                _1620 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[0] = _20
                                _1622 = mem[64]
                                mem[64] = mem[64] + 64
                                s = _1622
                                idx = 0
                                while idx < 2:
                                    _1692 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1692] = stor16[_20][idx].field_0
                                    mem[_1692 + 32] = stor16[_20][idx].field_256
                                    mem[s] = _1692
                                    s = s + 32
                                    idx = idx + 1
                                    continue 
                                mem[_1620] = _1622
                                mem[0] = _20
                                mem[32] = 17
                                _1691 = mem[64]
                                mem[64] = mem[64] + 64
                                s = _1691
                                idx = 0
                                while idx < 2:
                                    _1736 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1736] = stor17[_20][idx].field_0
                                    mem[_1736 + 32] = stor17[_20][idx].field_256
                                    mem[s] = _1736
                                    s = s + 32
                                    idx = idx + 1
                                    continue 
                                mem[_1620 + 32] = _1691
                                _1768 = mem[_1691]
                                _1800 = mem[mem[_1620]]
                                _1816 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1816] = 0
                                mem[_1816 + 32] = 0
                                mem[mem[64]] = mem[_1800]
                                mem[mem[64] + 32] = mem[_1800 + 32]
                                mem[mem[64] + 64] = mem[_1768]
                                mem[mem[64] + 96] = mem[_1768 + 32]
                                bn_add = bn256Add(mem[mem[64] len 128]) 
                                mem[_1816 len 64] = bn_add
                                require bn256Add.result
                                mem[0] = _20
                                mem[32] = 16
                                stor16[_20].field_0 = bn_add
                                stor16[_20].field_256 = Mask(256, -256, bn_add) << 256
                                _1976 = mem[_1691 + 32]
                                _2008 = mem[mem[_1620] + 32]
                                _2024 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2024] = 0
                                mem[_2024 + 32] = 0
                                mem[mem[64]] = mem[_2008]
                                mem[mem[64] + 32] = mem[_2008 + 32]
                                mem[mem[64] + 64] = mem[_1976]
                                mem[mem[64] + 96] = mem[_1976 + 32]
                                bn_add = bn256Add(mem[mem[64] len 128]) 
                                mem[_2024 len 64] = bn_add
                                require bn256Add.result
                                stor16[_20].field_512 = bn_add
                                stor16[_20].field_768 = Mask(256, -256, bn_add) << 256
                                stor17[_20].field_0 = 0
                                stor17[_20].field_256 = 0
                                stor17[_20].field_512 = 0
                                stor17[_20].field_768 = 0
                                mem[0] = _20
                                mem[32] = 18
                                lastRollOver[_20] = block.number / epochLength
                                if lastGlobalUpdate >= block.number / epochLength:
                                    _2216 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2216] = 0
                                    mem[_2216 + 32] = 0
                                    mem[0] = _20
                                    mem[32] = 17
                                    _2248 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2248] = stor17[_20].field_0
                                    mem[_2248 + 32] = stor17[_20].field_256
                                    _2264 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2264] = 0
                                    mem[_2264 + 32] = 0
                                    _2280 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2280] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                    mem[_2280 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                    _2321 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[mem[64] + 64] = arg3
                                    bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                    mem[_2321 len 64] = bn_scalar_mul
                                    require bn256ScalarMul.result
                                    _2440 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[mem[64]] = stor17[_20].field_0
                                    mem[mem[64] + 32] = stor17[_20].field_256
                                    mem[mem[64] + 64] = bn_scalar_mul
                                    mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                    bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                    mem[_2440 len 64] = bn_add
                                else:
                                    lastGlobalUpdate = block.number / epochLength
                                    stor19.length = 0
                                    mem[0] = 19
                                    idx = 0
                                    while stor19.length > idx:
                                        stor19[idx] = 0
                                        idx = idx + 1
                                        continue 
                                    _2968 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2968] = 0
                                    mem[_2968 + 32] = 0
                                    mem[0] = _20
                                    mem[32] = 17
                                    _3000 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3000] = stor17[_20].field_0
                                    mem[_3000 + 32] = stor17[_20].field_256
                                    _3016 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3016] = 0
                                    mem[_3016 + 32] = 0
                                    _3032 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3032] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                    mem[_3032 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                    _3048 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[mem[64] + 64] = arg3
                                    bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                    mem[_3048 len 64] = bn_scalar_mul
                                    require bn256ScalarMul.result
                                    _3112 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[mem[64]] = stor17[_20].field_0
                                    mem[mem[64] + 32] = stor17[_20].field_256
                                    mem[mem[64] + 64] = bn_scalar_mul
                                    mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                    bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                    mem[_3112 len 64] = bn_add
                        else:
                            if epochBase != 1:
                                revert with 0, 'Invalid epoch base.'
                            require epochLength
                            mem[0] = _20
                            mem[32] = 18
                            if lastRollOver[_20] >= block.timestamp / epochLength:
                                if lastGlobalUpdate >= block.timestamp / epochLength:
                                    _257 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_257] = 0
                                    mem[_257 + 32] = 0
                                    mem[0] = _20
                                    mem[32] = 17
                                    _310 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_310] = stor17[_20].field_0
                                    mem[_310 + 32] = stor17[_20].field_256
                                    _347 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_347] = 0
                                    mem[_347 + 32] = 0
                                    _369 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_369] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                    mem[_369 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                    _460 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[mem[64] + 64] = arg3
                                    bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                    mem[_460 len 64] = bn_scalar_mul
                                    require bn256ScalarMul.result
                                    _576 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[mem[64]] = stor17[_20].field_0
                                    mem[mem[64] + 32] = stor17[_20].field_256
                                    mem[mem[64] + 64] = bn_scalar_mul
                                    mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                    bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                    mem[_576 len 64] = bn_add
                                else:
                                    lastGlobalUpdate = block.timestamp / epochLength
                                    stor19.length = 0
                                    mem[0] = 19
                                    idx = 0
                                    while stor19.length > idx:
                                        stor19[idx] = 0
                                        idx = idx + 1
                                        continue 
                                    _951 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_951] = 0
                                    mem[_951 + 32] = 0
                                    mem[0] = _20
                                    mem[32] = 17
                                    _983 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_983] = stor17[_20].field_0
                                    mem[_983 + 32] = stor17[_20].field_256
                                    _999 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_999] = 0
                                    mem[_999 + 32] = 0
                                    _1015 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1015] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                    mem[_1015 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                    _1031 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[mem[64] + 64] = arg3
                                    bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                    mem[_1031 len 64] = bn_scalar_mul
                                    require bn256ScalarMul.result
                                    _1095 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[mem[64]] = stor17[_20].field_0
                                    mem[mem[64] + 32] = stor17[_20].field_256
                                    mem[mem[64] + 64] = bn_scalar_mul
                                    mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                    bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                    mem[_1095 len 64] = bn_add
                            else:
                                mem[64] = mem[64] + 64
                                mem[64] = mem[64] + 64
                                _1575 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1575] = 0
                                mem[_1575 + 32] = 0
                                mem[var139002] = _1575
                                if var139003 - 1:
                                    var139002 = var139002 + 32
                                    var139003 = var139003 - 1
                                    var139004 = var139004
                                    var139006 = var139006
                                    var139007 = var139007
                                    continue 
                                mem[var139006] = var139004
                                if var139007 - 1:
                                    _1615 = mem[64]
                                    mem[64] = mem[64] + 64
                                    var139002 = _1615
                                    var139003 = 2
                                    var139004 = _1615
                                    var139006 = var139006 + 32
                                    var139007 = var139007 - 1
                                    continue 
                                _1616 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[0] = _20
                                _1618 = mem[64]
                                mem[64] = mem[64] + 64
                                s = _1618
                                idx = 0
                                while idx < 2:
                                    _1689 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1689] = stor16[_20][idx].field_0
                                    mem[_1689 + 32] = stor16[_20][idx].field_256
                                    mem[s] = _1689
                                    s = s + 32
                                    idx = idx + 1
                                    continue 
                                mem[_1616] = _1618
                                mem[0] = _20
                                mem[32] = 17
                                _1688 = mem[64]
                                mem[64] = mem[64] + 64
                                s = _1688
                                idx = 0
                                while idx < 2:
                                    _1735 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1735] = stor17[_20][idx].field_0
                                    mem[_1735 + 32] = stor17[_20][idx].field_256
                                    mem[s] = _1735
                                    s = s + 32
                                    idx = idx + 1
                                    continue 
                                mem[_1616 + 32] = _1688
                                _1767 = mem[_1688]
                                _1799 = mem[mem[_1616]]
                                _1815 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1815] = 0
                                mem[_1815 + 32] = 0
                                mem[mem[64]] = mem[_1799]
                                mem[mem[64] + 32] = mem[_1799 + 32]
                                mem[mem[64] + 64] = mem[_1767]
                                mem[mem[64] + 96] = mem[_1767 + 32]
                                bn_add = bn256Add(mem[mem[64] len 128]) 
                                mem[_1815 len 64] = bn_add
                                require bn256Add.result
                                mem[0] = _20
                                mem[32] = 16
                                stor16[_20].field_0 = bn_add
                                stor16[_20].field_256 = Mask(256, -256, bn_add) << 256
                                _1975 = mem[_1688 + 32]
                                _2007 = mem[mem[_1616] + 32]
                                _2023 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2023] = 0
                                mem[_2023 + 32] = 0
                                mem[mem[64]] = mem[_2007]
                                mem[mem[64] + 32] = mem[_2007 + 32]
                                mem[mem[64] + 64] = mem[_1975]
                                mem[mem[64] + 96] = mem[_1975 + 32]
                                bn_add = bn256Add(mem[mem[64] len 128]) 
                                mem[_2023 len 64] = bn_add
                                require bn256Add.result
                                stor16[_20].field_512 = bn_add
                                stor16[_20].field_768 = Mask(256, -256, bn_add) << 256
                                stor17[_20].field_0 = 0
                                stor17[_20].field_256 = 0
                                stor17[_20].field_512 = 0
                                stor17[_20].field_768 = 0
                                mem[0] = _20
                                mem[32] = 18
                                lastRollOver[_20] = block.timestamp / epochLength
                                if lastGlobalUpdate >= block.timestamp / epochLength:
                                    _2215 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2215] = 0
                                    mem[_2215 + 32] = 0
                                    mem[0] = _20
                                    mem[32] = 17
                                    _2247 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2247] = stor17[_20].field_0
                                    mem[_2247 + 32] = stor17[_20].field_256
                                    _2263 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2263] = 0
                                    mem[_2263 + 32] = 0
                                    _2279 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2279] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                    mem[_2279 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                    _2319 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[mem[64] + 64] = arg3
                                    bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                    mem[_2319 len 64] = bn_scalar_mul
                                    require bn256ScalarMul.result
                                    _2439 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[mem[64]] = stor17[_20].field_0
                                    mem[mem[64] + 32] = stor17[_20].field_256
                                    mem[mem[64] + 64] = bn_scalar_mul
                                    mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                    bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                    mem[_2439 len 64] = bn_add
                                else:
                                    lastGlobalUpdate = block.timestamp / epochLength
                                    stor19.length = 0
                                    mem[0] = 19
                                    idx = 0
                                    while stor19.length > idx:
                                        stor19[idx] = 0
                                        idx = idx + 1
                                        continue 
                                    _2967 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2967] = 0
                                    mem[_2967 + 32] = 0
                                    mem[0] = _20
                                    mem[32] = 17
                                    _2999 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2999] = stor17[_20].field_0
                                    mem[_2999 + 32] = stor17[_20].field_256
                                    _3015 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3015] = 0
                                    mem[_3015 + 32] = 0
                                    _3031 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3031] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                    mem[_3031 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                    _3047 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[mem[64] + 64] = arg3
                                    bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                    mem[_3047 len 64] = bn_scalar_mul
                                    require bn256ScalarMul.result
                                    _3111 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[mem[64]] = stor17[_20].field_0
                                    mem[mem[64] + 32] = stor17[_20].field_256
                                    mem[mem[64] + 64] = bn_scalar_mul
                                    mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                    bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                    mem[_3111 len 64] = bn_add
                    else:
                        if mem[mem[_49] + 32] != mem[ceil32(arg4.length) + 384]:
                            if not epochBase:
                                require epochLength
                                mem[0] = _20
                                mem[32] = 18
                                if lastRollOver[_20] >= block.number / epochLength:
                                    if lastGlobalUpdate >= block.number / epochLength:
                                        _237 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_237] = 0
                                        mem[_237 + 32] = 0
                                        mem[0] = _20
                                        mem[32] = 17
                                        _289 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_289] = stor17[_20].field_0
                                        mem[_289 + 32] = stor17[_20].field_256
                                        _334 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_334] = 0
                                        mem[_334 + 32] = 0
                                        _348 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_348] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                        mem[_348 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                        _426 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[mem[64] + 64] = arg3
                                        bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                        mem[_426 len 64] = bn_scalar_mul
                                        require bn256ScalarMul.result
                                        _562 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[mem[64]] = stor17[_20].field_0
                                        mem[mem[64] + 32] = stor17[_20].field_256
                                        mem[mem[64] + 64] = bn_scalar_mul
                                        mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                        bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                        mem[_562 len 64] = bn_add
                                    else:
                                        lastGlobalUpdate = block.number / epochLength
                                        stor19.length = 0
                                        mem[0] = 19
                                        idx = 0
                                        while stor19.length > idx:
                                            stor19[idx] = 0
                                            idx = idx + 1
                                            continue 
                                        _954 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_954] = 0
                                        mem[_954 + 32] = 0
                                        mem[0] = _20
                                        mem[32] = 17
                                        _986 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_986] = stor17[_20].field_0
                                        mem[_986 + 32] = stor17[_20].field_256
                                        _1002 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1002] = 0
                                        mem[_1002 + 32] = 0
                                        _1018 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1018] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                        mem[_1018 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                        _1034 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[mem[64] + 64] = arg3
                                        bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                        mem[_1034 len 64] = bn_scalar_mul
                                        require bn256ScalarMul.result
                                        _1098 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[mem[64]] = stor17[_20].field_0
                                        mem[mem[64] + 32] = stor17[_20].field_256
                                        mem[mem[64] + 64] = bn_scalar_mul
                                        mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                        bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                        mem[_1098 len 64] = bn_add
                                else:
                                    mem[64] = mem[64] + 64
                                    mem[64] = mem[64] + 64
                                    _1578 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1578] = 0
                                    mem[_1578 + 32] = 0
                                    mem[var138002] = _1578
                                    if var138003 - 1:
                                        var138002 = var138002 + 32
                                        var138003 = var138003 - 1
                                        var138004 = var138004
                                        var138006 = var138006
                                        var138007 = var138007
                                        continue 
                                    mem[var138006] = var138004
                                    if var138007 - 1:
                                        _1627 = mem[64]
                                        mem[64] = mem[64] + 64
                                        var138002 = _1627
                                        var138003 = 2
                                        var138004 = _1627
                                        var138006 = var138006 + 32
                                        var138007 = var138007 - 1
                                        continue 
                                    _1628 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[0] = _20
                                    _1630 = mem[64]
                                    mem[64] = mem[64] + 64
                                    s = _1630
                                    idx = 0
                                    while idx < 2:
                                        _1698 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1698] = stor16[_20][idx].field_0
                                        mem[_1698 + 32] = stor16[_20][idx].field_256
                                        mem[s] = _1698
                                        s = s + 32
                                        idx = idx + 1
                                        continue 
                                    mem[_1628] = _1630
                                    mem[0] = _20
                                    mem[32] = 17
                                    _1697 = mem[64]
                                    mem[64] = mem[64] + 64
                                    s = _1697
                                    idx = 0
                                    while idx < 2:
                                        _1738 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1738] = stor17[_20][idx].field_0
                                        mem[_1738 + 32] = stor17[_20][idx].field_256
                                        mem[s] = _1738
                                        s = s + 32
                                        idx = idx + 1
                                        continue 
                                    mem[_1628 + 32] = _1697
                                    _1770 = mem[_1697]
                                    _1802 = mem[mem[_1628]]
                                    _1818 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1818] = 0
                                    mem[_1818 + 32] = 0
                                    mem[mem[64]] = mem[_1802]
                                    mem[mem[64] + 32] = mem[_1802 + 32]
                                    mem[mem[64] + 64] = mem[_1770]
                                    mem[mem[64] + 96] = mem[_1770 + 32]
                                    bn_add = bn256Add(mem[mem[64] len 128]) 
                                    mem[_1818 len 64] = bn_add
                                    require bn256Add.result
                                    mem[0] = _20
                                    mem[32] = 16
                                    stor16[_20].field_0 = bn_add
                                    stor16[_20].field_256 = Mask(256, -256, bn_add) << 256
                                    _1978 = mem[_1697 + 32]
                                    _2010 = mem[mem[_1628] + 32]
                                    _2026 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2026] = 0
                                    mem[_2026 + 32] = 0
                                    mem[mem[64]] = mem[_2010]
                                    mem[mem[64] + 32] = mem[_2010 + 32]
                                    mem[mem[64] + 64] = mem[_1978]
                                    mem[mem[64] + 96] = mem[_1978 + 32]
                                    bn_add = bn256Add(mem[mem[64] len 128]) 
                                    mem[_2026 len 64] = bn_add
                                    require bn256Add.result
                                    stor16[_20].field_512 = bn_add
                                    stor16[_20].field_768 = Mask(256, -256, bn_add) << 256
                                    stor17[_20].field_0 = 0
                                    stor17[_20].field_256 = 0
                                    stor17[_20].field_512 = 0
                                    stor17[_20].field_768 = 0
                                    mem[0] = _20
                                    mem[32] = 18
                                    lastRollOver[_20] = block.number / epochLength
                                    if lastGlobalUpdate >= block.number / epochLength:
                                        _2218 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2218] = 0
                                        mem[_2218 + 32] = 0
                                        mem[0] = _20
                                        mem[32] = 17
                                        _2250 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2250] = stor17[_20].field_0
                                        mem[_2250 + 32] = stor17[_20].field_256
                                        _2266 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2266] = 0
                                        mem[_2266 + 32] = 0
                                        _2282 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2282] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                        mem[_2282 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                        _2325 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[mem[64] + 64] = arg3
                                        bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                        mem[_2325 len 64] = bn_scalar_mul
                                        require bn256ScalarMul.result
                                        _2442 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[mem[64]] = stor17[_20].field_0
                                        mem[mem[64] + 32] = stor17[_20].field_256
                                        mem[mem[64] + 64] = bn_scalar_mul
                                        mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                        bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                        mem[_2442 len 64] = bn_add
                                    else:
                                        lastGlobalUpdate = block.number / epochLength
                                        stor19.length = 0
                                        mem[0] = 19
                                        idx = 0
                                        while stor19.length > idx:
                                            stor19[idx] = 0
                                            idx = idx + 1
                                            continue 
                                        _2970 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2970] = 0
                                        mem[_2970 + 32] = 0
                                        mem[0] = _20
                                        mem[32] = 17
                                        _3002 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3002] = stor17[_20].field_0
                                        mem[_3002 + 32] = stor17[_20].field_256
                                        _3018 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3018] = 0
                                        mem[_3018 + 32] = 0
                                        _3034 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3034] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                        mem[_3034 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                        _3050 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[mem[64] + 64] = arg3
                                        bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                        mem[_3050 len 64] = bn_scalar_mul
                                        require bn256ScalarMul.result
                                        _3114 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[mem[64]] = stor17[_20].field_0
                                        mem[mem[64] + 32] = stor17[_20].field_256
                                        mem[mem[64] + 64] = bn_scalar_mul
                                        mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                        bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                        mem[_3114 len 64] = bn_add
                            else:
                                if epochBase != 1:
                                    revert with 0, 'Invalid epoch base.'
                                require epochLength
                                mem[0] = _20
                                mem[32] = 18
                                if lastRollOver[_20] >= block.timestamp / epochLength:
                                    if lastGlobalUpdate >= block.timestamp / epochLength:
                                        _287 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_287] = 0
                                        mem[_287 + 32] = 0
                                        mem[0] = _20
                                        mem[32] = 17
                                        _332 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_332] = stor17[_20].field_0
                                        mem[_332 + 32] = stor17[_20].field_256
                                        _371 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_371] = 0
                                        mem[_371 + 32] = 0
                                        _394 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_394] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                        mem[_394 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                        _494 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[mem[64] + 64] = arg3
                                        bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                        mem[_494 len 64] = bn_scalar_mul
                                        require bn256ScalarMul.result
                                        _606 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[mem[64]] = stor17[_20].field_0
                                        mem[mem[64] + 32] = stor17[_20].field_256
                                        mem[mem[64] + 64] = bn_scalar_mul
                                        mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                        bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                        mem[_606 len 64] = bn_add
                                    else:
                                        lastGlobalUpdate = block.timestamp / epochLength
                                        stor19.length = 0
                                        mem[0] = 19
                                        idx = 0
                                        while stor19.length > idx:
                                            stor19[idx] = 0
                                            idx = idx + 1
                                            continue 
                                        _953 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_953] = 0
                                        mem[_953 + 32] = 0
                                        mem[0] = _20
                                        mem[32] = 17
                                        _985 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_985] = stor17[_20].field_0
                                        mem[_985 + 32] = stor17[_20].field_256
                                        _1001 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1001] = 0
                                        mem[_1001 + 32] = 0
                                        _1017 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1017] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                        mem[_1017 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                        _1033 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[mem[64] + 64] = arg3
                                        bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                        mem[_1033 len 64] = bn_scalar_mul
                                        require bn256ScalarMul.result
                                        _1097 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[mem[64]] = stor17[_20].field_0
                                        mem[mem[64] + 32] = stor17[_20].field_256
                                        mem[mem[64] + 64] = bn_scalar_mul
                                        mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                        bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                        mem[_1097 len 64] = bn_add
                                else:
                                    mem[64] = mem[64] + 64
                                    mem[64] = mem[64] + 64
                                    _1577 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1577] = 0
                                    mem[_1577 + 32] = 0
                                    mem[var140002] = _1577
                                    if var140003 - 1:
                                        var140002 = var140002 + 32
                                        var140003 = var140003 - 1
                                        var140004 = var140004
                                        var140006 = var140006
                                        var140007 = var140007
                                        continue 
                                    mem[var140006] = var140004
                                    if var140007 - 1:
                                        _1623 = mem[64]
                                        mem[64] = mem[64] + 64
                                        var140002 = _1623
                                        var140003 = 2
                                        var140004 = _1623
                                        var140006 = var140006 + 32
                                        var140007 = var140007 - 1
                                        continue 
                                    _1624 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[0] = _20
                                    _1626 = mem[64]
                                    mem[64] = mem[64] + 64
                                    s = _1626
                                    idx = 0
                                    while idx < 2:
                                        _1695 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1695] = stor16[_20][idx].field_0
                                        mem[_1695 + 32] = stor16[_20][idx].field_256
                                        mem[s] = _1695
                                        s = s + 32
                                        idx = idx + 1
                                        continue 
                                    mem[_1624] = _1626
                                    mem[0] = _20
                                    mem[32] = 17
                                    _1694 = mem[64]
                                    mem[64] = mem[64] + 64
                                    s = _1694
                                    idx = 0
                                    while idx < 2:
                                        _1737 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1737] = stor17[_20][idx].field_0
                                        mem[_1737 + 32] = stor17[_20][idx].field_256
                                        mem[s] = _1737
                                        s = s + 32
                                        idx = idx + 1
                                        continue 
                                    mem[_1624 + 32] = _1694
                                    _1769 = mem[_1694]
                                    _1801 = mem[mem[_1624]]
                                    _1817 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1817] = 0
                                    mem[_1817 + 32] = 0
                                    mem[mem[64]] = mem[_1801]
                                    mem[mem[64] + 32] = mem[_1801 + 32]
                                    mem[mem[64] + 64] = mem[_1769]
                                    mem[mem[64] + 96] = mem[_1769 + 32]
                                    bn_add = bn256Add(mem[mem[64] len 128]) 
                                    mem[_1817 len 64] = bn_add
                                    require bn256Add.result
                                    mem[0] = _20
                                    mem[32] = 16
                                    stor16[_20].field_0 = bn_add
                                    stor16[_20].field_256 = Mask(256, -256, bn_add) << 256
                                    _1977 = mem[_1694 + 32]
                                    _2009 = mem[mem[_1624] + 32]
                                    _2025 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2025] = 0
                                    mem[_2025 + 32] = 0
                                    mem[mem[64]] = mem[_2009]
                                    mem[mem[64] + 32] = mem[_2009 + 32]
                                    mem[mem[64] + 64] = mem[_1977]
                                    mem[mem[64] + 96] = mem[_1977 + 32]
                                    bn_add = bn256Add(mem[mem[64] len 128]) 
                                    mem[_2025 len 64] = bn_add
                                    require bn256Add.result
                                    stor16[_20].field_512 = bn_add
                                    stor16[_20].field_768 = Mask(256, -256, bn_add) << 256
                                    stor17[_20].field_0 = 0
                                    stor17[_20].field_256 = 0
                                    stor17[_20].field_512 = 0
                                    stor17[_20].field_768 = 0
                                    mem[0] = _20
                                    mem[32] = 18
                                    lastRollOver[_20] = block.timestamp / epochLength
                                    if lastGlobalUpdate >= block.timestamp / epochLength:
                                        _2217 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2217] = 0
                                        mem[_2217 + 32] = 0
                                        mem[0] = _20
                                        mem[32] = 17
                                        _2249 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2249] = stor17[_20].field_0
                                        mem[_2249 + 32] = stor17[_20].field_256
                                        _2265 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2265] = 0
                                        mem[_2265 + 32] = 0
                                        _2281 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2281] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                        mem[_2281 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                        _2323 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[mem[64] + 64] = arg3
                                        bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                        mem[_2323 len 64] = bn_scalar_mul
                                        require bn256ScalarMul.result
                                        _2441 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[mem[64]] = stor17[_20].field_0
                                        mem[mem[64] + 32] = stor17[_20].field_256
                                        mem[mem[64] + 64] = bn_scalar_mul
                                        mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                        bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                        mem[_2441 len 64] = bn_add
                                    else:
                                        lastGlobalUpdate = block.timestamp / epochLength
                                        stor19.length = 0
                                        mem[0] = 19
                                        idx = 0
                                        while stor19.length > idx:
                                            stor19[idx] = 0
                                            idx = idx + 1
                                            continue 
                                        _2969 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2969] = 0
                                        mem[_2969 + 32] = 0
                                        mem[0] = _20
                                        mem[32] = 17
                                        _3001 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3001] = stor17[_20].field_0
                                        mem[_3001 + 32] = stor17[_20].field_256
                                        _3017 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3017] = 0
                                        mem[_3017 + 32] = 0
                                        _3033 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3033] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                        mem[_3033 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                        _3049 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[mem[64] + 64] = arg3
                                        bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                        mem[_3049 len 64] = bn_scalar_mul
                                        require bn256ScalarMul.result
                                        _3113 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[mem[64]] = stor17[_20].field_0
                                        mem[mem[64] + 32] = stor17[_20].field_256
                                        mem[mem[64] + 64] = bn_scalar_mul
                                        mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                        bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                        mem[_3113 len 64] = bn_add
                        else:
                            if mem[mem[_49 + 32]] != mem[ceil32(arg4.length) + 352]:
                                if not epochBase:
                                    require epochLength
                                    mem[0] = _20
                                    mem[32] = 18
                                    if lastRollOver[_20] >= block.number / epochLength:
                                        if lastGlobalUpdate >= block.number / epochLength:
                                            _373 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_373] = 0
                                            mem[_373 + 32] = 0
                                            mem[0] = _20
                                            mem[32] = 17
                                            _430 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_430] = stor17[_20].field_0
                                            mem[_430 + 32] = stor17[_20].field_256
                                            _498 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_498] = 0
                                            mem[_498 + 32] = 0
                                            _523 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_523] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                            mem[_523 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                            _584 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64] + 64] = arg3
                                            bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                            mem[_584 len 64] = bn_scalar_mul
                                            require bn256ScalarMul.result
                                            _710 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64]] = stor17[_20].field_0
                                            mem[mem[64] + 32] = stor17[_20].field_256
                                            mem[mem[64] + 64] = bn_scalar_mul
                                            mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                            bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                            mem[_710 len 64] = bn_add
                                        else:
                                            lastGlobalUpdate = block.number / epochLength
                                            stor19.length = 0
                                            mem[0] = 19
                                            idx = 0
                                            while stor19.length > idx:
                                                stor19[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            _956 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_956] = 0
                                            mem[_956 + 32] = 0
                                            mem[0] = _20
                                            mem[32] = 17
                                            _988 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_988] = stor17[_20].field_0
                                            mem[_988 + 32] = stor17[_20].field_256
                                            _1004 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1004] = 0
                                            mem[_1004 + 32] = 0
                                            _1020 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1020] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                            mem[_1020 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                            _1036 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64] + 64] = arg3
                                            bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                            mem[_1036 len 64] = bn_scalar_mul
                                            require bn256ScalarMul.result
                                            _1100 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64]] = stor17[_20].field_0
                                            mem[mem[64] + 32] = stor17[_20].field_256
                                            mem[mem[64] + 64] = bn_scalar_mul
                                            mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                            bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                            mem[_1100 len 64] = bn_add
                                    else:
                                        mem[64] = mem[64] + 64
                                        mem[64] = mem[64] + 64
                                        _1580 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1580] = 0
                                        mem[_1580 + 32] = 0
                                        mem[var144002] = _1580
                                        if var144003 - 1:
                                            var144002 = var144002 + 32
                                            var144003 = var144003 - 1
                                            var144004 = var144004
                                            var144006 = var144006
                                            var144007 = var144007
                                            continue 
                                        mem[var144006] = var144004
                                        if var144007 - 1:
                                            _1635 = mem[64]
                                            mem[64] = mem[64] + 64
                                            var144002 = _1635
                                            var144003 = 2
                                            var144004 = _1635
                                            var144006 = var144006 + 32
                                            var144007 = var144007 - 1
                                            continue 
                                        _1636 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[0] = _20
                                        _1638 = mem[64]
                                        mem[64] = mem[64] + 64
                                        s = _1638
                                        idx = 0
                                        while idx < 2:
                                            _1704 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1704] = stor16[_20][idx].field_0
                                            mem[_1704 + 32] = stor16[_20][idx].field_256
                                            mem[s] = _1704
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                                        mem[_1636] = _1638
                                        mem[0] = _20
                                        mem[32] = 17
                                        _1703 = mem[64]
                                        mem[64] = mem[64] + 64
                                        s = _1703
                                        idx = 0
                                        while idx < 2:
                                            _1740 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1740] = stor17[_20][idx].field_0
                                            mem[_1740 + 32] = stor17[_20][idx].field_256
                                            mem[s] = _1740
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                                        mem[_1636 + 32] = _1703
                                        _1772 = mem[_1703]
                                        _1804 = mem[mem[_1636]]
                                        _1820 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1820] = 0
                                        mem[_1820 + 32] = 0
                                        mem[mem[64]] = mem[_1804]
                                        mem[mem[64] + 32] = mem[_1804 + 32]
                                        mem[mem[64] + 64] = mem[_1772]
                                        mem[mem[64] + 96] = mem[_1772 + 32]
                                        bn_add = bn256Add(mem[mem[64] len 128]) 
                                        mem[_1820 len 64] = bn_add
                                        require bn256Add.result
                                        mem[0] = _20
                                        mem[32] = 16
                                        stor16[_20].field_0 = bn_add
                                        stor16[_20].field_256 = Mask(256, -256, bn_add) << 256
                                        _1980 = mem[_1703 + 32]
                                        _2012 = mem[mem[_1636] + 32]
                                        _2028 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2028] = 0
                                        mem[_2028 + 32] = 0
                                        mem[mem[64]] = mem[_2012]
                                        mem[mem[64] + 32] = mem[_2012 + 32]
                                        mem[mem[64] + 64] = mem[_1980]
                                        mem[mem[64] + 96] = mem[_1980 + 32]
                                        bn_add = bn256Add(mem[mem[64] len 128]) 
                                        mem[_2028 len 64] = bn_add
                                        require bn256Add.result
                                        stor16[_20].field_512 = bn_add
                                        stor16[_20].field_768 = Mask(256, -256, bn_add) << 256
                                        stor17[_20].field_0 = 0
                                        stor17[_20].field_256 = 0
                                        stor17[_20].field_512 = 0
                                        stor17[_20].field_768 = 0
                                        mem[0] = _20
                                        mem[32] = 18
                                        lastRollOver[_20] = block.number / epochLength
                                        if lastGlobalUpdate >= block.number / epochLength:
                                            _2220 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2220] = 0
                                            mem[_2220 + 32] = 0
                                            mem[0] = _20
                                            mem[32] = 17
                                            _2252 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2252] = stor17[_20].field_0
                                            mem[_2252 + 32] = stor17[_20].field_256
                                            _2268 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2268] = 0
                                            mem[_2268 + 32] = 0
                                            _2284 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2284] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                            mem[_2284 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                            _2329 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64] + 64] = arg3
                                            bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                            mem[_2329 len 64] = bn_scalar_mul
                                            require bn256ScalarMul.result
                                            _2444 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64]] = stor17[_20].field_0
                                            mem[mem[64] + 32] = stor17[_20].field_256
                                            mem[mem[64] + 64] = bn_scalar_mul
                                            mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                            bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                            mem[_2444 len 64] = bn_add
                                        else:
                                            lastGlobalUpdate = block.number / epochLength
                                            stor19.length = 0
                                            mem[0] = 19
                                            idx = 0
                                            while stor19.length > idx:
                                                stor19[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            _2972 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2972] = 0
                                            mem[_2972 + 32] = 0
                                            mem[0] = _20
                                            mem[32] = 17
                                            _3004 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3004] = stor17[_20].field_0
                                            mem[_3004 + 32] = stor17[_20].field_256
                                            _3020 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3020] = 0
                                            mem[_3020 + 32] = 0
                                            _3036 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3036] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                            mem[_3036 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                            _3052 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64] + 64] = arg3
                                            bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                            mem[_3052 len 64] = bn_scalar_mul
                                            require bn256ScalarMul.result
                                            _3116 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64]] = stor17[_20].field_0
                                            mem[mem[64] + 32] = stor17[_20].field_256
                                            mem[mem[64] + 64] = bn_scalar_mul
                                            mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                            bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                            mem[_3116 len 64] = bn_add
                                else:
                                    if epochBase != 1:
                                        revert with 0, 'Invalid epoch base.'
                                    require epochLength
                                    mem[0] = _20
                                    mem[32] = 18
                                    if lastRollOver[_20] >= block.timestamp / epochLength:
                                        if lastGlobalUpdate >= block.timestamp / epochLength:
                                            _428 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_428] = 0
                                            mem[_428 + 32] = 0
                                            mem[0] = _20
                                            mem[32] = 17
                                            _496 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_496] = stor17[_20].field_0
                                            mem[_496 + 32] = stor17[_20].field_256
                                            _543 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_543] = 0
                                            mem[_543 + 32] = 0
                                            _563 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_563] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                            mem[_563 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                            _641 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64] + 64] = arg3
                                            bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                            mem[_641 len 64] = bn_scalar_mul
                                            require bn256ScalarMul.result
                                            _740 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64]] = stor17[_20].field_0
                                            mem[mem[64] + 32] = stor17[_20].field_256
                                            mem[mem[64] + 64] = bn_scalar_mul
                                            mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                            bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                            mem[_740 len 64] = bn_add
                                        else:
                                            lastGlobalUpdate = block.timestamp / epochLength
                                            stor19.length = 0
                                            mem[0] = 19
                                            idx = 0
                                            while stor19.length > idx:
                                                stor19[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            _955 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_955] = 0
                                            mem[_955 + 32] = 0
                                            mem[0] = _20
                                            mem[32] = 17
                                            _987 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_987] = stor17[_20].field_0
                                            mem[_987 + 32] = stor17[_20].field_256
                                            _1003 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1003] = 0
                                            mem[_1003 + 32] = 0
                                            _1019 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1019] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                            mem[_1019 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                            _1035 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64] + 64] = arg3
                                            bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                            mem[_1035 len 64] = bn_scalar_mul
                                            require bn256ScalarMul.result
                                            _1099 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64]] = stor17[_20].field_0
                                            mem[mem[64] + 32] = stor17[_20].field_256
                                            mem[mem[64] + 64] = bn_scalar_mul
                                            mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                            bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                            mem[_1099 len 64] = bn_add
                                    else:
                                        mem[64] = mem[64] + 64
                                        mem[64] = mem[64] + 64
                                        _1579 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1579] = 0
                                        mem[_1579 + 32] = 0
                                        mem[var146002] = _1579
                                        if var146003 - 1:
                                            var146002 = var146002 + 32
                                            var146003 = var146003 - 1
                                            var146004 = var146004
                                            var146006 = var146006
                                            var146007 = var146007
                                            continue 
                                        mem[var146006] = var146004
                                        if var146007 - 1:
                                            _1631 = mem[64]
                                            mem[64] = mem[64] + 64
                                            var146002 = _1631
                                            var146003 = 2
                                            var146004 = _1631
                                            var146006 = var146006 + 32
                                            var146007 = var146007 - 1
                                            continue 
                                        _1632 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[0] = _20
                                        _1634 = mem[64]
                                        mem[64] = mem[64] + 64
                                        s = _1634
                                        idx = 0
                                        while idx < 2:
                                            _1701 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1701] = stor16[_20][idx].field_0
                                            mem[_1701 + 32] = stor16[_20][idx].field_256
                                            mem[s] = _1701
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                                        mem[_1632] = _1634
                                        mem[0] = _20
                                        mem[32] = 17
                                        _1700 = mem[64]
                                        mem[64] = mem[64] + 64
                                        s = _1700
                                        idx = 0
                                        while idx < 2:
                                            _1739 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1739] = stor17[_20][idx].field_0
                                            mem[_1739 + 32] = stor17[_20][idx].field_256
                                            mem[s] = _1739
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                                        mem[_1632 + 32] = _1700
                                        _1771 = mem[_1700]
                                        _1803 = mem[mem[_1632]]
                                        _1819 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1819] = 0
                                        mem[_1819 + 32] = 0
                                        mem[mem[64]] = mem[_1803]
                                        mem[mem[64] + 32] = mem[_1803 + 32]
                                        mem[mem[64] + 64] = mem[_1771]
                                        mem[mem[64] + 96] = mem[_1771 + 32]
                                        bn_add = bn256Add(mem[mem[64] len 128]) 
                                        mem[_1819 len 64] = bn_add
                                        require bn256Add.result
                                        mem[0] = _20
                                        mem[32] = 16
                                        stor16[_20].field_0 = bn_add
                                        stor16[_20].field_256 = Mask(256, -256, bn_add) << 256
                                        _1979 = mem[_1700 + 32]
                                        _2011 = mem[mem[_1632] + 32]
                                        _2027 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2027] = 0
                                        mem[_2027 + 32] = 0
                                        mem[mem[64]] = mem[_2011]
                                        mem[mem[64] + 32] = mem[_2011 + 32]
                                        mem[mem[64] + 64] = mem[_1979]
                                        mem[mem[64] + 96] = mem[_1979 + 32]
                                        bn_add = bn256Add(mem[mem[64] len 128]) 
                                        mem[_2027 len 64] = bn_add
                                        require bn256Add.result
                                        stor16[_20].field_512 = bn_add
                                        stor16[_20].field_768 = Mask(256, -256, bn_add) << 256
                                        stor17[_20].field_0 = 0
                                        stor17[_20].field_256 = 0
                                        stor17[_20].field_512 = 0
                                        stor17[_20].field_768 = 0
                                        mem[0] = _20
                                        mem[32] = 18
                                        lastRollOver[_20] = block.timestamp / epochLength
                                        if lastGlobalUpdate >= block.timestamp / epochLength:
                                            _2219 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2219] = 0
                                            mem[_2219 + 32] = 0
                                            mem[0] = _20
                                            mem[32] = 17
                                            _2251 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2251] = stor17[_20].field_0
                                            mem[_2251 + 32] = stor17[_20].field_256
                                            _2267 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2267] = 0
                                            mem[_2267 + 32] = 0
                                            _2283 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2283] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                            mem[_2283 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                            _2327 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64] + 64] = arg3
                                            bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                            mem[_2327 len 64] = bn_scalar_mul
                                            require bn256ScalarMul.result
                                            _2443 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64]] = stor17[_20].field_0
                                            mem[mem[64] + 32] = stor17[_20].field_256
                                            mem[mem[64] + 64] = bn_scalar_mul
                                            mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                            bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                            mem[_2443 len 64] = bn_add
                                        else:
                                            lastGlobalUpdate = block.timestamp / epochLength
                                            stor19.length = 0
                                            mem[0] = 19
                                            idx = 0
                                            while stor19.length > idx:
                                                stor19[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            _2971 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2971] = 0
                                            mem[_2971 + 32] = 0
                                            mem[0] = _20
                                            mem[32] = 17
                                            _3003 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3003] = stor17[_20].field_0
                                            mem[_3003 + 32] = stor17[_20].field_256
                                            _3019 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3019] = 0
                                            mem[_3019 + 32] = 0
                                            _3035 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3035] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                            mem[_3035 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                            _3051 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64] + 64] = arg3
                                            bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                            mem[_3051 len 64] = bn_scalar_mul
                                            require bn256ScalarMul.result
                                            _3115 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64]] = stor17[_20].field_0
                                            mem[mem[64] + 32] = stor17[_20].field_256
                                            mem[mem[64] + 64] = bn_scalar_mul
                                            mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                            bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                            mem[_3115 len 64] = bn_add
                            else:
                                if mem[mem[_49 + 32] + 32] == mem[ceil32(arg4.length) + 384]:
                                    revert with 0, 'Account not yet registered.'
                                if not epochBase:
                                    require epochLength
                                    mem[0] = _20
                                    mem[32] = 18
                                    if lastRollOver[_20] >= block.number / epochLength:
                                        if lastGlobalUpdate >= block.number / epochLength:
                                            _400 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_400] = 0
                                            mem[_400 + 32] = 0
                                            mem[0] = _20
                                            mem[32] = 17
                                            _470 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_470] = stor17[_20].field_0
                                            mem[_470 + 32] = stor17[_20].field_256
                                            _526 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_526] = 0
                                            mem[_526 + 32] = 0
                                            _544 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_544] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                            mem[_544 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                            _613 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64] + 64] = arg3
                                            bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                            mem[_613 len 64] = bn_scalar_mul
                                            require bn256ScalarMul.result
                                            _729 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64]] = stor17[_20].field_0
                                            mem[mem[64] + 32] = stor17[_20].field_256
                                            mem[mem[64] + 64] = bn_scalar_mul
                                            mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                            bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                            mem[_729 len 64] = bn_add
                                        else:
                                            lastGlobalUpdate = block.number / epochLength
                                            stor19.length = 0
                                            mem[0] = 19
                                            idx = 0
                                            while stor19.length > idx:
                                                stor19[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            _958 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_958] = 0
                                            mem[_958 + 32] = 0
                                            mem[0] = _20
                                            mem[32] = 17
                                            _990 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_990] = stor17[_20].field_0
                                            mem[_990 + 32] = stor17[_20].field_256
                                            _1006 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1006] = 0
                                            mem[_1006 + 32] = 0
                                            _1022 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1022] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                            mem[_1022 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                            _1038 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64] + 64] = arg3
                                            bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                            mem[_1038 len 64] = bn_scalar_mul
                                            require bn256ScalarMul.result
                                            _1102 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64]] = stor17[_20].field_0
                                            mem[mem[64] + 32] = stor17[_20].field_256
                                            mem[mem[64] + 64] = bn_scalar_mul
                                            mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                            bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                            mem[_1102 len 64] = bn_add
                                    else:
                                        mem[64] = mem[64] + 64
                                        mem[64] = mem[64] + 64
                                        _1582 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1582] = 0
                                        mem[_1582 + 32] = 0
                                        mem[var145002] = _1582
                                        if var145003 - 1:
                                            var145002 = var145002 + 32
                                            var145003 = var145003 - 1
                                            var145004 = var145004
                                            var145006 = var145006
                                            var145007 = var145007
                                            continue 
                                        mem[var145006] = var145004
                                        if var145007 - 1:
                                            _1643 = mem[64]
                                            mem[64] = mem[64] + 64
                                            var145002 = _1643
                                            var145003 = 2
                                            var145004 = _1643
                                            var145006 = var145006 + 32
                                            var145007 = var145007 - 1
                                            continue 
                                        _1644 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[0] = _20
                                        _1646 = mem[64]
                                        mem[64] = mem[64] + 64
                                        s = _1646
                                        idx = 0
                                        while idx < 2:
                                            _1710 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1710] = stor16[_20][idx].field_0
                                            mem[_1710 + 32] = stor16[_20][idx].field_256
                                            mem[s] = _1710
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                                        mem[_1644] = _1646
                                        mem[0] = _20
                                        mem[32] = 17
                                        _1709 = mem[64]
                                        mem[64] = mem[64] + 64
                                        s = _1709
                                        idx = 0
                                        while idx < 2:
                                            _1742 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1742] = stor17[_20][idx].field_0
                                            mem[_1742 + 32] = stor17[_20][idx].field_256
                                            mem[s] = _1742
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                                        mem[_1644 + 32] = _1709
                                        _1774 = mem[_1709]
                                        _1806 = mem[mem[_1644]]
                                        _1822 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1822] = 0
                                        mem[_1822 + 32] = 0
                                        mem[mem[64]] = mem[_1806]
                                        mem[mem[64] + 32] = mem[_1806 + 32]
                                        mem[mem[64] + 64] = mem[_1774]
                                        mem[mem[64] + 96] = mem[_1774 + 32]
                                        bn_add = bn256Add(mem[mem[64] len 128]) 
                                        mem[_1822 len 64] = bn_add
                                        require bn256Add.result
                                        mem[0] = _20
                                        mem[32] = 16
                                        stor16[_20].field_0 = bn_add
                                        stor16[_20].field_256 = Mask(256, -256, bn_add) << 256
                                        _1982 = mem[_1709 + 32]
                                        _2014 = mem[mem[_1644] + 32]
                                        _2030 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2030] = 0
                                        mem[_2030 + 32] = 0
                                        mem[mem[64]] = mem[_2014]
                                        mem[mem[64] + 32] = mem[_2014 + 32]
                                        mem[mem[64] + 64] = mem[_1982]
                                        mem[mem[64] + 96] = mem[_1982 + 32]
                                        bn_add = bn256Add(mem[mem[64] len 128]) 
                                        mem[_2030 len 64] = bn_add
                                        require bn256Add.result
                                        stor16[_20].field_512 = bn_add
                                        stor16[_20].field_768 = Mask(256, -256, bn_add) << 256
                                        stor17[_20].field_0 = 0
                                        stor17[_20].field_256 = 0
                                        stor17[_20].field_512 = 0
                                        stor17[_20].field_768 = 0
                                        mem[0] = _20
                                        mem[32] = 18
                                        lastRollOver[_20] = block.number / epochLength
                                        if lastGlobalUpdate >= block.number / epochLength:
                                            _2222 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2222] = 0
                                            mem[_2222 + 32] = 0
                                            mem[0] = _20
                                            mem[32] = 17
                                            _2254 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2254] = stor17[_20].field_0
                                            mem[_2254 + 32] = stor17[_20].field_256
                                            _2270 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2270] = 0
                                            mem[_2270 + 32] = 0
                                            _2286 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2286] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                            mem[_2286 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                            _2333 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64] + 64] = arg3
                                            bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                            mem[_2333 len 64] = bn_scalar_mul
                                            require bn256ScalarMul.result
                                            _2446 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64]] = stor17[_20].field_0
                                            mem[mem[64] + 32] = stor17[_20].field_256
                                            mem[mem[64] + 64] = bn_scalar_mul
                                            mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                            bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                            mem[_2446 len 64] = bn_add
                                        else:
                                            lastGlobalUpdate = block.number / epochLength
                                            stor19.length = 0
                                            mem[0] = 19
                                            idx = 0
                                            while stor19.length > idx:
                                                stor19[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            _2974 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2974] = 0
                                            mem[_2974 + 32] = 0
                                            mem[0] = _20
                                            mem[32] = 17
                                            _3006 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3006] = stor17[_20].field_0
                                            mem[_3006 + 32] = stor17[_20].field_256
                                            _3022 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3022] = 0
                                            mem[_3022 + 32] = 0
                                            _3038 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3038] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                            mem[_3038 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                            _3054 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64] + 64] = arg3
                                            bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                            mem[_3054 len 64] = bn_scalar_mul
                                            require bn256ScalarMul.result
                                            _3118 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64]] = stor17[_20].field_0
                                            mem[mem[64] + 32] = stor17[_20].field_256
                                            mem[mem[64] + 64] = bn_scalar_mul
                                            mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                            bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                            mem[_3118 len 64] = bn_add
                                else:
                                    if epochBase != 1:
                                        revert with 0, 'Invalid epoch base.'
                                    require epochLength
                                    mem[0] = _20
                                    mem[32] = 18
                                    if lastRollOver[_20] >= block.timestamp / epochLength:
                                        if lastGlobalUpdate >= block.timestamp / epochLength:
                                            _468 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_468] = 0
                                            mem[_468 + 32] = 0
                                            mem[0] = _20
                                            mem[32] = 17
                                            _524 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_524] = stor17[_20].field_0
                                            mem[_524 + 32] = stor17[_20].field_256
                                            _565 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_565] = 0
                                            mem[_565 + 32] = 0
                                            _586 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_586] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                            mem[_586 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                            _671 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64] + 64] = arg3
                                            bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                            mem[_671 len 64] = bn_scalar_mul
                                            require bn256ScalarMul.result
                                            _766 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64]] = stor17[_20].field_0
                                            mem[mem[64] + 32] = stor17[_20].field_256
                                            mem[mem[64] + 64] = bn_scalar_mul
                                            mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                            bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                            mem[_766 len 64] = bn_add
                                        else:
                                            lastGlobalUpdate = block.timestamp / epochLength
                                            stor19.length = 0
                                            mem[0] = 19
                                            idx = 0
                                            while stor19.length > idx:
                                                stor19[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            _957 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_957] = 0
                                            mem[_957 + 32] = 0
                                            mem[0] = _20
                                            mem[32] = 17
                                            _989 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_989] = stor17[_20].field_0
                                            mem[_989 + 32] = stor17[_20].field_256
                                            _1005 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1005] = 0
                                            mem[_1005 + 32] = 0
                                            _1021 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1021] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                            mem[_1021 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                            _1037 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64] + 64] = arg3
                                            bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                            mem[_1037 len 64] = bn_scalar_mul
                                            require bn256ScalarMul.result
                                            _1101 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64]] = stor17[_20].field_0
                                            mem[mem[64] + 32] = stor17[_20].field_256
                                            mem[mem[64] + 64] = bn_scalar_mul
                                            mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                            bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                            mem[_1101 len 64] = bn_add
                                    else:
                                        mem[64] = mem[64] + 64
                                        mem[64] = mem[64] + 64
                                        _1581 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1581] = 0
                                        mem[_1581 + 32] = 0
                                        mem[var147002] = _1581
                                        if var147003 - 1:
                                            var147002 = var147002 + 32
                                            var147003 = var147003 - 1
                                            var147004 = var147004
                                            var147006 = var147006
                                            var147007 = var147007
                                            continue 
                                        mem[var147006] = var147004
                                        if var147007 - 1:
                                            _1639 = mem[64]
                                            mem[64] = mem[64] + 64
                                            var147002 = _1639
                                            var147003 = 2
                                            var147004 = _1639
                                            var147006 = var147006 + 32
                                            var147007 = var147007 - 1
                                            continue 
                                        _1640 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[0] = _20
                                        _1642 = mem[64]
                                        mem[64] = mem[64] + 64
                                        s = _1642
                                        idx = 0
                                        while idx < 2:
                                            _1707 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1707] = stor16[_20][idx].field_0
                                            mem[_1707 + 32] = stor16[_20][idx].field_256
                                            mem[s] = _1707
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                                        mem[_1640] = _1642
                                        mem[0] = _20
                                        mem[32] = 17
                                        _1706 = mem[64]
                                        mem[64] = mem[64] + 64
                                        s = _1706
                                        idx = 0
                                        while idx < 2:
                                            _1741 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1741] = stor17[_20][idx].field_0
                                            mem[_1741 + 32] = stor17[_20][idx].field_256
                                            mem[s] = _1741
                                            s = s + 32
                                            idx = idx + 1
                                            continue 
                                        mem[_1640 + 32] = _1706
                                        _1773 = mem[_1706]
                                        _1805 = mem[mem[_1640]]
                                        _1821 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1821] = 0
                                        mem[_1821 + 32] = 0
                                        mem[mem[64]] = mem[_1805]
                                        mem[mem[64] + 32] = mem[_1805 + 32]
                                        mem[mem[64] + 64] = mem[_1773]
                                        mem[mem[64] + 96] = mem[_1773 + 32]
                                        bn_add = bn256Add(mem[mem[64] len 128]) 
                                        mem[_1821 len 64] = bn_add
                                        require bn256Add.result
                                        mem[0] = _20
                                        mem[32] = 16
                                        stor16[_20].field_0 = bn_add
                                        stor16[_20].field_256 = Mask(256, -256, bn_add) << 256
                                        _1981 = mem[_1706 + 32]
                                        _2013 = mem[mem[_1640] + 32]
                                        _2029 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2029] = 0
                                        mem[_2029 + 32] = 0
                                        mem[mem[64]] = mem[_2013]
                                        mem[mem[64] + 32] = mem[_2013 + 32]
                                        mem[mem[64] + 64] = mem[_1981]
                                        mem[mem[64] + 96] = mem[_1981 + 32]
                                        bn_add = bn256Add(mem[mem[64] len 128]) 
                                        mem[_2029 len 64] = bn_add
                                        require bn256Add.result
                                        stor16[_20].field_512 = bn_add
                                        stor16[_20].field_768 = Mask(256, -256, bn_add) << 256
                                        stor17[_20].field_0 = 0
                                        stor17[_20].field_256 = 0
                                        stor17[_20].field_512 = 0
                                        stor17[_20].field_768 = 0
                                        mem[0] = _20
                                        mem[32] = 18
                                        lastRollOver[_20] = block.timestamp / epochLength
                                        if lastGlobalUpdate >= block.timestamp / epochLength:
                                            _2221 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2221] = 0
                                            mem[_2221 + 32] = 0
                                            mem[0] = _20
                                            mem[32] = 17
                                            _2253 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2253] = stor17[_20].field_0
                                            mem[_2253 + 32] = stor17[_20].field_256
                                            _2269 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2269] = 0
                                            mem[_2269 + 32] = 0
                                            _2285 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2285] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                            mem[_2285 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                            _2331 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64] + 64] = arg3
                                            bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                            mem[_2331 len 64] = bn_scalar_mul
                                            require bn256ScalarMul.result
                                            _2445 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64]] = stor17[_20].field_0
                                            mem[mem[64] + 32] = stor17[_20].field_256
                                            mem[mem[64] + 64] = bn_scalar_mul
                                            mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                            bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                            mem[_2445 len 64] = bn_add
                                        else:
                                            lastGlobalUpdate = block.timestamp / epochLength
                                            stor19.length = 0
                                            mem[0] = 19
                                            idx = 0
                                            while stor19.length > idx:
                                                stor19[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            _2973 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2973] = 0
                                            mem[_2973 + 32] = 0
                                            mem[0] = _20
                                            mem[32] = 17
                                            _3005 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3005] = stor17[_20].field_0
                                            mem[_3005 + 32] = stor17[_20].field_256
                                            _3021 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3021] = 0
                                            mem[_3021 + 32] = 0
                                            _3037 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3037] = 0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4
                                            mem[_3037 + 32] = 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875
                                            _3053 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64] + 64] = arg3
                                            bn_scalar_mul = bn256ScalarMul(0x77da99d806abd13c9f15ece5398525119d11e11e9836b2ee7d23f6159ad87d4, 0x1485efa927f2ad41bff567eec88f32fb0a0f706588b4e41a8d587d008b7f875, arg3) 
                                            mem[_3053 len 64] = bn_scalar_mul
                                            require bn256ScalarMul.result
                                            _3117 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[mem[64]] = stor17[_20].field_0
                                            mem[mem[64] + 32] = stor17[_20].field_256
                                            mem[mem[64] + 64] = bn_scalar_mul
                                            mem[mem[64] + 96] = Mask(256, -256, bn_scalar_mul) << 256
                                            bn_add = bn256Add(stor17[_20].field_0, stor17[_20].field_256, bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256) 
                                            mem[_3117 len 64] = bn_add
    require bn256Add.result
    stor17[_20].field_0 = bn_add
    stor17[_20].field_256 = Mask(256, -256, bn_add) << 256
    sub_a9b05a56[_20][] = Array(len=mem[160], data=mem[192 len mem[160]])
}



}
