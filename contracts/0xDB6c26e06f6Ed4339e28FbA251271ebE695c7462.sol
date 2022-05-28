contract main {




// =====================  Runtime code  =====================


#
#  - sub_31983366(?)
#  - getOffer(uint256 arg1)
#  - sub_8f05be52(?)
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
        _32 = mem[64]
        mem[64] = mem[64] + 320
        mem[_32] = address(stor4[address(arg1)][idx].field_0)
        mem[_32 + 32] = address(stor4[address(arg1)][idx].field_256)
        mem[_32 + 64] = stor4[address(arg1)][idx].field_512
        _33 = mem[64]
        mem[64] = mem[64] + (32 * stor4[address(arg1)][idx].field_768) + 32
        mem[_33] = stor4[address(arg1)][idx].field_768
        if not stor4[address(arg1)][idx].field_768:
            mem[_32 + 96] = _33
            _35 = mem[64]
            mem[64] = mem[64] + (32 * stor4[address(arg1)][idx].field_1024) + 32
            mem[_35] = stor4[address(arg1)][idx].field_1024
            if not stor4[address(arg1)][idx].field_1024:
                mem[_32 + 128] = _35
                _38 = mem[64]
                mem[64] = mem[64] + (32 * stor4[address(arg1)][idx].field_1280) + 32
                mem[_38] = stor4[address(arg1)][idx].field_1280
                if stor4[address(arg1)][idx].field_1280:
                    mem[0] = sha3(sha3(address(arg1), 4)) + (10 * idx) + 5
                    mem[_38 + 32] = stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + (10 * idx) + 5)].field_0
                    t = _38 + 32
                    u = sha3(mem[0])
                    while _38 + (32 * stor4[address(arg1)][idx].field_1280) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_32 + 160] = _38
            else:
                mem[0] = sha3(sha3(address(arg1), 4)) + (10 * idx) + 4
                mem[_35 + 32] = stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + (10 * idx) + 4)].field_0
                t = _35 + 32
                u = sha3(mem[0])
                while _35 + (32 * stor4[address(arg1)][idx].field_1024) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_32 + 128] = _35
                _77 = mem[64]
                mem[64] = mem[64] + (32 * stor4[address(arg1)][idx].field_1280) + 32
                mem[_77] = stor4[address(arg1)][idx].field_1280
                if stor4[address(arg1)][idx].field_1280:
                    mem[0] = sha3(sha3(address(arg1), 4)) + (10 * idx) + 5
                    mem[_77 + 32] = stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + (10 * idx) + 5)].field_0
                    t = _77 + 32
                    u = sha3(mem[0])
                    while _77 + (32 * stor4[address(arg1)][idx].field_1280) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_32 + 160] = _77
            mem[_32 + 192] = stor4[address(arg1)][idx].field_1536
            mem[_32 + 224] = stor4[address(arg1)][idx].field_1792
            mem[_32 + 256] = stor4[address(arg1)][idx].field_2048
            mem[_32 + 288] = bool(uint8(stor4[address(arg1)][idx].field_2304))
            mem[s] = _32
            s = s + 32
            idx = idx + 1
            continue 
        mem[0] = sha3(sha3(address(arg1), 4)) + (10 * idx) + 3
        mem[_33 + 32] = address(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + (10 * idx) + 3)].field_0)
        t = _33 + 32
        u = sha3(mem[0])
        while _33 + (32 * stor4[address(arg1)][u].field_768) > t:
            mem[t + 32] = address(stor1[u])
            t = t + 32
            u = u + 1
            continue 
        mem[_32 + 96] = _33
        _78 = mem[64]
        mem[64] = mem[64] + (32 * stor4[address(arg1)][u].field_1024) + 32
        mem[_78] = stor4[address(arg1)][u].field_1024
        if not stor4[address(arg1)][u].field_1024:
            mem[_32 + 128] = _78
            _81 = mem[64]
            mem[64] = mem[64] + (32 * stor4[address(arg1)][u].field_1280) + 32
            mem[_81] = stor4[address(arg1)][u].field_1280
            if stor4[address(arg1)][u].field_1280:
                mem[0] = sha3(sha3(address(arg1), 4)) + (10 * u) + 5
                mem[_81 + 32] = stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + (10 * u) + 5)].field_0
                s = _81 + 32
                v = sha3(mem[0])
                while _81 + (32 * stor4[address(arg1)][u].field_1280) > s:
                    mem[s + 32] = uint256(stor1[v])
                    s = s + 32
                    v = v + 1
                    continue 
            mem[_32 + 160] = _81
        else:
            mem[0] = sha3(sha3(address(arg1), 4)) + (10 * u) + 4
            mem[_78 + 32] = stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + (10 * u) + 4)].field_0
            s = _78 + 32
            v = sha3(mem[0])
            while _78 + (32 * stor4[address(arg1)][u].field_1024) > s:
                mem[s + 32] = uint256(stor1[v])
                s = s + 32
                v = v + 1
                continue 
            mem[_32 + 128] = _78
            _102 = mem[64]
            mem[64] = mem[64] + (32 * stor4[address(arg1)][u].field_1280) + 32
            mem[_102] = stor4[address(arg1)][u].field_1280
            if stor4[address(arg1)][u].field_1280:
                mem[0] = sha3(sha3(address(arg1), 4)) + (10 * u) + 5
                mem[_102 + 32] = stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + (10 * u) + 5)].field_0
                s = _102 + 32
                v = sha3(mem[0])
                while _102 + (32 * stor4[address(arg1)][u].field_1280) > s:
                    mem[s + 32] = uint256(stor1[v])
                    s = s + 32
                    v = v + 1
                    continue 
            mem[_32 + 160] = _102
        mem[_32 + 192] = stor4[address(arg1)][u].field_1536
        mem[_32 + 224] = stor4[address(arg1)][u].field_1792
        mem[_32 + 256] = stor4[address(arg1)][u].field_2048
        mem[_32 + 288] = bool(uint8(stor4[address(arg1)][u].field_2304))
        mem[t] = _32
        t = t + 32
        u = u + 1
        continue 
    _34 = mem[64]
    mem[mem[64]] = 32
    _37 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    u = mem[64] + (32 * mem[96]) + 64
    while idx < _37:
        mem[t] = u + -_34 - 64
        _59 = mem[s]
        mem[u] = mem[mem[s] + 12 len 20]
        mem[u + 32] = mem[_59 + 44 len 20]
        mem[u + 64] = mem[_59 + 64]
        _64 = mem[_59 + 96]
        mem[u + 96] = 320
        _65 = mem[_64]
        mem[u + 320] = mem[_64]
        v = 0
        w = _64 + 32
        x = u + 352
        while v < _65:
            mem[x] = mem[w + 12 len 20]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        _83 = mem[_59 + 128]
        mem[u + 128] = (32 * _65) + 352
        _85 = mem[_83]
        mem[u + (32 * _65) + 352] = mem[_83]
        v = 0
        w = _83 + 32
        x = u + (32 * _65) + 384
        while v < _85:
            mem[x] = mem[w]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        _95 = mem[_59 + 160]
        mem[u + 160] = (32 * _65) + (32 * _85) + 384
        _96 = mem[_95]
        mem[u + (32 * _65) + (32 * _85) + 384] = mem[_95]
        v = 0
        w = _95 + 32
        x = u + (32 * _65) + (32 * _85) + 416
        while v < _96:
            mem[x] = mem[w]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        mem[u + 192] = mem[_59 + 192]
        mem[u + 224] = mem[_59 + 224]
        mem[u + 256] = mem[_59 + 256]
        mem[u + 288] = bool(mem[_59 + 288])
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = u + (32 * _65) + (32 * _85) + (32 * _96) + 416
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
            _67 = mem[64]
            mem[64] = mem[64] + 320
            mem[_67] = address(stor3[stor6[idx].field_0].field_0)
            mem[_67 + 32] = address(stor3[stor6[idx].field_0].field_256)
            mem[_67 + 64] = stor3[stor6[idx].field_0].field_512
            _68 = mem[64]
            mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_768) + 32
            mem[_68] = stor3[stor6[idx].field_0].field_768
            if not stor3[stor6[idx].field_0].field_768:
                mem[_67 + 96] = _68
                _70 = mem[64]
                mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1024) + 32
                mem[_70] = stor3[stor6[idx].field_0].field_1024
                if not stor3[stor6[idx].field_0].field_1024:
                    mem[_67 + 128] = _70
                    _72 = mem[64]
                    mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1280) + 32
                    mem[_72] = stor3[stor6[idx].field_0].field_1280
                    if stor3[stor6[idx].field_0].field_1280:
                        mem[0] = sha3(stor6[idx].field_0, 3) + 5
                        mem[_72 + 32] = stor3[stor6[idx].field_0][5].field_0
                        s = _72 + 32
                        t = sha3(sha3(stor6[idx].field_0, 3) + 5)
                        while _72 + (32 * stor3[stor6[idx].field_0].field_1280) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_67 + 160] = _72
                else:
                    mem[0] = sha3(stor6[idx].field_0, 3) + 4
                    mem[_70 + 32] = stor3[stor6[idx].field_0][4].field_0
                    s = _70 + 32
                    t = sha3(sha3(stor6[idx].field_0, 3) + 4)
                    while _70 + (32 * stor3[stor6[idx].field_0].field_1024) > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_67 + 128] = _70
                    _174 = mem[64]
                    mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1280) + 32
                    mem[_174] = stor3[stor6[idx].field_0].field_1280
                    if stor3[stor6[idx].field_0].field_1280:
                        mem[0] = sha3(stor6[idx].field_0, 3) + 5
                        mem[_174 + 32] = stor3[stor6[idx].field_0][5].field_0
                        s = _174 + 32
                        t = sha3(sha3(stor6[idx].field_0, 3) + 5)
                        while _174 + (32 * stor3[stor6[idx].field_0].field_1280) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_67 + 160] = _174
            else:
                mem[0] = sha3(stor6[idx].field_0, 3) + 3
                mem[_68 + 32] = address(stor3[stor6[idx].field_0][3].field_0)
                s = _68 + 32
                t = sha3(sha3(stor6[idx].field_0, 3) + 3)
                while _68 + (32 * stor3[stor6[idx].field_0].field_768) > s:
                    mem[s + 32] = address(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_67 + 96] = _68
                _175 = mem[64]
                mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1024) + 32
                mem[_175] = stor3[stor6[idx].field_0].field_1024
                if not stor3[stor6[idx].field_0].field_1024:
                    mem[_67 + 128] = _175
                    _179 = mem[64]
                    mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1280) + 32
                    mem[_179] = stor3[stor6[idx].field_0].field_1280
                    if stor3[stor6[idx].field_0].field_1280:
                        mem[0] = sha3(stor6[idx].field_0, 3) + 5
                        mem[_179 + 32] = stor3[stor6[idx].field_0][5].field_0
                        s = _179 + 32
                        t = sha3(sha3(stor6[idx].field_0, 3) + 5)
                        while _179 + (32 * stor3[stor6[idx].field_0].field_1280) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_67 + 160] = _179
                else:
                    mem[0] = sha3(stor6[idx].field_0, 3) + 4
                    mem[_175 + 32] = stor3[stor6[idx].field_0][4].field_0
                    s = _175 + 32
                    t = sha3(sha3(stor6[idx].field_0, 3) + 4)
                    while _175 + (32 * stor3[stor6[idx].field_0].field_1024) > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_67 + 128] = _175
                    _251 = mem[64]
                    mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1280) + 32
                    mem[_251] = stor3[stor6[idx].field_0].field_1280
                    if stor3[stor6[idx].field_0].field_1280:
                        mem[0] = sha3(stor6[idx].field_0, 3) + 5
                        mem[_251 + 32] = stor3[stor6[idx].field_0][5].field_0
                        s = _251 + 32
                        t = sha3(sha3(stor6[idx].field_0, 3) + 5)
                        while _251 + (32 * stor3[stor6[idx].field_0].field_1280) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_67 + 160] = _251
            mem[_67 + 192] = stor3[stor6[idx].field_0].field_1536
            mem[_67 + 224] = stor3[stor6[idx].field_0].field_1792
            mem[_67 + 256] = stor3[stor6[idx].field_0].field_2048
            mem[_67 + 288] = bool(uint8(stor3[stor6[idx].field_0].field_2304))
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _67
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _64 = mem[64]
        mem[mem[64]] = 32
        _69 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _69:
            mem[t] = u + -_64 - 64
            _125 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            mem[u + 32] = mem[_125 + 44 len 20]
            mem[u + 64] = mem[_125 + 64]
            _130 = mem[_125 + 96]
            mem[u + 96] = 320
            _136 = mem[_130]
            mem[u + 320] = mem[_130]
            v = 0
            w = _130 + 32
            x = u + 352
            while v < _136:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _181 = mem[_125 + 128]
            mem[u + 128] = (32 * _136) + 352
            _189 = mem[_181]
            mem[u + (32 * _136) + 352] = mem[_181]
            v = 0
            w = _181 + 32
            x = u + (32 * _136) + 384
            while v < _189:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _225 = mem[_125 + 160]
            mem[u + 160] = (32 * _136) + (32 * _189) + 384
            _228 = mem[_225]
            mem[u + (32 * _136) + (32 * _189) + 384] = mem[_225]
            v = 0
            w = _225 + 32
            x = u + (32 * _136) + (32 * _189) + 416
            while v < _228:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            mem[u + 192] = mem[_125 + 192]
            mem[u + 224] = mem[_125 + 224]
            mem[u + 256] = mem[_125 + 256]
            mem[u + 288] = bool(mem[_125 + 288])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _136) + (32 * _189) + (32 * _228) + 416
            continue 
    else:
        mem[64] = (32 * stor6.length) + 448
        mem[(32 * stor6.length) + 128] = 0
        mem[(32 * stor6.length) + 160] = 0
        mem[(32 * stor6.length) + 192] = 0
        mem[(32 * stor6.length) + 224] = 96
        mem[(32 * stor6.length) + 256] = 96
        mem[(32 * stor6.length) + 288] = 96
        mem[(32 * stor6.length) + 320] = 0
        mem[(32 * stor6.length) + 352] = 0
        mem[(32 * stor6.length) + 384] = 0
        mem[(32 * stor6.length) + 416] = 0
        mem[var9001] = (32 * stor6.length) + 128
        s = var9001
        idx = var9002
        while idx - 1:
            mem[64] = mem[64] + 320
            mem[(32 * stor6.length) + 128] = 0
            mem[(32 * stor6.length) + 160] = 0
            mem[(32 * stor6.length) + 192] = 0
            mem[(32 * stor6.length) + 224] = 96
            mem[(32 * stor6.length) + 256] = 96
            mem[(32 * stor6.length) + 288] = 96
            mem[(32 * stor6.length) + 320] = 0
            mem[(32 * stor6.length) + 352] = 0
            mem[(32 * stor6.length) + 384] = 0
            mem[(32 * stor6.length) + 416] = 0
            mem[s + 32] = (32 * stor6.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < stor6.length:
            mem[0] = stor6[idx].field_0
            mem[32] = 3
            _187 = mem[64]
            mem[64] = mem[64] + 320
            mem[_187] = address(stor3[stor6[idx].field_0].field_0)
            mem[_187 + 32] = address(stor3[stor6[idx].field_0].field_256)
            mem[_187 + 64] = stor3[stor6[idx].field_0].field_512
            _188 = mem[64]
            mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_768) + 32
            mem[_188] = stor3[stor6[idx].field_0].field_768
            if not stor3[stor6[idx].field_0].field_768:
                mem[_187 + 96] = _188
                _191 = mem[64]
                mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1024) + 32
                mem[_191] = stor3[stor6[idx].field_0].field_1024
                if not stor3[stor6[idx].field_0].field_1024:
                    mem[_187 + 128] = _191
                    _193 = mem[64]
                    mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1280) + 32
                    mem[_193] = stor3[stor6[idx].field_0].field_1280
                    if stor3[stor6[idx].field_0].field_1280:
                        mem[0] = sha3(stor6[idx].field_0, 3) + 5
                        mem[_193 + 32] = stor3[stor6[idx].field_0][5].field_0
                        s = _193 + 32
                        t = sha3(sha3(stor6[idx].field_0, 3) + 5)
                        while _193 + (32 * stor3[stor6[idx].field_0].field_1280) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_187 + 160] = _193
                else:
                    mem[0] = sha3(stor6[idx].field_0, 3) + 4
                    mem[_191 + 32] = stor3[stor6[idx].field_0][4].field_0
                    s = _191 + 32
                    t = sha3(sha3(stor6[idx].field_0, 3) + 4)
                    while _191 + (32 * stor3[stor6[idx].field_0].field_1024) > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_187 + 128] = _191
                    _253 = mem[64]
                    mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1280) + 32
                    mem[_253] = stor3[stor6[idx].field_0].field_1280
                    if stor3[stor6[idx].field_0].field_1280:
                        mem[0] = sha3(stor6[idx].field_0, 3) + 5
                        mem[_253 + 32] = stor3[stor6[idx].field_0][5].field_0
                        s = _253 + 32
                        t = sha3(sha3(stor6[idx].field_0, 3) + 5)
                        while _253 + (32 * stor3[stor6[idx].field_0].field_1280) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_187 + 160] = _253
            else:
                mem[0] = sha3(stor6[idx].field_0, 3) + 3
                mem[_188 + 32] = address(stor3[stor6[idx].field_0][3].field_0)
                s = _188 + 32
                t = sha3(sha3(stor6[idx].field_0, 3) + 3)
                while _188 + (32 * stor3[stor6[idx].field_0].field_768) > s:
                    mem[s + 32] = address(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_187 + 96] = _188
                _254 = mem[64]
                mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1024) + 32
                mem[_254] = stor3[stor6[idx].field_0].field_1024
                if not stor3[stor6[idx].field_0].field_1024:
                    mem[_187 + 128] = _254
                    _261 = mem[64]
                    mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1280) + 32
                    mem[_261] = stor3[stor6[idx].field_0].field_1280
                    if stor3[stor6[idx].field_0].field_1280:
                        mem[0] = sha3(stor6[idx].field_0, 3) + 5
                        mem[_261 + 32] = stor3[stor6[idx].field_0][5].field_0
                        s = _261 + 32
                        t = sha3(sha3(stor6[idx].field_0, 3) + 5)
                        while _261 + (32 * stor3[stor6[idx].field_0].field_1280) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_187 + 160] = _261
                else:
                    mem[0] = sha3(stor6[idx].field_0, 3) + 4
                    mem[_254 + 32] = stor3[stor6[idx].field_0][4].field_0
                    s = _254 + 32
                    t = sha3(sha3(stor6[idx].field_0, 3) + 4)
                    while _254 + (32 * stor3[stor6[idx].field_0].field_1024) > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_187 + 128] = _254
                    _290 = mem[64]
                    mem[64] = mem[64] + (32 * stor3[stor6[idx].field_0].field_1280) + 32
                    mem[_290] = stor3[stor6[idx].field_0].field_1280
                    if stor3[stor6[idx].field_0].field_1280:
                        mem[0] = sha3(stor6[idx].field_0, 3) + 5
                        mem[_290 + 32] = stor3[stor6[idx].field_0][5].field_0
                        s = _290 + 32
                        t = sha3(sha3(stor6[idx].field_0, 3) + 5)
                        while _290 + (32 * stor3[stor6[idx].field_0].field_1280) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_187 + 160] = _290
            mem[_187 + 192] = stor3[stor6[idx].field_0].field_1536
            mem[_187 + 224] = stor3[stor6[idx].field_0].field_1792
            mem[_187 + 256] = stor3[stor6[idx].field_0].field_2048
            mem[_187 + 288] = bool(uint8(stor3[stor6[idx].field_0].field_2304))
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _187
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _184 = mem[64]
        mem[mem[64]] = 32
        _190 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _190:
            mem[t] = u + -_184 - 64
            _224 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            mem[u + 32] = mem[_224 + 44 len 20]
            mem[u + 64] = mem[_224 + 64]
            _236 = mem[_224 + 96]
            mem[u + 96] = 320
            _237 = mem[_236]
            mem[u + 320] = mem[_236]
            v = 0
            w = _236 + 32
            x = u + 352
            while v < _237:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _267 = mem[_224 + 128]
            mem[u + 128] = (32 * _237) + 352
            _270 = mem[_267]
            mem[u + (32 * _237) + 352] = mem[_267]
            v = 0
            w = _267 + 32
            x = u + (32 * _237) + 384
            while v < _270:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _280 = mem[_224 + 160]
            mem[u + 160] = (32 * _237) + (32 * _270) + 384
            _281 = mem[_280]
            mem[u + (32 * _237) + (32 * _270) + 384] = mem[_280]
            v = 0
            w = _280 + 32
            x = u + (32 * _237) + (32 * _270) + 416
            while v < _281:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            mem[u + 192] = mem[_224 + 192]
            mem[u + 224] = mem[_224 + 224]
            mem[u + 256] = mem[_224 + 256]
            mem[u + 288] = bool(mem[_224 + 288])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _237) + (32 * _270) + (32 * _281) + 416
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
    idx = 0
    while stor3[arg1].field_768 > idx:
        stor3[arg1][idx + 3].field_0 = 0
        idx = idx + 1
        continue 
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
    stor3[arg1].field_1792 = 0
    stor3[arg1].field_2048 = 0
    uint8(stor3[arg1].field_2304) = 0
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
            mem[0] = (10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 3
            if not stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0:
                s = sha3(mem[0])
                while sha3((10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 3) + stor4[address(stor3[arg1].field_0)][idx].field_768 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_0)][idx].field_1024 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                mem[0] = (10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 4
                if not stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0:
                    s = sha3(mem[0])
                    while sha3((10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 4) + stor4[address(stor3[arg1].field_0)][idx].field_1024 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_0)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_0)][idx].field_1280 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                    mem[0] = (10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5
                    if not stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0:
                        s = sha3(mem[0])
                        while sha3((10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5) + stor4[address(stor3[arg1].field_0)][idx].field_1280 > s:
                            stor[s] = 0
                            mem[0] = address(stor3[arg1].field_0)
                            mem[32] = 4
                            s = s + 1
                            continue 
                    else:
                        mem[0] = (10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5
                        t = sha3((10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5)
                        s = sha3(mem[0])
                        while sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                            stor[t] = stor[s]
                            mem[0] = address(stor3[arg1].field_0)
                            mem[32] = 4
                            t = t + 1
                            s = s + 1
                            continue 
                        s = sha3((10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5) + sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 - sha3(mem[0])
                        while sha3((10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5) + stor4[address(stor3[arg1].field_0)][idx].field_1280 > s:
                            stor[s] = 0
                            mem[0] = address(stor3[arg1].field_0)
                            mem[32] = 4
                            s = s + 1
                            continue 
                    stor4[address(stor3[arg1].field_0)][idx].field_1536 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                    stor4[address(stor3[arg1].field_0)][idx].field_1792 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                    stor4[address(stor3[arg1].field_0)][idx].field_2048 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                    uint8(stor4[address(stor3[arg1].field_0)][idx].field_2304) = uint8(bool(uint8(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0)))
                    if not stor4[address(stor3[arg1].field_0)].field_0:
                        revert with 0, 49
                    address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                    address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    mem[0] = (10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7
                    s = sha3(mem[0])
                    while sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_0)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    mem[0] = (10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6
                    s = sha3(mem[0])
                    while sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_0)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    mem[0] = (10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5
                    s = sha3(mem[0])
                    while sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
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
                mem[0] = (10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6
                t = sha3((10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 4)
                s = sha3(mem[0])
                while sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                    stor[t] = stor[s]
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    t = t + 1
                    s = s + 1
                    continue 
                s = sha3((10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 4) + sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 - sha3(mem[0])
                while sha3((10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 4) + stor4[address(stor3[arg1].field_0)][idx].field_1024 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_0)][idx].field_1280 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                mem[0] = (10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5
                if not stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0:
                    s = sha3(mem[0])
                    while sha3((10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5) + stor4[address(stor3[arg1].field_0)][idx].field_1280 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_0)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_0)][idx].field_1536 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                    stor4[address(stor3[arg1].field_0)][idx].field_1792 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                    stor4[address(stor3[arg1].field_0)][idx].field_2048 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                    uint8(stor4[address(stor3[arg1].field_0)][idx].field_2304) = uint8(bool(uint8(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0)))
                    if not stor4[address(stor3[arg1].field_0)].field_0:
                        revert with 0, 49
                    address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                    address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    mem[0] = (10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7
                    s = sha3(mem[0])
                    while sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_0)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    mem[0] = (10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6
                    s = sha3(mem[0])
                    while sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_0)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    mem[0] = (10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5
                    s = sha3(mem[0])
                    while sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
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
                mem[0] = (10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5
                t = sha3((10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5)
                s = sha3(mem[0])
                while sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                    stor[t] = stor[s]
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    t = t + 1
                    s = s + 1
                    continue 
                s = sha3((10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5) + sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 - sha3(mem[0])
                while sha3((10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5) + stor4[address(stor3[arg1].field_0)][idx].field_1280 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_0)][idx].field_1536 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                stor4[address(stor3[arg1].field_0)][idx].field_1792 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                stor4[address(stor3[arg1].field_0)][idx].field_2048 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                uint8(stor4[address(stor3[arg1].field_0)][idx].field_2304) = uint8(bool(uint8(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0)))
                if not stor4[address(stor3[arg1].field_0)].field_0:
                    revert with 0, 49
                address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                mem[0] = (10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7
                s = sha3(mem[0])
                while sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                mem[0] = (10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6
                s = sha3(mem[0])
                while sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                mem[0] = (10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5
                s = sha3(mem[0])
                while sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
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
                if sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 == -1:
                    revert with 0, 17
                mem[0] = address(stor3[arg1].field_0)
                mem[32] = 4
                s = sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 + 1
                continue 
            mem[0] = (10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7
            t = sha3((10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 3)
            s = sha3(mem[0])
            while sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                stor[t] = stor[s]
                mem[0] = address(stor3[arg1].field_0)
                mem[32] = 4
                t = t + 1
                s = s + 1
                continue 
            s = sha3((10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 3) + sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 - sha3(mem[0])
            while sha3((10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 3) + stor4[address(stor3[arg1].field_0)][idx].field_768 > s:
                stor[s] = 0
                mem[0] = address(stor3[arg1].field_0)
                mem[32] = 4
                s = s + 1
                continue 
            stor4[address(stor3[arg1].field_0)][idx].field_1024 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
            mem[0] = (10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 4
            if not stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0:
                s = sha3(mem[0])
                while sha3((10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 4) + stor4[address(stor3[arg1].field_0)][idx].field_1024 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_0)][idx].field_1280 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                mem[0] = (10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5
                if not stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0:
                    s = sha3(mem[0])
                    while sha3((10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5) + stor4[address(stor3[arg1].field_0)][idx].field_1280 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_0)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_0)][idx].field_1536 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                    stor4[address(stor3[arg1].field_0)][idx].field_1792 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                    stor4[address(stor3[arg1].field_0)][idx].field_2048 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                    uint8(stor4[address(stor3[arg1].field_0)][idx].field_2304) = uint8(bool(uint8(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0)))
                    if not stor4[address(stor3[arg1].field_0)].field_0:
                        revert with 0, 49
                    address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                    address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    mem[0] = (10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7
                    s = sha3(mem[0])
                    while sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_0)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    mem[0] = (10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6
                    s = sha3(mem[0])
                    while sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor3[arg1].field_0)
                        mem[32] = 4
                        s = s + 1
                        continue 
                    stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                    mem[0] = (10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5
                    s = sha3(mem[0])
                    while sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
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
                mem[0] = (10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5
                t = sha3((10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5)
                s = sha3(mem[0])
                while sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                    stor[t] = stor[s]
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    t = t + 1
                    s = s + 1
                    continue 
                s = sha3((10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5) + sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 - sha3(mem[0])
                while sha3((10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5) + stor4[address(stor3[arg1].field_0)][idx].field_1280 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_0)][idx].field_1536 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                stor4[address(stor3[arg1].field_0)][idx].field_1792 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                stor4[address(stor3[arg1].field_0)][idx].field_2048 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                uint8(stor4[address(stor3[arg1].field_0)][idx].field_2304) = uint8(bool(uint8(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0)))
                if not stor4[address(stor3[arg1].field_0)].field_0:
                    revert with 0, 49
                address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                mem[0] = (10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7
                s = sha3(mem[0])
                while sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                mem[0] = (10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6
                s = sha3(mem[0])
                while sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                mem[0] = (10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5
                s = sha3(mem[0])
                while sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
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
                if sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 == -1:
                    revert with 0, 17
                mem[0] = address(stor3[arg1].field_0)
                mem[32] = 4
                s = sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 + 1
                continue 
            mem[0] = (10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6
            t = sha3((10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 4)
            s = sha3(mem[0])
            while sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                stor[t] = stor[s]
                mem[0] = address(stor3[arg1].field_0)
                mem[32] = 4
                t = t + 1
                s = s + 1
                continue 
            s = sha3((10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 4) + sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 - sha3(mem[0])
            while sha3((10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 4) + stor4[address(stor3[arg1].field_0)][idx].field_1024 > s:
                stor[s] = 0
                mem[0] = address(stor3[arg1].field_0)
                mem[32] = 4
                s = s + 1
                continue 
            stor4[address(stor3[arg1].field_0)][idx].field_1280 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
            mem[0] = (10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5
            if not stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0:
                s = sha3(mem[0])
                while sha3((10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5) + stor4[address(stor3[arg1].field_0)][idx].field_1280 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_0)][idx].field_1536 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                stor4[address(stor3[arg1].field_0)][idx].field_1792 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                stor4[address(stor3[arg1].field_0)][idx].field_2048 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
                uint8(stor4[address(stor3[arg1].field_0)][idx].field_2304) = uint8(bool(uint8(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0)))
                if not stor4[address(stor3[arg1].field_0)].field_0:
                    revert with 0, 49
                address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                mem[0] = (10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7
                s = sha3(mem[0])
                while sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                mem[0] = (10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6
                s = sha3(mem[0])
                while sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor3[arg1].field_0)
                    mem[32] = 4
                    s = s + 1
                    continue 
                stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
                mem[0] = (10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5
                s = sha3(mem[0])
                while sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
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
                if sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 == -1:
                    revert with 0, 17
                mem[0] = address(stor3[arg1].field_0)
                mem[32] = 4
                s = sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 + 1
                continue 
            mem[0] = (10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5
            t = sha3((10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5)
            s = sha3(mem[0])
            while sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                stor[t] = stor[s]
                mem[0] = address(stor3[arg1].field_0)
                mem[32] = 4
                t = t + 1
                s = s + 1
                continue 
            s = sha3((10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5) + sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 - sha3(mem[0])
            while sha3((10 * idx) + sha3(sha3(address(stor3[arg1].field_0), 4)) + 5) + stor4[address(stor3[arg1].field_0)][idx].field_1280 > s:
                stor[s] = 0
                mem[0] = address(stor3[arg1].field_0)
                mem[32] = 4
                s = s + 1
                continue 
            stor4[address(stor3[arg1].field_0)][idx].field_1536 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
            stor4[address(stor3[arg1].field_0)][idx].field_1792 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
            stor4[address(stor3[arg1].field_0)][idx].field_2048 = stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0
            uint8(stor4[address(stor3[arg1].field_0)][idx].field_2304) = uint8(bool(uint8(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0)))
            if not stor4[address(stor3[arg1].field_0)].field_0:
                revert with 0, 49
            address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
            address(stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0) = 0
            stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
            stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
            mem[0] = (10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7
            s = sha3(mem[0])
            while sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 7) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                stor[s] = 0
                mem[0] = address(stor3[arg1].field_0)
                mem[32] = 4
                s = s + 1
                continue 
            stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
            mem[0] = (10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6
            s = sha3(mem[0])
            while sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 6) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
                stor[s] = 0
                mem[0] = address(stor3[arg1].field_0)
                mem[32] = 4
                s = s + 1
                continue 
            stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 = 0
            mem[0] = (10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5
            s = sha3(mem[0])
            while sha3((10 * stor4[address(stor3[arg1].field_0)].field_0) + sha3(sha3(address(stor3[arg1].field_0), 4)) - 5) + stor4[address(stor3[arg1].field_0)][stor4[address(stor3[arg1].field_0)].field_0].field_0 > s:
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
    if not uint8(stor3[arg1].field_2304):
        call address(stor3[arg1].field_0) with:
           value stor3[arg1].field_1536 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x6fe9d303: arg1
    return 1
}



}
