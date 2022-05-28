contract main {




// =====================  Runtime code  =====================


#
#  - sub_27a2caec(?)
#  - sub_31983366(?)
#
const sub_d56a9782(?) = 0x726cc96215520a07a8f8e0fe476c027c6c44853185ef22ddac273ab1c037ca43

const sub_f1514f12(?) = 0x27c08a1671399b6816045d86602ffa6404f756deddc6a5a58270d7c7668d5eb8

const sub_fde0bc88(?) = 0xf07509fef34129b14f4ce0f007b4be584648c2bd95e04e79cb2992334712d9d


mapping of uint8 stor0;
array of address stor1;
array of struct stor3;
array of struct stor4;
mapping of uint256 stor5;
array of struct stor6;
mapping of address proxies;

function isOpen() {
    return bool(uint8(stor1.length))
}

function isController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[address(arg1)])
}

function proxies(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return proxies[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_b8f27b91(?) {
    require calldata.size - 4 >= 32
    if not stor6.length:
        return 0
    if stor5[arg1] >= stor6.length:
        revert with 0, 50
    return (stor6[stor5[arg1]].field_0 == arg1)
}

function relinquishControl() {
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor0[msg.sender] = 0
}

function addController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor0[address(arg1)] = 1
}

function setOpenState(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    uint8(stor1.length) = uint8(arg1)
    emit 0xc1d88cff: bool(uint8(arg1))
}

function sub_e0c8f573(?) {
    if stor6.length:
        mem[128] = uint256(stor6.field_0)
        idx = 128
        s = 0
        while (32 * stor6.length) + 96 > idx:
            mem[idx + 32] = stor6[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor6.length, data=mem[128 len 32 * stor6.length])
    mem[(32 * stor6.length) + 128] = 32
    mem[(32 * stor6.length) + 160] = stor6.length
    mem[(32 * stor6.length) + 192 len 32 * stor6.length] = mem[128 len 32 * stor6.length]
    return memory
      from (32 * stor6.length) + 128
       len (96 * stor6.length) + 64
}

function withdrawFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    if not eth.balance(this.address):
        revert with 0, 'no fees to withdraw'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x2733937f: address(arg1), eth.balance(this.address)
}

