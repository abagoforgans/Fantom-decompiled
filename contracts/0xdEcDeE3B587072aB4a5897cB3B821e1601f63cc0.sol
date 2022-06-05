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
        _34 = mem[64]
        mem[64] = mem[64] + 384
        mem[_34] = stor4[address(arg1)][idx].field_0
        mem[_34 + 32] = address(stor4[address(arg1)][idx].field_256)
        mem[_34 + 64] = address(stor4[address(arg1)][idx].field_512)
        mem[_34 + 96] = stor4[address(arg1)][idx].field_768
        mem[_34 + 128] = stor4[address(arg1)][idx].field_1024
        _35 = mem[64]
        mem[64] = mem[64] + (32 * stor4[address(arg1)][idx].field_1280) + 32
        mem[_35] = stor4[address(arg1)][idx].field_1280
        if not stor4[address(arg1)][idx].field_1280:
            mem[_34 + 160] = _35
            _37 = mem[64]
            mem[64] = mem[64] + (32 * stor4[address(arg1)][idx].field_1536) + 32
            mem[_37] = stor4[address(arg1)][idx].field_1536
            if not stor4[address(arg1)][idx].field_1536:
                mem[_34 + 192] = _37
                _40 = mem[64]
                mem[64] = mem[64] + (32 * stor4[address(arg1)][idx].field_1792) + 32
                mem[_40] = stor4[address(arg1)][idx].field_1792
                if stor4[address(arg1)][idx].field_1792:
                    mem[0] = sha3(sha3(address(arg1), 4)) + (12 * idx) + 7
                    mem[_40 + 32] = stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + (12 * idx) + 7)].field_0
                    t = _40 + 32
                    u = sha3(mem[0])
                    while _40 + (32 * stor4[address(arg1)][idx].field_1792) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_34 + 224] = _40
            else:
                mem[0] = sha3(sha3(address(arg1), 4)) + (12 * idx) + 6
                mem[_37 + 32] = stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + (12 * idx) + 6)].field_0
                t = _37 + 32
                u = sha3(mem[0])
                while _37 + (32 * stor4[address(arg1)][idx].field_1536) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_34 + 192] = _37
                _83 = mem[64]
                mem[64] = mem[64] + (32 * stor4[address(arg1)][idx].field_1792) + 32
                mem[_83] = stor4[address(arg1)][idx].field_1792
                if stor4[address(arg1)][idx].field_1792:
                    mem[0] = sha3(sha3(address(arg1), 4)) + (12 * idx) + 7
                    mem[_83 + 32] = stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + (12 * idx) + 7)].field_0
                    t = _83 + 32
                    u = sha3(mem[0])
                    while _83 + (32 * stor4[address(arg1)][idx].field_1792) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_34 + 224] = _83
            mem[_34 + 256] = stor4[address(arg1)][idx].field_2048
            mem[_34 + 288] = stor4[address(arg1)][idx].field_2304
            mem[_34 + 320] = stor4[address(arg1)][idx].field_2560
            mem[_34 + 352] = bool(uint8(stor4[address(arg1)][idx].field_2816))
            mem[s] = _34
            s = s + 32
            idx = idx + 1
            continue 
        mem[0] = sha3(sha3(address(arg1), 4)) + (12 * idx) + 5
        mem[_35 + 32] = address(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + (12 * idx) + 5)].field_0)
        t = _35 + 32
        u = sha3(mem[0])
        while _35 + (32 * stor4[address(arg1)][u].field_1280) > t:
            mem[t + 32] = address(stor1[u])
            t = t + 32
            u = u + 1
            continue 
        mem[_34 + 160] = _35
        _84 = mem[64]
        mem[64] = mem[64] + (32 * stor4[address(arg1)][u].field_1536) + 32
        mem[_84] = stor4[address(arg1)][u].field_1536
        if not stor4[address(arg1)][u].field_1536:
            mem[_34 + 192] = _84
            _87 = mem[64]
            mem[64] = mem[64] + (32 * stor4[address(arg1)][u].field_1792) + 32
            mem[_87] = stor4[address(arg1)][u].field_1792
            if stor4[address(arg1)][u].field_1792:
                mem[0] = sha3(sha3(address(arg1), 4)) + (12 * u) + 7
                mem[_87 + 32] = stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + (12 * u) + 7)].field_0
                s = _87 + 32
                v = sha3(mem[0])
                while _87 + (32 * stor4[address(arg1)][u].field_1792) > s:
                    mem[s + 32] = uint256(stor1[v])
                    s = s + 32
                    v = v + 1
                    continue 
            mem[_34 + 224] = _87
        else:
            mem[0] = sha3(sha3(address(arg1), 4)) + (12 * u) + 6
            mem[_84 + 32] = stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + (12 * u) + 6)].field_0
            s = _84 + 32
            v = sha3(mem[0])
            while _84 + (32 * stor4[address(arg1)][u].field_1536) > s:
                mem[s + 32] = uint256(stor1[v])
                s = s + 32
                v = v + 1
                continue 
            mem[_34 + 192] = _84
            _108 = mem[64]
            mem[64] = mem[64] + (32 * stor4[address(arg1)][u].field_1792) + 32
            mem[_108] = stor4[address(arg1)][u].field_1792
            if stor4[address(arg1)][u].field_1792:
                mem[0] = sha3(sha3(address(arg1), 4)) + (12 * u) + 7
                mem[_108 + 32] = stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + (12 * u) + 7)].field_0
                s = _108 + 32
                v = sha3(mem[0])
                while _108 + (32 * stor4[address(arg1)][u].field_1792) > s:
                    mem[s + 32] = uint256(stor1[v])
                    s = s + 32
                    v = v + 1
                    continue 
            mem[_34 + 224] = _108
        mem[_34 + 256] = stor4[address(arg1)][u].field_2048
        mem[_34 + 288] = stor4[address(arg1)][u].field_2304
        mem[_34 + 320] = stor4[address(arg1)][u].field_2560
        mem[_34 + 352] = bool(uint8(stor4[address(arg1)][u].field_2816))
        mem[t] = _34
        t = t + 32
        u = u + 1
        continue 
    _36 = mem[64]
    mem[mem[64]] = 32
    _39 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    u = mem[64] + (32 * mem[96]) + 64
    while idx < _39:
        mem[t] = u + -_36 - 64
        _63 = mem[s]
        mem[u] = mem[mem[s]]
        mem[u + 32] = mem[_63 + 44 len 20]
        mem[u + 64] = mem[_63 + 76 len 20]
        mem[u + 96] = mem[_63 + 96]
        mem[u + 128] = mem[_63 + 128]
        _70 = mem[_63 + 160]
        mem[u + 160] = 384
        _71 = mem[_70]
        mem[u + 384] = mem[_70]
        v = 0
        w = _70 + 32
        x = u + 416
        while v < _71:
            mem[x] = mem[w + 12 len 20]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        _89 = mem[_63 + 192]
        mem[u + 192] = (32 * _71) + 416
        _91 = mem[_89]
        mem[u + (32 * _71) + 416] = mem[_89]
        v = 0
        w = _89 + 32
        x = u + (32 * _71) + 448
        while v < _91:
            mem[x] = mem[w]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        _101 = mem[_63 + 224]
        mem[u + 224] = (32 * _71) + (32 * _91) + 448
        _102 = mem[_101]
        mem[u + (32 * _71) + (32 * _91) + 448] = mem[_101]
        v = 0
        w = _101 + 32
        x = u + (32 * _71) + (32 * _91) + 480
        while v < _102:
            mem[x] = mem[w]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        mem[u + 256] = mem[_63 + 256]
        mem[u + 288] = mem[_63 + 288]
        mem[u + 320] = mem[_63 + 320]
        mem[u + 352] = bool(mem[_63 + 352])
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = u + (32 * _71) + (32 * _91) + (32 * _102) + 480
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function getOffer(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor6.length:
        revert with 0, 'offer not registered'
    if stor5[arg1] >= stor6.length:
        revert with 0, 50
    if stor6[stor5[arg1]].field_0 != arg1:
        revert with 0, 'offer not registered'
    if not stor3[arg1].field_1280:
        mem[(32 * stor3[arg1].field_1280) + 896] = stor3[arg1].field_1536
        if not stor3[arg1].field_1536:
            if stor3[arg1].field_1792:
                mem[(32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 960] = stor3[arg1][7].field_0
                idx = (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 960
                s = 0
                while (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 928 > idx:
                    mem[idx + 32] = stor3[arg1][s + 7].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
        else:
            mem[(32 * stor3[arg1].field_1280) + 928] = stor3[arg1][6].field_0
            idx = (32 * stor3[arg1].field_1280) + 928
            s = 0
            while (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 896 > idx:
                mem[idx + 32] = stor3[arg1][s + 6].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if stor3[arg1].field_1792:
                mem[(32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 960] = stor3[arg1][7].field_0
                idx = (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 960
                s = 0
                while (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 928 > idx:
                    mem[idx + 32] = stor3[arg1][s + 7].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                idx = 0
                s = 896
                t = (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1408
                while idx < stor3[arg1].field_1280:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(64 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1408] = stor3[arg1].field_1536
                mem[(64 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1440 len 32 * stor3[arg1].field_1536] = mem[(32 * stor3[arg1].field_1280) + 928 len 32 * stor3[arg1].field_1536]
                mem[(64 * stor3[arg1].field_1280) + (64 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1440] = stor3[arg1].field_1792
                mem[(64 * stor3[arg1].field_1280) + (64 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1472 len 32 * stor3[arg1].field_1792] = mem[(32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 960 len 32 * stor3[arg1].field_1792]
                return 32, stor3[arg1].field_0, 
                       address(stor3[arg1].field_256),
                       address(stor3[arg1].field_512),
                       stor3[arg1].field_768,
                       stor3[arg1].field_1024,
                       384,
                       (32 * stor3[arg1].field_1280) + 416,
                       (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 448,
                       stor3[arg1].field_2048,
                       stor3[arg1].field_2304,
                       stor3[arg1].field_2560,
                       bool(uint8(stor3[arg1].field_2816)),
                       stor3[arg1].field_1280,
                       mem[(32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1408 len (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1792) + (32 * stor3[arg1].field_1536) + 64]
    else:
        mem[896] = address(stor3[arg1][5].field_0)
        idx = 896
        s = 0
        while (32 * stor3[arg1].field_1280) + 864 > idx:
            mem[idx + 32] = address(stor3[arg1][s + 5].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor3[arg1].field_1280) + 896] = stor3[arg1].field_1536
        if stor3[arg1].field_1536:
            mem[(32 * stor3[arg1].field_1280) + 928] = stor3[arg1][6].field_0
            idx = (32 * stor3[arg1].field_1280) + 928
            s = 0
            while (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 896 > idx:
                mem[idx + 32] = stor3[arg1][s + 6].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if stor3[arg1].field_1792:
                mem[(32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 960] = stor3[arg1][7].field_0
                idx = (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 960
                s = 0
                while (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 928 > idx:
                    mem[idx + 32] = stor3[arg1][s + 7].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            idx = 0
            s = 896
            t = (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1408
            while idx < stor3[arg1].field_1280:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(64 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1408] = stor3[arg1].field_1536
            mem[(64 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1440 len 32 * stor3[arg1].field_1536] = mem[(32 * stor3[arg1].field_1280) + 928 len 32 * stor3[arg1].field_1536]
            mem[(64 * stor3[arg1].field_1280) + (64 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1440] = stor3[arg1].field_1792
            mem[(64 * stor3[arg1].field_1280) + (64 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1472 len 32 * stor3[arg1].field_1792] = mem[(32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 960 len 32 * stor3[arg1].field_1792]
            return 32, stor3[arg1].field_0, 
                   address(stor3[arg1].field_256),
                   address(stor3[arg1].field_512),
                   stor3[arg1].field_768,
                   stor3[arg1].field_1024,
                   384,
                   (32 * stor3[arg1].field_1280) + 416,
                   (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 448,
                   stor3[arg1].field_2048,
                   stor3[arg1].field_2304,
                   stor3[arg1].field_2560,
                   bool(uint8(stor3[arg1].field_2816)),
                   stor3[arg1].field_1280,
                   mem[(32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1408 len (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1792) + (32 * stor3[arg1].field_1536) + 64]
        if stor3[arg1].field_1792:
            mem[(32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 960] = stor3[arg1][7].field_0
            idx = (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 960
            s = 0
            while (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 928 > idx:
                mem[idx + 32] = stor3[arg1][s + 7].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 960] = 32
    mem[(32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 992] = stor3[arg1].field_0
    mem[(32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1024] = address(stor3[arg1].field_256)
    mem[(32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1056] = address(stor3[arg1].field_512)
    mem[(32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1088] = stor3[arg1].field_768
    mem[(32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1120] = stor3[arg1].field_1024
    mem[(32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1152] = 384
    mem[(32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1376] = stor3[arg1].field_1280
    idx = 0
    s = 896
    t = (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1408
    while idx < stor3[arg1].field_1280:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1184] = (32 * stor3[arg1].field_1280) + 416
    mem[(64 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1408] = stor3[arg1].field_1536
    mem[(64 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1440 len 32 * stor3[arg1].field_1536] = mem[(32 * stor3[arg1].field_1280) + 928 len 32 * stor3[arg1].field_1536]
    mem[(32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1216] = (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 448
    mem[(64 * stor3[arg1].field_1280) + (64 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1440] = stor3[arg1].field_1792
    mem[(64 * stor3[arg1].field_1280) + (64 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1472 len 32 * stor3[arg1].field_1792] = mem[(32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + 960 len 32 * stor3[arg1].field_1792]
    mem[(32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1248] = stor3[arg1].field_2048
    mem[(32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1280] = stor3[arg1].field_2304
    mem[(32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1312] = stor3[arg1].field_2560
    mem[(32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 1344] = bool(uint8(stor3[arg1].field_2816))
    return memory
      from (32 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 960
       len (96 * stor3[arg1].field_1280) + (32 * stor3[arg1].field_1536) + (32 * stor3[arg1].field_1792) + 512
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
            _71 = mem[64]
            mem[64] = mem[64] + 384
            mem[_71] = stor3[stor6[idx].field_0].field_0
            mem[_71 + 32] = address(stor3[stor6[idx].field_0].field_256)
            mem[_71 + 64] = address(stor3[stor6[idx].field_0].field_512)
            mem[_71 + 96] = stor3[stor6[idx].field_0].field_768
            mem[_71 + 128] = stor3[stor6[idx].field_0].field_1024
            _72 = mem[64]
            mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1280) + 32
            mem[_72] = stor3[stor6[idx].field_0].field_1280
            if not stor3[stor6[idx].field_0].field_1280:
                mem[_71 + 160] = _72
                _74 = mem[64]
                mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1536) + 32
                mem[_74] = stor3[stor6[idx].field_0].field_1536
                if not stor3[stor6[idx].field_0].field_1536:
                    mem[_71 + 192] = _74
                    _76 = mem[64]
                    mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1792) + 32
                    mem[_76] = stor3[stor6[idx].field_0].field_1792
                    if stor3[stor6[idx].field_0].field_1792:
                        mem[0] = sha3(stor6[idx].field_0, 3) + 7
                        mem[_76 + 32] = stor3[stor6[idx].field_0][7].field_0
                        s = _76 + 32
                        t = sha3(sha3(stor6[idx].field_0, 3) + 7)
                        while _76 + (32 * stor3[stor6[idx].field_0].field_1792) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_71 + 224] = _76
                else:
                    mem[0] = sha3(stor6[idx].field_0, 3) + 6
                    mem[_74 + 32] = stor3[stor6[idx].field_0][6].field_0
                    s = _74 + 32
                    t = sha3(sha3(stor6[idx].field_0, 3) + 6)
                    while _74 + (32 * stor3[stor6[idx].field_0].field_1536) > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_71 + 192] = _74
                    _186 = mem[64]
                    mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1792) + 32
                    mem[_186] = stor3[stor6[idx].field_0].field_1792
                    if stor3[stor6[idx].field_0].field_1792:
                        mem[0] = sha3(stor6[idx].field_0, 3) + 7
                        mem[_186 + 32] = stor3[stor6[idx].field_0][7].field_0
                        s = _186 + 32
                        t = sha3(sha3(stor6[idx].field_0, 3) + 7)
                        while _186 + (32 * stor3[stor6[idx].field_0].field_1792) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_71 + 224] = _186
            else:
                mem[0] = sha3(stor6[idx].field_0, 3) + 5
                mem[_72 + 32] = address(stor3[stor6[idx].field_0][5].field_0)
                s = _72 + 32
                t = sha3(sha3(stor6[idx].field_0, 3) + 5)
                while _72 + (32 * stor3[stor6[idx].field_0].field_1280) > s:
                    mem[s + 32] = address(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_71 + 160] = _72
                _187 = mem[64]
                mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1536) + 32
                mem[_187] = stor3[stor6[idx].field_0].field_1536
                if not stor3[stor6[idx].field_0].field_1536:
                    mem[_71 + 192] = _187
                    _191 = mem[64]
                    mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1792) + 32
                    mem[_191] = stor3[stor6[idx].field_0].field_1792
                    if stor3[stor6[idx].field_0].field_1792:
                        mem[0] = sha3(stor6[idx].field_0, 3) + 7
                        mem[_191 + 32] = stor3[stor6[idx].field_0][7].field_0
                        s = _191 + 32
                        t = sha3(sha3(stor6[idx].field_0, 3) + 7)
                        while _191 + (32 * stor3[stor6[idx].field_0].field_1792) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_71 + 224] = _191
                else:
                    mem[0] = sha3(stor6[idx].field_0, 3) + 6
                    mem[_187 + 32] = stor3[stor6[idx].field_0][6].field_0
                    s = _187 + 32
                    t = sha3(sha3(stor6[idx].field_0, 3) + 6)
                    while _187 + (32 * stor3[stor6[idx].field_0].field_1536) > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_71 + 192] = _187
                    _267 = mem[64]
                    mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1792) + 32
                    mem[_267] = stor3[stor6[idx].field_0].field_1792
                    if stor3[stor6[idx].field_0].field_1792:
                        mem[0] = sha3(stor6[idx].field_0, 3) + 7
                        mem[_267 + 32] = stor3[stor6[idx].field_0][7].field_0
                        s = _267 + 32
                        t = sha3(sha3(stor6[idx].field_0, 3) + 7)
                        while _267 + (32 * stor3[stor6[idx].field_0].field_1792) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_71 + 224] = _267
            mem[_71 + 256] = stor3[stor6[idx].field_0].field_2048
            mem[_71 + 288] = stor3[stor6[idx].field_0].field_2304
            mem[_71 + 320] = stor3[stor6[idx].field_0].field_2560
            mem[_71 + 352] = bool(uint8(stor3[stor6[idx].field_0].field_2816))
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _71
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _68 = mem[64]
        mem[mem[64]] = 32
        _73 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _73:
            mem[t] = u + -_68 - 64
            _133 = mem[s]
            mem[u] = mem[mem[s]]
            mem[u + 32] = mem[_133 + 44 len 20]
            mem[u + 64] = mem[_133 + 76 len 20]
            mem[u + 96] = mem[_133 + 96]
            mem[u + 128] = mem[_133 + 128]
            _140 = mem[_133 + 160]
            mem[u + 160] = 384
            _146 = mem[_140]
            mem[u + 384] = mem[_140]
            v = 0
            w = _140 + 32
            x = u + 416
            while v < _146:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _193 = mem[_133 + 192]
            mem[u + 192] = (32 * _146) + 416
            _201 = mem[_193]
            mem[u + (32 * _146) + 416] = mem[_193]
            v = 0
            w = _193 + 32
            x = u + (32 * _146) + 448
            while v < _201:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _239 = mem[_133 + 224]
            mem[u + 224] = (32 * _146) + (32 * _201) + 448
            _243 = mem[_239]
            mem[u + (32 * _146) + (32 * _201) + 448] = mem[_239]
            v = 0
            w = _239 + 32
            x = u + (32 * _146) + (32 * _201) + 480
            while v < _243:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            mem[u + 256] = mem[_133 + 256]
            mem[u + 288] = mem[_133 + 288]
            mem[u + 320] = mem[_133 + 320]
            mem[u + 352] = bool(mem[_133 + 352])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _146) + (32 * _201) + (32 * _243) + 480
            continue 
    else:
        mem[64] = (32 * stor6.length) + 512
        mem[(32 * stor6.length) + 128] = 0
        mem[(32 * stor6.length) + 160] = 0
        mem[(32 * stor6.length) + 192] = 0
        mem[(32 * stor6.length) + 224] = 0
        mem[(32 * stor6.length) + 256] = 0
        mem[(32 * stor6.length) + 288] = 96
        mem[(32 * stor6.length) + 320] = 96
        mem[(32 * stor6.length) + 352] = 96
        mem[(32 * stor6.length) + 384] = 0
        mem[(32 * stor6.length) + 416] = 0
        mem[(32 * stor6.length) + 448] = 0
        mem[(32 * stor6.length) + 480] = 0
        mem[var9001] = (32 * stor6.length) + 128
        s = var9001
        idx = var9002
        while idx - 1:
            mem[64] = mem[64] + 384
            mem[(32 * stor6.length) + 128] = 0
            mem[(32 * stor6.length) + 160] = 0
            mem[(32 * stor6.length) + 192] = 0
            mem[(32 * stor6.length) + 224] = 0
            mem[(32 * stor6.length) + 256] = 0
            mem[(32 * stor6.length) + 288] = 96
            mem[(32 * stor6.length) + 320] = 96
            mem[(32 * stor6.length) + 352] = 96
            mem[(32 * stor6.length) + 384] = 0
            mem[(32 * stor6.length) + 416] = 0
            mem[(32 * stor6.length) + 448] = 0
            mem[(32 * stor6.length) + 480] = 0
            mem[s + 32] = (32 * stor6.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < stor6.length:
            mem[0] = stor6[idx].field_0
            mem[32] = 3
            _199 = mem[64]
            mem[64] = mem[64] + 384
            mem[_199] = stor3[stor6[idx].field_0].field_0
            mem[_199 + 32] = address(stor3[stor6[idx].field_0].field_256)
            mem[_199 + 64] = address(stor3[stor6[idx].field_0].field_512)
            mem[_199 + 96] = stor3[stor6[idx].field_0].field_768
            mem[_199 + 128] = stor3[stor6[idx].field_0].field_1024
            _200 = mem[64]
            mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1280) + 32
            mem[_200] = stor3[stor6[idx].field_0].field_1280
            if not stor3[stor6[idx].field_0].field_1280:
                mem[_199 + 160] = _200
                _203 = mem[64]
                mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1536) + 32
                mem[_203] = stor3[stor6[idx].field_0].field_1536
                if not stor3[stor6[idx].field_0].field_1536:
                    mem[_199 + 192] = _203
                    _205 = mem[64]
                    mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1792) + 32
                    mem[_205] = stor3[stor6[idx].field_0].field_1792
                    if stor3[stor6[idx].field_0].field_1792:
                        mem[0] = sha3(stor6[idx].field_0, 3) + 7
                        mem[_205 + 32] = stor3[stor6[idx].field_0][7].field_0
                        s = _205 + 32
                        t = sha3(sha3(stor6[idx].field_0, 3) + 7)
                        while _205 + (32 * stor3[stor6[idx].field_0].field_1792) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_199 + 224] = _205
                else:
                    mem[0] = sha3(stor6[idx].field_0, 3) + 6
                    mem[_203 + 32] = stor3[stor6[idx].field_0][6].field_0
                    s = _203 + 32
                    t = sha3(sha3(stor6[idx].field_0, 3) + 6)
                    while _203 + (32 * stor3[stor6[idx].field_0].field_1536) > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_199 + 192] = _203
                    _269 = mem[64]
                    mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1792) + 32
                    mem[_269] = stor3[stor6[idx].field_0].field_1792
                    if stor3[stor6[idx].field_0].field_1792:
                        mem[0] = sha3(stor6[idx].field_0, 3) + 7
                        mem[_269 + 32] = stor3[stor6[idx].field_0][7].field_0
                        s = _269 + 32
                        t = sha3(sha3(stor6[idx].field_0, 3) + 7)
                        while _269 + (32 * stor3[stor6[idx].field_0].field_1792) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_199 + 224] = _269
            else:
                mem[0] = sha3(stor6[idx].field_0, 3) + 5
                mem[_200 + 32] = address(stor3[stor6[idx].field_0][5].field_0)
                s = _200 + 32
                t = sha3(sha3(stor6[idx].field_0, 3) + 5)
                while _200 + (32 * stor3[stor6[idx].field_0].field_1280) > s:
                    mem[s + 32] = address(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_199 + 160] = _200
                _270 = mem[64]
                mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1536) + 32
                mem[_270] = stor3[stor6[idx].field_0].field_1536
                if not stor3[stor6[idx].field_0].field_1536:
                    mem[_199 + 192] = _270
                    _277 = mem[64]
                    mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1792) + 32
                    mem[_277] = stor3[stor6[idx].field_0].field_1792
                    if stor3[stor6[idx].field_0].field_1792:
                        mem[0] = sha3(stor6[idx].field_0, 3) + 7
                        mem[_277 + 32] = stor3[stor6[idx].field_0][7].field_0
                        s = _277 + 32
                        t = sha3(sha3(stor6[idx].field_0, 3) + 7)
                        while _277 + (32 * stor3[stor6[idx].field_0].field_1792) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_199 + 224] = _277
                else:
                    mem[0] = sha3(stor6[idx].field_0, 3) + 6
                    mem[_270 + 32] = stor3[stor6[idx].field_0][6].field_0
                    s = _270 + 32
                    t = sha3(sha3(stor6[idx].field_0, 3) + 6)
                    while _270 + (32 * stor3[stor6[idx].field_0].field_1536) > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_199 + 192] = _270
                    _306 = mem[64]
                    mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1792) + 32
                    mem[_306] = stor3[stor6[idx].field_0].field_1792
                    if stor3[stor6[idx].field_0].field_1792:
                        mem[0] = sha3(stor6[idx].field_0, 3) + 7
                        mem[_306 + 32] = stor3[stor6[idx].field_0][7].field_0
                        s = _306 + 32
                        t = sha3(sha3(stor6[idx].field_0, 3) + 7)
                        while _306 + (32 * stor3[stor6[idx].field_0].field_1792) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_199 + 224] = _306
            mem[_199 + 256] = stor3[stor6[idx].field_0].field_2048
            mem[_199 + 288] = stor3[stor6[idx].field_0].field_2304
            mem[_199 + 320] = stor3[stor6[idx].field_0].field_2560
            mem[_199 + 352] = bool(uint8(stor3[stor6[idx].field_0].field_2816))
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _199
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _196 = mem[64]
        mem[mem[64]] = 32
        _202 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _202:
            mem[t] = u + -_196 - 64
            _238 = mem[s]
            mem[u] = mem[mem[s]]
            mem[u + 32] = mem[_238 + 44 len 20]
            mem[u + 64] = mem[_238 + 76 len 20]
            mem[u + 96] = mem[_238 + 96]
            mem[u + 128] = mem[_238 + 128]
            _252 = mem[_238 + 160]
            mem[u + 160] = 384
            _253 = mem[_252]
            mem[u + 384] = mem[_252]
            v = 0
            w = _252 + 32
            x = u + 416
            while v < _253:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _283 = mem[_238 + 192]
            mem[u + 192] = (32 * _253) + 416
            _286 = mem[_283]
            mem[u + (32 * _253) + 416] = mem[_283]
            v = 0
            w = _283 + 32
            x = u + (32 * _253) + 448
            while v < _286:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _296 = mem[_238 + 224]
            mem[u + 224] = (32 * _253) + (32 * _286) + 448
            _297 = mem[_296]
            mem[u + (32 * _253) + (32 * _286) + 448] = mem[_296]
            v = 0
            w = _296 + 32
            x = u + (32 * _253) + (32 * _286) + 480
            while v < _297:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            mem[u + 256] = mem[_238 + 256]
            mem[u + 288] = mem[_238 + 288]
            mem[u + 320] = mem[_238 + 320]
            mem[u + 352] = bool(mem[_238 + 352])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _253) + (32 * _286) + (32 * _297) + 480
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
    if address(stor3[arg1].field_256) != msg.sender:
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
    stor3[arg1].field_0 = 0
    address(stor3[arg1].field_256) = 0
    address(stor3[arg1].field_512) = 0
    stor3[arg1].field_768 = 0
    stor3[arg1].field_1024 = 0
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
    idx = 0
    while stor3[arg1].field_1792 > idx:
        stor3[arg1][idx + 7].field_0 = 0
        idx = idx + 1
        continue 
    stor3[arg1].field_2048 = 0
    stor3[arg1].field_2304 = 0
    stor3[arg1].field_2560 = 0
    uint8(stor3[arg1].field_2816) = 0
    mem[0] = address(stor3[arg1].field_256)
    idx = 0
    while idx < stor4[address(stor3[arg1].field_256)].field_0:
        if idx >= stor4[address(stor3[arg1].field_256)].field_0:
            revert with 0, 50
        if stor4[address(stor3[arg1].field_256)][idx].field_768 == arg1:
            if stor4[address(stor3[arg1].field_256)].field_0 < 1:
                revert with 0, 17
            if stor4[address(stor3[arg1].field_256)].field_0 - 1 >= stor4[address(stor3[arg1].field_256)].field_0:
                revert with 0, 50
            if idx >= stor4[address(stor3[arg1].field_256)].field_0:
                revert with 0, 50
            stor4[address(stor3[arg1].field_256)][idx].field_0 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
            address(stor4[address(stor3[arg1].field_256)][idx].field_256) = address(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0)
            address(stor4[address(stor3[arg1].field_256)][idx].field_512) = address(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0)
            stor4[address(stor3[arg1].field_256)][idx].field_768 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
            stor4[address(stor3[arg1].field_256)][idx].field_1024 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
            stor4[address(stor3[arg1].field_256)][idx].field_1280 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
            mem[0] = (12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 5
            if not stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0:
                s = sha3(mem[0])
                while sha3((12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 5) + stor4[address(stor3[arg1].field_256)][idx].field_1280 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_256)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_256)][idx].field_1536 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
                mem[0] = (12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 6
                if not stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0:
                    s = sha3(mem[0])
                    while sha3((12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 6) + stor4[address(stor3[arg1].field_256)][idx].field_1536 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_256)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_256)][idx].field_1792 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
                    mem[0] = (12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 7
                    if not stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0:
                        s = sha3(mem[0])
                        while sha3((12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 7) + stor4[address(stor3[arg1].field_256)][idx].field_1792 > s:
                            stor[s] = 0
                            mem[0] = address(stor3[arg1].field_256)
                            mem[32] = 4
                            s = s + 1
                            continue 
                    else:
                        mem[0] = (12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5
                        t = sha3((12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 7)
                        s = sha3(mem[0])
                        while sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 > s:
                            stor[t] = stor[s]
                            mem[0] = address(stor3[arg1].field_256)
                            mem[32] = 4
                            t = t + 1
                            s = s + 1
                            continue 
                        s = sha3((12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 7) + sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 - sha3(mem[0])
                        while sha3((12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 7) + stor4[address(stor3[arg1].field_256)][idx].field_1792 > s:
                            stor[s] = 0
                            mem[0] = address(stor3[arg1].field_256)
                            mem[32] = 4
                            s = s + 1
                            continue 
                    stor4[address(stor3[arg1].field_256)][idx].field_2048 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
                    stor4[address(stor3[arg1].field_256)][idx].field_2304 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
                    stor4[address(stor3[arg1].field_256)][idx].field_2560 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
                    uint8(stor4[address(stor3[arg1].field_256)][idx].field_2816) = uint8(bool(uint8(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0)))
                    if not stor4[address(stor3[arg1].field_256)].field_0:
                        revert with 0, 49
                    stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                    address(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0) = 0
                    address(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0) = 0
                    stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                    stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                    stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                    mem[0] = (12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 7
                    s = sha3(mem[0])
                    while sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 7) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_256)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                    mem[0] = (12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 6
                    s = sha3(mem[0])
                    while sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 6) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_256)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                    mem[0] = (12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5
                    s = sha3(mem[0])
                    while sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_256)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                    stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                    stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                    uint8(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0) = 0
                    stor4[address(stor3[arg1].field_256)].field_0--
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(stor3[arg1].field_256)
                    mem[32] = 4
                    idx = idx + 1
                    continue 
                mem[0] = (12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 6
                t = sha3((12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 6)
                s = sha3(mem[0])
                while sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 6) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 > s:
                    stor[t] = stor[s]
                    mem[0] = address(stor3[arg1].field_256)
                    mem[32] = 4
                    t = t + 1
                    s = s + 1
                    continue 
                s = sha3((12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 6) + sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 6) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 - sha3(mem[0])
                while sha3((12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 6) + stor4[address(stor3[arg1].field_256)][idx].field_1536 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_256)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_256)][idx].field_1792 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
                mem[0] = (12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 7
                if not stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0:
                    s = sha3(mem[0])
                    while sha3((12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 7) + stor4[address(stor3[arg1].field_256)][idx].field_1792 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_256)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_256)][idx].field_2048 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
                    stor4[address(stor3[arg1].field_256)][idx].field_2304 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
                    stor4[address(stor3[arg1].field_256)][idx].field_2560 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
                    uint8(stor4[address(stor3[arg1].field_256)][idx].field_2816) = uint8(bool(uint8(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0)))
                    if not stor4[address(stor3[arg1].field_256)].field_0:
                        revert with 0, 49
                    stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                    address(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0) = 0
                    address(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0) = 0
                    stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                    stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                    stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                    mem[0] = (12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 7
                    s = sha3(mem[0])
                    while sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 7) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_256)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                    mem[0] = (12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 6
                    s = sha3(mem[0])
                    while sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 6) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_256)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                    mem[0] = (12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5
                    s = sha3(mem[0])
                    while sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_256)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                    stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                    stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                    uint8(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0) = 0
                    stor4[address(stor3[arg1].field_256)].field_0--
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(stor3[arg1].field_256)
                    mem[32] = 4
                    idx = idx + 1
                    continue 
                mem[0] = (12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5
                t = sha3((12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 7)
                s = sha3(mem[0])
                while sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 > s:
                    stor[t] = stor[s]
                    mem[0] = address(stor3[arg1].field_256)
                    mem[32] = 4
                    t = t + 1
                    s = s + 1
                    continue 
                s = sha3((12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 7) + sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 - sha3(mem[0])
                while sha3((12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 7) + stor4[address(stor3[arg1].field_256)][idx].field_1792 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_256)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_256)][idx].field_2048 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
                stor4[address(stor3[arg1].field_256)][idx].field_2304 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
                stor4[address(stor3[arg1].field_256)][idx].field_2560 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
                uint8(stor4[address(stor3[arg1].field_256)][idx].field_2816) = uint8(bool(uint8(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0)))
                if not stor4[address(stor3[arg1].field_256)].field_0:
                    revert with 0, 49
                stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                address(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0) = 0
                address(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0) = 0
                stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                mem[0] = (12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 7
                s = sha3(mem[0])
                while sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 7) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_256)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                mem[0] = (12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 6
                s = sha3(mem[0])
                while sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 6) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_256)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                mem[0] = (12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5
                s = sha3(mem[0])
                while sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_256)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                uint8(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0) = 0
                stor4[address(stor3[arg1].field_256)].field_0--
                if sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 == -1:
                    revert with 0, 17
                mem[0] = address(stor3[arg1].field_256)
                mem[32] = 4
                s = sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 + 1
                continue 
            mem[0] = (12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 7
            t = sha3((12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 5)
            s = sha3(mem[0])
            while sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 7) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 > s:
                stor[t] = stor[s]
                mem[0] = address(stor3[arg1].field_256)
                mem[32] = 4
                t = t + 1
                s = s + 1
                continue 
            s = sha3((12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 5) + sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 7) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 - sha3(mem[0])
            while sha3((12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 5) + stor4[address(stor3[arg1].field_256)][idx].field_1280 > s:
                stor[s] = 0
                mem[0] = address(stor3[arg1].field_256)
                mem[32] = 4
                s = s + 1
                continue 
            stor4[address(stor3[arg1].field_256)][idx].field_1536 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
            mem[0] = (12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 6
            if not stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0:
                s = sha3(mem[0])
                while sha3((12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 6) + stor4[address(stor3[arg1].field_256)][idx].field_1536 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_256)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_256)][idx].field_1792 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
                mem[0] = (12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 7
                if not stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0:
                    s = sha3(mem[0])
                    while sha3((12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 7) + stor4[address(stor3[arg1].field_256)][idx].field_1792 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_256)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_256)][idx].field_2048 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
                    stor4[address(stor3[arg1].field_256)][idx].field_2304 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
                    stor4[address(stor3[arg1].field_256)][idx].field_2560 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
                    uint8(stor4[address(stor3[arg1].field_256)][idx].field_2816) = uint8(bool(uint8(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0)))
                    if not stor4[address(stor3[arg1].field_256)].field_0:
                        revert with 0, 49
                    stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                    address(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0) = 0
                    address(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0) = 0
                    stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                    stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                    stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                    mem[0] = (12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 7
                    s = sha3(mem[0])
                    while sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 7) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_256)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                    mem[0] = (12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 6
                    s = sha3(mem[0])
                    while sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 6) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_256)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                    mem[0] = (12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5
                    s = sha3(mem[0])
                    while sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_256)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                    stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                    stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                    uint8(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0) = 0
                    stor4[address(stor3[arg1].field_256)].field_0--
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(stor3[arg1].field_256)
                    mem[32] = 4
                    idx = idx + 1
                    continue 
                mem[0] = (12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5
                t = sha3((12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 7)
                s = sha3(mem[0])
                while sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 > s:
                    stor[t] = stor[s]
                    mem[0] = address(stor3[arg1].field_256)
                    mem[32] = 4
                    t = t + 1
                    s = s + 1
                    continue 
                s = sha3((12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 7) + sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 - sha3(mem[0])
                while sha3((12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 7) + stor4[address(stor3[arg1].field_256)][idx].field_1792 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_256)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_256)][idx].field_2048 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
                stor4[address(stor3[arg1].field_256)][idx].field_2304 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
                stor4[address(stor3[arg1].field_256)][idx].field_2560 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
                uint8(stor4[address(stor3[arg1].field_256)][idx].field_2816) = uint8(bool(uint8(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0)))
                if not stor4[address(stor3[arg1].field_256)].field_0:
                    revert with 0, 49
                stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                address(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0) = 0
                address(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0) = 0
                stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                mem[0] = (12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 7
                s = sha3(mem[0])
                while sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 7) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_256)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                mem[0] = (12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 6
                s = sha3(mem[0])
                while sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 6) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_256)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                mem[0] = (12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5
                s = sha3(mem[0])
                while sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_256)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                uint8(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0) = 0
                stor4[address(stor3[arg1].field_256)].field_0--
                if sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 == -1:
                    revert with 0, 17
                mem[0] = address(stor3[arg1].field_256)
                mem[32] = 4
                s = sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 + 1
                continue 
            mem[0] = (12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 6
            t = sha3((12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 6)
            s = sha3(mem[0])
            while sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 6) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 > s:
                stor[t] = stor[s]
                mem[0] = address(stor3[arg1].field_256)
                mem[32] = 4
                t = t + 1
                s = s + 1
                continue 
            s = sha3((12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 6) + sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 6) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 - sha3(mem[0])
            while sha3((12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 6) + stor4[address(stor3[arg1].field_256)][idx].field_1536 > s:
                stor[s] = 0
                mem[0] = address(stor3[arg1].field_256)
                mem[32] = 4
                s = s + 1
                continue 
            stor4[address(stor3[arg1].field_256)][idx].field_1792 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
            mem[0] = (12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 7
            if not stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0:
                s = sha3(mem[0])
                while sha3((12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 7) + stor4[address(stor3[arg1].field_256)][idx].field_1792 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_256)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_256)][idx].field_2048 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
                stor4[address(stor3[arg1].field_256)][idx].field_2304 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
                stor4[address(stor3[arg1].field_256)][idx].field_2560 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
                uint8(stor4[address(stor3[arg1].field_256)][idx].field_2816) = uint8(bool(uint8(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0)))
                if not stor4[address(stor3[arg1].field_256)].field_0:
                    revert with 0, 49
                stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                address(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0) = 0
                address(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0) = 0
                stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                mem[0] = (12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 7
                s = sha3(mem[0])
                while sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 7) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_256)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                mem[0] = (12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 6
                s = sha3(mem[0])
                while sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 6) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_256)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                mem[0] = (12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5
                s = sha3(mem[0])
                while sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_256)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
                uint8(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0) = 0
                stor4[address(stor3[arg1].field_256)].field_0--
                if sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 == -1:
                    revert with 0, 17
                mem[0] = address(stor3[arg1].field_256)
                mem[32] = 4
                s = sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 + 1
                continue 
            mem[0] = (12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5
            t = sha3((12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 7)
            s = sha3(mem[0])
            while sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 > s:
                stor[t] = stor[s]
                mem[0] = address(stor3[arg1].field_256)
                mem[32] = 4
                t = t + 1
                s = s + 1
                continue 
            s = sha3((12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 7) + sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 - sha3(mem[0])
            while sha3((12 * idx) + sha3(sha3(address(stor3[arg1].field_256), 4)) + 7) + stor4[address(stor3[arg1].field_256)][idx].field_1792 > s:
                stor[s] = 0
                mem[0] = address(stor3[arg1].field_256)
                mem[32] = 4
                s = s + 1
                continue 
            stor4[address(stor3[arg1].field_256)][idx].field_2048 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
            stor4[address(stor3[arg1].field_256)][idx].field_2304 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
            stor4[address(stor3[arg1].field_256)][idx].field_2560 = stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0
            uint8(stor4[address(stor3[arg1].field_256)][idx].field_2816) = uint8(bool(uint8(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0)))
            if not stor4[address(stor3[arg1].field_256)].field_0:
                revert with 0, 49
            stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
            address(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0) = 0
            address(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0) = 0
            stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
            stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
            stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
            mem[0] = (12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 7
            s = sha3(mem[0])
            while sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 7) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 > s:
                stor[s] = 0
                mem[0] = address(stor3[arg1].field_256)
                mem[32] = 4
                s = s + 1
                continue 
            stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
            mem[0] = (12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 6
            s = sha3(mem[0])
            while sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 6) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 > s:
                stor[s] = 0
                mem[0] = address(stor3[arg1].field_256)
                mem[32] = 4
                s = s + 1
                continue 
            stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
            mem[0] = (12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5
            s = sha3(mem[0])
            while sha3((12 * stor4[address(stor3[arg1].field_256)].field_0) + sha3(sha3(address(stor3[arg1].field_256), 4)) - 5) + stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 > s:
                stor[s] = 0
                mem[0] = address(stor3[arg1].field_256)
                mem[32] = 4
                s = s + 1
                continue 
            stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
            stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
            stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0 = 0
            uint8(stor4[address(stor3[arg1].field_256)][stor4[address(stor3[arg1].field_256)].field_0].field_0) = 0
            stor4[address(stor3[arg1].field_256)].field_0--
        if idx == -1:
            revert with 0, 17
        mem[0] = address(stor3[arg1].field_256)
        mem[32] = 4
        idx = idx + 1
        continue 
    if not uint8(stor3[arg1].field_2816):
        call address(stor3[arg1].field_256) with:
           value stor3[arg1].field_2048 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x6fe9d303: arg1
    return 1
}



}