function getOffer(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor6.length:
        revert with 0, 'offer not registered'
    if stor5[arg1] >= stor6.length:
        revert with 0, 50
    if stor6[stor5[arg1]].field_0 != arg1:
        revert with 0, 'offer not registered'
    if stor3[arg1].field_1024:
        mem[832] = address(stor3[arg1][4].field_0)
        idx = 832
        s = 0
        while (32 * stor3[arg1].field_1024) + 800 > idx:
            mem[idx + 32] = address(stor3[arg1][s + 4].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor3[arg1].field_1024) + 832] = stor3[arg1].field_1280
    if not stor3[arg1].field_1280:
        if stor3[arg1].field_1536:
            mem[(32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + 896] = stor3[arg1][6].field_0
            idx = (32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + 896
            s = 0
            while (32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 864 > idx:
                mem[idx + 32] = stor3[arg1][s + 6].field_256
                idx = idx + 32
                s = s + 1
                continue 
    else:
        mem[(32 * stor3[arg1].field_1024) + 864] = stor3[arg1][5].field_0
        idx = (32 * stor3[arg1].field_1024) + 864
        s = 0
        while (32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + 832 > idx:
            mem[idx + 32] = stor3[arg1][s + 5].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor3[arg1].field_1536:
            mem[(32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + 896] = stor3[arg1][6].field_0
            idx = (32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + 896
            s = 0
            while (32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 864 > idx:
                mem[idx + 32] = stor3[arg1][s + 6].field_256
                idx = idx + 32
                s = s + 1
                continue 
            idx = 0
            s = 832
            t = (32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 1312
            while idx < stor3[arg1].field_1024:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(64 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 1312] = stor3[arg1].field_1280
            mem[(64 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 1344 len 32 * stor3[arg1].field_1280] = mem[(32 * stor3[arg1].field_1024) + 864 len 32 * stor3[arg1].field_1280]
            mem[(64 * stor3[arg1].field_1024) + (64 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 1344] = stor3[arg1].field_1536
            mem[(64 * stor3[arg1].field_1024) + (64 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 1376 len 32 * stor3[arg1].field_1536] = mem[(32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + 896 len 32 * stor3[arg1].field_1536]
            return 32, address(stor3[arg1].field_0), 
                   address(stor3[arg1].field_256),
                   stor3[arg1].field_512,
                   stor3[arg1].field_768,
                   352,
                   (32 * stor3[arg1].field_1024) + 384,
                   (32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + 416,
                   stor3[arg1].field_1792,
                   stor3[arg1].field_2048,
                   stor3[arg1].field_2304,
                   bool(uint8(stor3[arg1].field_2560)),
                   stor3[arg1].field_1024,
                   mem[(32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 1312 len (32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1280) + 64]
    mem[(32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 896] = 32
    mem[(32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 928] = address(stor3[arg1].field_0)
    mem[(32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 960] = address(stor3[arg1].field_256)
    mem[(32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 992] = stor3[arg1].field_512
    mem[(32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 1024] = stor3[arg1].field_768
    mem[(32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 1056] = 352
    mem[(32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 1280] = stor3[arg1].field_1024
    idx = 0
    s = 832
    t = (32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 1312
    while idx < stor3[arg1].field_1024:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 1088] = (32 * stor3[arg1].field_1024) + 384
    mem[(64 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 1312] = stor3[arg1].field_1280
    mem[(64 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 1344 len 32 * stor3[arg1].field_1280] = mem[(32 * stor3[arg1].field_1024) + 864 len 32 * stor3[arg1].field_1280]
    mem[(32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 1120] = (32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + 416
    mem[(64 * stor3[arg1].field_1024) + (64 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 1344] = stor3[arg1].field_1536
    mem[(64 * stor3[arg1].field_1024) + (64 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 1376 len 32 * stor3[arg1].field_1536] = mem[(32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + 896 len 32 * stor3[arg1].field_1536]
    mem[(32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 1152] = stor3[arg1].field_1792
    mem[(32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 1184] = stor3[arg1].field_2048
    mem[(32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 1216] = stor3[arg1].field_2304
    mem[(32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 1248] = bool(uint8(stor3[arg1].field_2560))
    return memory
      from (32 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 896
       len (96 * stor3[arg1].field_1024) + (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 480
}

function sub_667bfbac(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 4
    mem[64] = (32 * stor4[address(arg1)].field_0) + 128
    mem[96] = stor4[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor4[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        _33 = mem[64]
        mem[64] = mem[64] + 352
        mem[_33] = address(stor4[address(arg1)][idx].field_0)
        mem[_33 + 32] = address(stor4[address(arg1)][idx].field_256)
        mem[_33 + 64] = stor4[address(arg1)][idx].field_512
        mem[_33 + 96] = stor4[address(arg1)][idx].field_768
        _34 = mem[64]
        mem[64] = mem[64] + (32 * stor4[address(arg1)][idx].field_1024) + 32
        mem[_34] = stor4[address(arg1)][idx].field_1024
        if not stor4[address(arg1)][idx].field_1024:
            mem[_33 + 128] = _34
            _36 = mem[64]
            mem[64] = mem[64] + (32 * stor4[address(arg1)][idx].field_1280) + 32
            mem[_36] = stor4[address(arg1)][idx].field_1280
            if not stor4[address(arg1)][idx].field_1280:
                mem[_33 + 160] = _36
                _39 = mem[64]
                mem[64] = mem[64] + (32 * stor4[address(arg1)][idx].field_1536) + 32
                mem[_39] = stor4[address(arg1)][idx].field_1536
                if stor4[address(arg1)][idx].field_1536:
                    mem[0] = sha3(sha3(address(arg1), 4)) + (11 * idx) + 6
                    mem[_39 + 32] = stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + (11 * idx) + 6)].field_0
                    t = _39 + 32
                    u = sha3(mem[0])
                    while _39 + (32 * stor4[address(arg1)][idx].field_1536) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_33 + 192] = _39
            else:
                mem[0] = sha3(sha3(address(arg1), 4)) + (11 * idx) + 5
                mem[_36 + 32] = stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + (11 * idx) + 5)].field_0
                t = _36 + 32
                u = sha3(mem[0])
                while _36 + (32 * stor4[address(arg1)][idx].field_1280) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_33 + 160] = _36
                _80 = mem[64]
                mem[64] = mem[64] + (32 * stor4[address(arg1)][idx].field_1536) + 32
                mem[_80] = stor4[address(arg1)][idx].field_1536
                if stor4[address(arg1)][idx].field_1536:
                    mem[0] = sha3(sha3(address(arg1), 4)) + (11 * idx) + 6
                    mem[_80 + 32] = stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + (11 * idx) + 6)].field_0
                    t = _80 + 32
                    u = sha3(mem[0])
                    while _80 + (32 * stor4[address(arg1)][idx].field_1536) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_33 + 192] = _80
            mem[_33 + 224] = stor4[address(arg1)][idx].field_1792
            mem[_33 + 256] = stor4[address(arg1)][idx].field_2048
            mem[_33 + 288] = stor4[address(arg1)][idx].field_2304
            mem[_33 + 320] = bool(uint8(stor4[address(arg1)][idx].field_2560))
            mem[s] = _33
            s = s + 32
            idx = idx + 1
            continue 
        mem[0] = sha3(sha3(address(arg1), 4)) + (11 * idx) + 4
        mem[_34 + 32] = address(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + (11 * idx) + 4)].field_0)
        t = _34 + 32
        u = sha3(mem[0])
        while _34 + (32 * stor4[address(arg1)][u].field_1024) > t:
            mem[t + 32] = address(stor1[u])
            t = t + 32
            u = u + 1
            continue 
        mem[_33 + 128] = _34
        _81 = mem[64]
        mem[64] = mem[64] + (32 * stor4[address(arg1)][u].field_1280) + 32
        mem[_81] = stor4[address(arg1)][u].field_1280
        if not stor4[address(arg1)][u].field_1280:
            mem[_33 + 160] = _81
            _84 = mem[64]
            mem[64] = mem[64] + (32 * stor4[address(arg1)][u].field_1536) + 32
            mem[_84] = stor4[address(arg1)][u].field_1536
            if stor4[address(arg1)][u].field_1536:
                mem[0] = sha3(sha3(address(arg1), 4)) + (11 * u) + 6
                mem[_84 + 32] = stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + (11 * u) + 6)].field_0
                s = _84 + 32
                v = sha3(mem[0])
                while _84 + (32 * stor4[address(arg1)][u].field_1536) > s:
                    mem[s + 32] = uint256(stor1[v])
                    s = s + 32
                    v = v + 1
                    continue 
            mem[_33 + 192] = _84
        else:
            mem[0] = sha3(sha3(address(arg1), 4)) + (11 * u) + 5
            mem[_81 + 32] = stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + (11 * u) + 5)].field_0
            s = _81 + 32
            v = sha3(mem[0])
            while _81 + (32 * stor4[address(arg1)][u].field_1280) > s:
                mem[s + 32] = uint256(stor1[v])
                s = s + 32
                v = v + 1
                continue 
            mem[_33 + 160] = _81
            _105 = mem[64]
            mem[64] = mem[64] + (32 * stor4[address(arg1)][u].field_1536) + 32
            mem[_105] = stor4[address(arg1)][u].field_1536
            if stor4[address(arg1)][u].field_1536:
                mem[0] = sha3(sha3(address(arg1), 4)) + (11 * u) + 6
                mem[_105 + 32] = stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + (11 * u) + 6)].field_0
                s = _105 + 32
                v = sha3(mem[0])
                while _105 + (32 * stor4[address(arg1)][u].field_1536) > s:
                    mem[s + 32] = uint256(stor1[v])
                    s = s + 32
                    v = v + 1
                    continue 
            mem[_33 + 192] = _105
        mem[_33 + 224] = stor4[address(arg1)][u].field_1792
        mem[_33 + 256] = stor4[address(arg1)][u].field_2048
        mem[_33 + 288] = stor4[address(arg1)][u].field_2304
        mem[_33 + 320] = bool(uint8(stor4[address(arg1)][u].field_2560))
        mem[t] = _33
        t = t + 32
        u = u + 1
        continue 
    _35 = mem[64]
    mem[mem[64]] = 32
    _38 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    u = mem[64] + (32 * mem[96]) + 64
    while idx < _38:
        mem[t] = u + -_35 - 64
        _61 = mem[s]
        mem[u] = mem[mem[s] + 12 len 20]
        mem[u + 32] = mem[_61 + 44 len 20]
        mem[u + 64] = mem[_61 + 64]
        mem[u + 96] = mem[_61 + 96]
        _67 = mem[_61 + 128]
        mem[u + 128] = 352
        _68 = mem[_67]
        mem[u + 352] = mem[_67]
        v = 0
        w = _67 + 32
        x = u + 384
        while v < _68:
            mem[x] = mem[w + 12 len 20]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        _86 = mem[_61 + 160]
        mem[u + 160] = (32 * _68) + 384
        _88 = mem[_86]
        mem[u + (32 * _68) + 384] = mem[_86]
        v = 0
        w = _86 + 32
        x = u + (32 * _68) + 416
        while v < _88:
            mem[x] = mem[w]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        _98 = mem[_61 + 192]
        mem[u + 192] = (32 * _68) + (32 * _88) + 416
        _99 = mem[_98]
        mem[u + (32 * _68) + (32 * _88) + 416] = mem[_98]
        v = 0
        w = _98 + 32
        x = u + (32 * _68) + (32 * _88) + 448
        while v < _99:
            mem[x] = mem[w]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        mem[u + 224] = mem[_61 + 224]
        mem[u + 256] = mem[_61 + 256]
        mem[u + 288] = mem[_61 + 288]
        mem[u + 320] = bool(mem[_61 + 320])
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = u + (32 * _68) + (32 * _88) + (32 * _99) + 448
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_ebd133da(?) {
    if stor6.length > test266151307():
        revert with 0, 65
    mem[96] = stor6.length
    mem[64] = (32 * stor6.length) + 128
    if not stor6.length:
        idx = 0
        while idx < stor6.length:
            mem[0] = stor6[idx].field_0
            mem[32] = 3
            _69 = mem[64]
            mem[64] = mem[64] + 352
            mem[_69] = address(stor3[stor6[idx].field_0].field_0)
            mem[_69 + 32] = address(stor3[stor6[idx].field_0].field_256)
            mem[_69 + 64] = stor3[stor6[idx].field_0].field_512
            mem[_69 + 96] = stor3[stor6[idx].field_0].field_768
            _70 = mem[64]
            mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1024) + 32
            mem[_70] = stor3[stor6[idx].field_0].field_1024
            if not stor3[stor6[idx].field_0].field_1024:
                mem[_69 + 128] = _70
                _72 = mem[64]
                mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1280) + 32
                mem[_72] = stor3[stor6[idx].field_0].field_1280
                if not stor3[stor6[idx].field_0].field_1280:
                    mem[_69 + 160] = _72
                    _74 = mem[64]
                    mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1536) + 32
                    mem[_74] = stor3[stor6[idx].field_0].field_1536
                    if stor3[stor6[idx].field_0].field_1536:
                        mem[0] = sha3(stor6[idx].field_0, 3) + 6
                        mem[_74 + 32] = stor3[stor6[idx].field_0][6].field_0
                        s = _74 + 32
                        t = sha3(sha3(stor6[idx].field_0, 3) + 6)
                        while _74 + (32 * stor3[stor6[idx].field_0].field_1536) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_69 + 192] = _74
                else:
                    mem[0] = sha3(stor6[idx].field_0, 3) + 5
                    mem[_72 + 32] = stor3[stor6[idx].field_0][5].field_0
                    s = _72 + 32
                    t = sha3(sha3(stor6[idx].field_0, 3) + 5)
                    while _72 + (32 * stor3[stor6[idx].field_0].field_1280) > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_69 + 160] = _72
                    _180 = mem[64]
                    mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1536) + 32
                    mem[_180] = stor3[stor6[idx].field_0].field_1536
                    if stor3[stor6[idx].field_0].field_1536:
                        mem[0] = sha3(stor6[idx].field_0, 3) + 6
                        mem[_180 + 32] = stor3[stor6[idx].field_0][6].field_0
                        s = _180 + 32
                        t = sha3(sha3(stor6[idx].field_0, 3) + 6)
                        while _180 + (32 * stor3[stor6[idx].field_0].field_1536) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_69 + 192] = _180
            else:
                mem[0] = sha3(stor6[idx].field_0, 3) + 4
                mem[_70 + 32] = address(stor3[stor6[idx].field_0][4].field_0)
                s = _70 + 32
                t = sha3(sha3(stor6[idx].field_0, 3) + 4)
                while _70 + (32 * stor3[stor6[idx].field_0].field_1024) > s:
                    mem[s + 32] = address(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_69 + 128] = _70
                _181 = mem[64]
                mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1280) + 32
                mem[_181] = stor3[stor6[idx].field_0].field_1280
                if not stor3[stor6[idx].field_0].field_1280:
                    mem[_69 + 160] = _181
                    _185 = mem[64]
                    mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1536) + 32
                    mem[_185] = stor3[stor6[idx].field_0].field_1536
                    if stor3[stor6[idx].field_0].field_1536:
                        mem[0] = sha3(stor6[idx].field_0, 3) + 6
                        mem[_185 + 32] = stor3[stor6[idx].field_0][6].field_0
                        s = _185 + 32
                        t = sha3(sha3(stor6[idx].field_0, 3) + 6)
                        while _185 + (32 * stor3[stor6[idx].field_0].field_1536) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_69 + 192] = _185
                else:
                    mem[0] = sha3(stor6[idx].field_0, 3) + 5
                    mem[_181 + 32] = stor3[stor6[idx].field_0][5].field_0
                    s = _181 + 32
                    t = sha3(sha3(stor6[idx].field_0, 3) + 5)
                    while _181 + (32 * stor3[stor6[idx].field_0].field_1280) > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_69 + 160] = _181
                    _259 = mem[64]
                    mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1536) + 32
                    mem[_259] = stor3[stor6[idx].field_0].field_1536
                    if stor3[stor6[idx].field_0].field_1536:
                        mem[0] = sha3(stor6[idx].field_0, 3) + 6
                        mem[_259 + 32] = stor3[stor6[idx].field_0][6].field_0
                        s = _259 + 32
                        t = sha3(sha3(stor6[idx].field_0, 3) + 6)
                        while _259 + (32 * stor3[stor6[idx].field_0].field_1536) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_69 + 192] = _259
            mem[_69 + 224] = stor3[stor6[idx].field_0].field_1792
            mem[_69 + 256] = stor3[stor6[idx].field_0].field_2048
            mem[_69 + 288] = stor3[stor6[idx].field_0].field_2304
            mem[_69 + 320] = bool(uint8(stor3[stor6[idx].field_0].field_2560))
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _69
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _66 = mem[64]
        mem[mem[64]] = 32
        _71 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _71:
            mem[t] = u + -_66 - 64
            _129 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            mem[u + 32] = mem[_129 + 44 len 20]
            mem[u + 64] = mem[_129 + 64]
            mem[u + 96] = mem[_129 + 96]
            _135 = mem[_129 + 128]
            mem[u + 128] = 352
            _141 = mem[_135]
            mem[u + 352] = mem[_135]
            v = 0
            w = _135 + 32
            x = u + 384
            while v < _141:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _187 = mem[_129 + 160]
            mem[u + 160] = (32 * _141) + 384
            _195 = mem[_187]
            mem[u + (32 * _141) + 384] = mem[_187]
            v = 0
            w = _187 + 32
            x = u + (32 * _141) + 416
            while v < _195:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _232 = mem[_129 + 192]
            mem[u + 192] = (32 * _141) + (32 * _195) + 416
            _235 = mem[_232]
            mem[u + (32 * _141) + (32 * _195) + 416] = mem[_232]
            v = 0
            w = _232 + 32
            x = u + (32 * _141) + (32 * _195) + 448
            while v < _235:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            mem[u + 224] = mem[_129 + 224]
            mem[u + 256] = mem[_129 + 256]
            mem[u + 288] = mem[_129 + 288]
            mem[u + 320] = bool(mem[_129 + 320])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _141) + (32 * _195) + (32 * _235) + 448
            continue 
    else:
        mem[64] = (32 * stor6.length) + 480
        mem[(32 * stor6.length) + 128] = 0
        mem[(32 * stor6.length) + 160] = 0
        mem[(32 * stor6.length) + 192] = 0
        mem[(32 * stor6.length) + 224] = 0
        mem[(32 * stor6.length) + 256] = 96
        mem[(32 * stor6.length) + 288] = 96
        mem[(32 * stor6.length) + 320] = 96
        mem[(32 * stor6.length) + 352] = 0
        mem[(32 * stor6.length) + 384] = 0
        mem[(32 * stor6.length) + 416] = 0
        mem[(32 * stor6.length) + 448] = 0
        mem[var9001] = (32 * stor6.length) + 128
        s = var9001
        idx = var9002
        while idx - 1:
            mem[64] = mem[64] + 352
            mem[(32 * stor6.length) + 128] = 0
            mem[(32 * stor6.length) + 160] = 0
            mem[(32 * stor6.length) + 192] = 0
            mem[(32 * stor6.length) + 224] = 0
            mem[(32 * stor6.length) + 256] = 96
            mem[(32 * stor6.length) + 288] = 96
            mem[(32 * stor6.length) + 320] = 96
            mem[(32 * stor6.length) + 352] = 0
            mem[(32 * stor6.length) + 384] = 0
            mem[(32 * stor6.length) + 416] = 0
            mem[(32 * stor6.length) + 448] = 0
            mem[s + 32] = (32 * stor6.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < stor6.length:
            mem[0] = stor6[idx].field_0
            mem[32] = 3
            _193 = mem[64]
            mem[64] = mem[64] + 352
            mem[_193] = address(stor3[stor6[idx].field_0].field_0)
            mem[_193 + 32] = address(stor3[stor6[idx].field_0].field_256)
            mem[_193 + 64] = stor3[stor6[idx].field_0].field_512
            mem[_193 + 96] = stor3[stor6[idx].field_0].field_768
            _194 = mem[64]
            mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1024) + 32
            mem[_194] = stor3[stor6[idx].field_0].field_1024
            if not stor3[stor6[idx].field_0].field_1024:
                mem[_193 + 128] = _194
                _197 = mem[64]
                mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1280) + 32
                mem[_197] = stor3[stor6[idx].field_0].field_1280
                if not stor3[stor6[idx].field_0].field_1280:
                    mem[_193 + 160] = _197
                    _199 = mem[64]
                    mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1536) + 32
                    mem[_199] = stor3[stor6[idx].field_0].field_1536
                    if stor3[stor6[idx].field_0].field_1536:
                        mem[0] = sha3(stor6[idx].field_0, 3) + 6
                        mem[_199 + 32] = stor3[stor6[idx].field_0][6].field_0
                        s = _199 + 32
                        t = sha3(sha3(stor6[idx].field_0, 3) + 6)
                        while _199 + (32 * stor3[stor6[idx].field_0].field_1536) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_193 + 192] = _199
                else:
                    mem[0] = sha3(stor6[idx].field_0, 3) + 5
                    mem[_197 + 32] = stor3[stor6[idx].field_0][5].field_0
                    s = _197 + 32
                    t = sha3(sha3(stor6[idx].field_0, 3) + 5)
                    while _197 + (32 * stor3[stor6[idx].field_0].field_1280) > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_193 + 160] = _197
                    _261 = mem[64]
                    mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1536) + 32
                    mem[_261] = stor3[stor6[idx].field_0].field_1536
                    if stor3[stor6[idx].field_0].field_1536:
                        mem[0] = sha3(stor6[idx].field_0, 3) + 6
                        mem[_261 + 32] = stor3[stor6[idx].field_0][6].field_0
                        s = _261 + 32
                        t = sha3(sha3(stor6[idx].field_0, 3) + 6)
                        while _261 + (32 * stor3[stor6[idx].field_0].field_1536) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_193 + 192] = _261
            else:
                mem[0] = sha3(stor6[idx].field_0, 3) + 4
                mem[_194 + 32] = address(stor3[stor6[idx].field_0][4].field_0)
                s = _194 + 32
                t = sha3(sha3(stor6[idx].field_0, 3) + 4)
                while _194 + (32 * stor3[stor6[idx].field_0].field_1024) > s:
                    mem[s + 32] = address(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_193 + 128] = _194
                _262 = mem[64]
                mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1280) + 32
                mem[_262] = stor3[stor6[idx].field_0].field_1280
                if not stor3[stor6[idx].field_0].field_1280:
                    mem[_193 + 160] = _262
                    _269 = mem[64]
                    mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1536) + 32
                    mem[_269] = stor3[stor6[idx].field_0].field_1536
                    if stor3[stor6[idx].field_0].field_1536:
                        mem[0] = sha3(stor6[idx].field_0, 3) + 6
                        mem[_269 + 32] = stor3[stor6[idx].field_0][6].field_0
                        s = _269 + 32
                        t = sha3(sha3(stor6[idx].field_0, 3) + 6)
                        while _269 + (32 * stor3[stor6[idx].field_0].field_1536) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_193 + 192] = _269
                else:
                    mem[0] = sha3(stor6[idx].field_0, 3) + 5
                    mem[_262 + 32] = stor3[stor6[idx].field_0][5].field_0
                    s = _262 + 32
                    t = sha3(sha3(stor6[idx].field_0, 3) + 5)
                    while _262 + (32 * stor3[stor6[idx].field_0].field_1280) > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_193 + 160] = _262
                    _298 = mem[64]
                    mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1536) + 32
                    mem[_298] = stor3[stor6[idx].field_0].field_1536
                    if stor3[stor6[idx].field_0].field_1536:
                        mem[0] = sha3(stor6[idx].field_0, 3) + 6
                        mem[_298 + 32] = stor3[stor6[idx].field_0][6].field_0
                        s = _298 + 32
                        t = sha3(sha3(stor6[idx].field_0, 3) + 6)
                        while _298 + (32 * stor3[stor6[idx].field_0].field_1536) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_193 + 192] = _298
            mem[_193 + 224] = stor3[stor6[idx].field_0].field_1792
            mem[_193 + 256] = stor3[stor6[idx].field_0].field_2048
            mem[_193 + 288] = stor3[stor6[idx].field_0].field_2304
            mem[_193 + 320] = bool(uint8(stor3[stor6[idx].field_0].field_2560))
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _193
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _190 = mem[64]
        mem[mem[64]] = 32
        _196 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _196:
            mem[t] = u + -_190 - 64
            _231 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            mem[u + 32] = mem[_231 + 44 len 20]
            mem[u + 64] = mem[_231 + 64]
            mem[u + 96] = mem[_231 + 96]
            _244 = mem[_231 + 128]
            mem[u + 128] = 352
            _245 = mem[_244]
            mem[u + 352] = mem[_244]
            v = 0
            w = _244 + 32
            x = u + 384
            while v < _245:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _275 = mem[_231 + 160]
            mem[u + 160] = (32 * _245) + 384
            _278 = mem[_275]
            mem[u + (32 * _245) + 384] = mem[_275]
            v = 0
            w = _275 + 32
            x = u + (32 * _245) + 416
            while v < _278:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _288 = mem[_231 + 192]
            mem[u + 192] = (32 * _245) + (32 * _278) + 416
            _289 = mem[_288]
            mem[u + (32 * _245) + (32 * _278) + 416] = mem[_288]
            v = 0
            w = _288 + 32
            x = u + (32 * _245) + (32 * _278) + 448
            while v < _289:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            mem[u + 224] = mem[_231 + 224]
            mem[u + 256] = mem[_231 + 256]
            mem[u + 288] = mem[_231 + 288]
            mem[u + 320] = bool(mem[_231 + 320])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _245) + (32 * _278) + (32 * _289) + 448
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_a0c59979(?) {
    require calldata.size - 4 >= 32
    if not stor6.length:
        revert with 0, 'offer not registered'
    if stor5[arg1] >= stor6.length:
        revert with 0, 50
    if stor6[stor5[arg1]].field_0 == arg1 != 1:
        revert with 0, 'offer not registered'
    if address(stor3[arg1].field_0) != msg.sender:
        revert with 0, 'caller not owner'
    if stor6.length:
        if stor5[arg1] >= stor6.length:
            revert with 0, 50
        if stor6[stor5[arg1]].field_0 == arg1:
            if stor6.length < 1:
                revert with 0, 17
            if stor6.length - 1 != stor5[arg1]:
                if stor6.length - 1 >= stor6.length:
                    revert with 0, 50
                stor5[stor6[stor6.length].field_0] = stor5[arg1]
                if stor5[arg1] >= stor6.length:
                    revert with 0, 50
                stor6[stor5[arg1]].field_0 = stor6[stor6.length].field_0
            stor5[arg1] = 0
            if stor6.length < 1:
                revert with 0, 17
            if stor6.length - 1 >= stor6.length:
                revert with 0, 50
            stor6[stor6.length].field_0 = 0
    address(stor3[arg1].field_0) = 0
    address(stor3[arg1].field_256) = 0
    stor3[arg1].field_512 = 0
    stor3[arg1].field_768 = 0
    stor3[arg1].field_1024 = 0
    idx = 0
    while stor3[arg1].field_1024 > idx:
        stor3[arg1][idx + 4].field_0 = 0
        idx = idx + 1
        continue 
    stor3[arg1].field_1280 = 0
    idx = 0
    while stor3[arg1].field_1280 > idx:
        stor3[arg1][idx + 5].field_0 = 0
        idx = idx + 1
        continue 
    stor3[arg1].field_1536 = 0
    idx = 0
    while stor3[arg1].field_1536 > idx:
        stor3[arg1][idx + 6].field_0 = 0
        idx = idx + 1
        continue 
    stor3[arg1].field_1792 = 0
    stor3[arg1].field_2048 = 0
    stor3[arg1].field_2304 = 0
    uint8(stor3[arg1].field_2560) = 0
    mem[0] = address(stor3[arg1].field_0)
    idx = 0
    while idx < stor4[address(stor3[arg1].field_0)].field_0:
        if idx >= stor4[address(stor3[arg1].field_0)].field_0:
            revert with 0, 50
        if stor4[address(stor3[arg1].field_0)][idx].field_512 == arg1:
            if stor4[address(stor3[arg1].field_0)].field_0 < 1:
                revert with 0, 17
            if stor4[address(stor3[arg1].field_0)].field_0 - 1 >= stor4[address(stor3[arg1].field_0)].field_0:
                revert with 0, 50
            if idx >= stor4[address(stor3[arg1].field_0)].field_0:
                revert with 0, 50
            address(stor4[address(stor3[arg1].field_0)][idx].field_0) = address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0)
            address(stor4[address(stor3[arg1].field_0)][idx].field_256) = address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0)
            stor4[address(stor3[arg1].field_0)][idx].field_512 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
            stor4[address(stor3[arg1].field_0)][idx].field_768 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
            stor4[address(stor3[arg1].field_0)][idx].field_1024 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
            mem[0] = (11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 4
            if not stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0:
                s = sha3(mem[0])
                while sha3((11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 4) + stor4[address(stor3[arg1].field_0)][idx].field_1024 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_0)][idx].field_1280 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                mem[0] = (11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5
                if not stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0:
                    s = sha3(mem[0])
                    while sha3((11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5) + stor4[address(stor3[arg1].field_0)][idx].field_1280 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_0)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_0)][idx].field_1536 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                    mem[0] = (11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 6
                    if not stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0:
                        s = sha3(mem[0])
                        while sha3((11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 6) + stor4[address(stor3[arg1].field_0)][idx].field_1536 > s:
                            stor[s] = 0
                            mem[0] = address(stor3[arg1].field_0)
                            mem[32] = 4
                            s = s + 1
                            continue 
                    else:
                        mem[0] = (11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5
                        t = sha3((11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 6)
                        s = sha3(mem[0])
                        while sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                            stor[t] = stor[s]
                            mem[0] = address(stor3[arg1].field_0)
                            mem[32] = 4
                            t = t + 1
                            s = s + 1
                            continue 
                        s = sha3((11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 6) + sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 - sha3(mem[0])
                        while sha3((11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 6) + stor4[address(stor3[arg1].field_0)][idx].field_1536 > s:
                            stor[s] = 0
                            mem[0] = address(stor3[arg1].field_0)
                            mem[32] = 4
                            s = s + 1
                            continue 
                    stor4[address(stor3[arg1].field_0)][idx].field_1792 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                    stor4[address(stor3[arg1].field_0)][idx].field_2048 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                    stor4[address(stor3[arg1].field_0)][idx].field_2304 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                    uint8(stor4[address(stor3[arg1].field_0)][idx].field_2560) = uint8(bool(uint8(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0)))
                    if not stor4[address(stor3[arg1].field_0)].field_0:
                        revert with 0, 49
                    address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                    address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    mem[0] = (11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7
                    s = sha3(mem[0])
                    while sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_0)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    mem[0] = (11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6
                    s = sha3(mem[0])
                    while sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_0)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    mem[0] = (11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5
                    s = sha3(mem[0])
                    while sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_0)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    uint8(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                    stor4[address(stor3[arg1].field_0)].field_0--
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    idx = idx + 1
                    continue 
                mem[0] = (11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6
                t = sha3((11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5)
                s = sha3(mem[0])
                while sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                    stor[t] = stor[s]
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    t = t + 1
                    s = s + 1
                    continue 
                s = sha3((11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5) + sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 - sha3(mem[0])
                while sha3((11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5) + stor4[address(stor3[arg1].field_0)][idx].field_1280 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_0)][idx].field_1536 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                mem[0] = (11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 6
                if not stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0:
                    s = sha3(mem[0])
                    while sha3((11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 6) + stor4[address(stor3[arg1].field_0)][idx].field_1536 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_0)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_0)][idx].field_1792 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                    stor4[address(stor3[arg1].field_0)][idx].field_2048 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                    stor4[address(stor3[arg1].field_0)][idx].field_2304 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                    uint8(stor4[address(stor3[arg1].field_0)][idx].field_2560) = uint8(bool(uint8(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0)))
                    if not stor4[address(stor3[arg1].field_0)].field_0:
                        revert with 0, 49
                    address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                    address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    mem[0] = (11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7
                    s = sha3(mem[0])
                    while sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_0)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    mem[0] = (11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6
                    s = sha3(mem[0])
                    while sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_0)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    mem[0] = (11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5
                    s = sha3(mem[0])
                    while sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_0)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    uint8(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                    stor4[address(stor3[arg1].field_0)].field_0--
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    idx = idx + 1
                    continue 
                mem[0] = (11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5
                t = sha3((11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 6)
                s = sha3(mem[0])
                while sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                    stor[t] = stor[s]
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    t = t + 1
                    s = s + 1
                    continue 
                s = sha3((11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 6) + sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 - sha3(mem[0])
                while sha3((11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 6) + stor4[address(stor3[arg1].field_0)][idx].field_1536 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_0)][idx].field_1792 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                stor4[address(stor3[arg1].field_0)][idx].field_2048 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                stor4[address(stor3[arg1].field_0)][idx].field_2304 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                uint8(stor4[address(stor3[arg1].field_0)][idx].field_2560) = uint8(bool(uint8(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0)))
                if not stor4[address(stor3[arg1].field_0)].field_0:
                    revert with 0, 49
                address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                mem[0] = (11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7
                s = sha3(mem[0])
                while sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                mem[0] = (11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6
                s = sha3(mem[0])
                while sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                mem[0] = (11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5
                s = sha3(mem[0])
                while sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                uint8(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                stor4[address(stor3[arg1].field_0)].field_0--
                if sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 == -1:
                    revert with 0, 17
                mem[0] = address(stor3[arg1].field_0)
                mem[32] = 4
                s = sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 + 1
                continue 
            mem[0] = (11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7
            t = sha3((11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 4)
            s = sha3(mem[0])
            while sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                stor[t] = stor[s]
                mem[0] = address(stor3[arg1].field_0)
                mem[32] = 4
                t = t + 1
                s = s + 1
                continue 
            s = sha3((11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 4) + sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 - sha3(mem[0])
            while sha3((11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 4) + stor4[address(stor3[arg1].field_0)][idx].field_1024 > s:
                stor[s] = 0
                mem[0] = address(stor3[arg1].field_0)
                mem[32] = 4
                s = s + 1
                continue 
            stor4[address(stor3[arg1].field_0)][idx].field_1280 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
            mem[0] = (11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5
            if not stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0:
                s = sha3(mem[0])
                while sha3((11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5) + stor4[address(stor3[arg1].field_0)][idx].field_1280 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_0)][idx].field_1536 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                mem[0] = (11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 6
                if not stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0:
                    s = sha3(mem[0])
                    while sha3((11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 6) + stor4[address(stor3[arg1].field_0)][idx].field_1536 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_0)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_0)][idx].field_1792 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                    stor4[address(stor3[arg1].field_0)][idx].field_2048 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                    stor4[address(stor3[arg1].field_0)][idx].field_2304 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                    uint8(stor4[address(stor3[arg1].field_0)][idx].field_2560) = uint8(bool(uint8(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0)))
                    if not stor4[address(stor3[arg1].field_0)].field_0:
                        revert with 0, 49
                    address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                    address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    mem[0] = (11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7
                    s = sha3(mem[0])
                    while sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_0)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    mem[0] = (11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6
                    s = sha3(mem[0])
                    while sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_0)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    mem[0] = (11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5
                    s = sha3(mem[0])
                    while sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_0)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    uint8(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                    stor4[address(stor3[arg1].field_0)].field_0--
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    idx = idx + 1
                    continue 
                mem[0] = (11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5
                t = sha3((11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 6)
                s = sha3(mem[0])
                while sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                    stor[t] = stor[s]
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    t = t + 1
                    s = s + 1
                    continue 
                s = sha3((11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 6) + sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 - sha3(mem[0])
                while sha3((11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 6) + stor4[address(stor3[arg1].field_0)][idx].field_1536 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_0)][idx].field_1792 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                stor4[address(stor3[arg1].field_0)][idx].field_2048 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                stor4[address(stor3[arg1].field_0)][idx].field_2304 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                uint8(stor4[address(stor3[arg1].field_0)][idx].field_2560) = uint8(bool(uint8(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0)))
                if not stor4[address(stor3[arg1].field_0)].field_0:
                    revert with 0, 49
                address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                mem[0] = (11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7
                s = sha3(mem[0])
                while sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                mem[0] = (11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6
                s = sha3(mem[0])
                while sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                mem[0] = (11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5
                s = sha3(mem[0])
                while sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                uint8(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                stor4[address(stor3[arg1].field_0)].field_0--
                if sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 == -1:
                    revert with 0, 17
                mem[0] = address(stor3[arg1].field_0)
                mem[32] = 4
                s = sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 + 1
                continue 
            mem[0] = (11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6
            t = sha3((11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5)
            s = sha3(mem[0])
            while sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                stor[t] = stor[s]
                mem[0] = address(stor3[arg1].field_0)
                mem[32] = 4
                t = t + 1
                s = s + 1
                continue 
            s = sha3((11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5) + sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 - sha3(mem[0])
            while sha3((11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5) + stor4[address(stor3[arg1].field_0)][idx].field_1280 > s:
                stor[s] = 0
                mem[0] = address(stor3[arg1].field_0)
                mem[32] = 4
                s = s + 1
                continue 
            stor4[address(stor3[arg1].field_0)][idx].field_1536 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
            mem[0] = (11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 6
            if not stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0:
                s = sha3(mem[0])
                while sha3((11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 6) + stor4[address(stor3[arg1].field_0)][idx].field_1536 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_0)][idx].field_1792 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                stor4[address(stor3[arg1].field_0)][idx].field_2048 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                stor4[address(stor3[arg1].field_0)][idx].field_2304 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                uint8(stor4[address(stor3[arg1].field_0)][idx].field_2560) = uint8(bool(uint8(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0)))
                if not stor4[address(stor3[arg1].field_0)].field_0:
                    revert with 0, 49
                address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                mem[0] = (11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7
                s = sha3(mem[0])
                while sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                mem[0] = (11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6
                s = sha3(mem[0])
                while sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                mem[0] = (11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5
                s = sha3(mem[0])
                while sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                uint8(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                stor4[address(stor3[arg1].field_0)].field_0--
                if sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 == -1:
                    revert with 0, 17
                mem[0] = address(stor3[arg1].field_0)
                mem[32] = 4
                s = sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 + 1
                continue 
            mem[0] = (11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5
            t = sha3((11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 6)
            s = sha3(mem[0])
            while sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                stor[t] = stor[s]
                mem[0] = address(stor3[arg1].field_0)
                mem[32] = 4
                t = t + 1
                s = s + 1
                continue 
            s = sha3((11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 6) + sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 - sha3(mem[0])
            while sha3((11 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 6) + stor4[address(stor3[arg1].field_0)][idx].field_1536 > s:
                stor[s] = 0
                mem[0] = address(stor3[arg1].field_0)
                mem[32] = 4
                s = s + 1
                continue 
            stor4[address(stor3[arg1].field_0)][idx].field_1792 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
            stor4[address(stor3[arg1].field_0)][idx].field_2048 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
            stor4[address(stor3[arg1].field_0)][idx].field_2304 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
            uint8(stor4[address(stor3[arg1].field_0)][idx].field_2560) = uint8(bool(uint8(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0)))
            if not stor4[address(stor3[arg1].field_0)].field_0:
                revert with 0, 49
            address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
            address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
            stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
            stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
            stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
            mem[0] = (11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7
            s = sha3(mem[0])
            while sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                stor[s] = 0
                mem[0] = address(stor3[arg1].field_0)
                mem[32] = 4
                s = s + 1
                continue 
            stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
            mem[0] = (11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6
            s = sha3(mem[0])
            while sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                stor[s] = 0
                mem[0] = address(stor3[arg1].field_0)
                mem[32] = 4
                s = s + 1
                continue 
            stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
            mem[0] = (11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5
            s = sha3(mem[0])
            while sha3((11 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                stor[s] = 0
                mem[0] = address(stor3[arg1].field_0)
                mem[32] = 4
                s = s + 1
                continue 
            stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
            stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
            stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
            uint8(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
            stor4[address(stor3[arg1].field_0)].field_0--
        if idx == -1:
            revert with 0, 17
        mem[0] = address(stor3[arg1].field_0)
        mem[32] = 4
        idx = idx + 1
        continue 
    if not uint8(stor3[arg1].field_2560):
        call address(stor3[arg1].field_0) with:
           value stor3[arg1].field_1792 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x6fe9d303: arg1
    return 1
}



}
