contract main {




// =====================  Runtime code  =====================


#
#  - sub_8f05be52(?)
#
const sub_d56a9782(?) = 0x726cc96215520a07a8f8e0fe476c027c6c44853185ef22ddac273ab1c037ca43

const sub_f1514f12(?) = 0x27c08a1671399b6816045d86602ffa6404f756deddc6a5a58270d7c7668d5eb8


mapping of uint8 stor0;
array of address stor1;
address stor2;
address stor3;
array of struct stor4;
array of struct stor5;
mapping of uint256 stor6;
array of struct stor7;

function isController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function proxies(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return arg1
}

function sub_b8f27b91(?) {
    require calldata.size - 4 >= 32
    if not stor7.length:
        return 0
    if stor6[arg1] >= stor7.length:
        revert with 0, 50
    return (stor7[stor6[arg1]].field_0 == arg1)
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

function withdrawFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    if stor1.length <= 0:
        revert with 0, 'no fees to withdraw'
    stor1.length = 0
    call arg1 with:
       value stor1.length wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x2733937f: address(arg1), stor1.length
}

function sub_e0c8f573(?) {
    if stor7.length:
        mem[128] = uint256(stor7.field_0)
        idx = 128
        s = 0
        while (32 * stor7.length) + 96 > idx:
            mem[idx + 32] = stor7[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor7.length, data=mem[128 len 32 * stor7.length])
    mem[(32 * stor7.length) + 128] = 32
    mem[(32 * stor7.length) + 160] = stor7.length
    mem[(32 * stor7.length) + 192 len 32 * stor7.length] = mem[128 len 32 * stor7.length]
    return memory
      from (32 * stor7.length) + 128
       len (96 * stor7.length) + 64
}

function sub_667bfbac(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 5
    mem[64] = (32 * stor5[address(arg1)].field_0) + 128
    mem[96] = stor5[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor5[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        _32 = mem[64]
        mem[64] = mem[64] + 320
        mem[_32] = address(stor5[address(arg1)][idx].field_0)
        mem[_32 + 32] = address(stor5[address(arg1)][idx].field_256)
        mem[_32 + 64] = stor5[address(arg1)][idx].field_512
        _33 = mem[64]
        mem[64] = mem[64] + (32 * stor5[address(arg1)][idx].field_768) + 32
        mem[_33] = stor5[address(arg1)][idx].field_768
        if not stor5[address(arg1)][idx].field_768:
            mem[_32 + 96] = _33
            _35 = mem[64]
            mem[64] = mem[64] + (32 * stor5[address(arg1)][idx].field_1024) + 32
            mem[_35] = stor5[address(arg1)][idx].field_1024
            if not stor5[address(arg1)][idx].field_1024:
                mem[_32 + 128] = _35
                _38 = mem[64]
                mem[64] = mem[64] + (32 * stor5[address(arg1)][idx].field_1280) + 32
                mem[_38] = stor5[address(arg1)][idx].field_1280
                if stor5[address(arg1)][idx].field_1280:
                    mem[0] = sha3(sha3(address(arg1), 5)) + (10 * idx) + 5
                    mem[_38 + 32] = stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + (10 * idx) + 5)].field_0
                    t = _38 + 32
                    u = sha3(mem[0])
                    while _38 + (32 * stor5[address(arg1)][idx].field_1280) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_32 + 160] = _38
            else:
                mem[0] = sha3(sha3(address(arg1), 5)) + (10 * idx) + 4
                mem[_35 + 32] = stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + (10 * idx) + 4)].field_0
                t = _35 + 32
                u = sha3(mem[0])
                while _35 + (32 * stor5[address(arg1)][idx].field_1024) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_32 + 128] = _35
                _77 = mem[64]
                mem[64] = mem[64] + (32 * stor5[address(arg1)][idx].field_1280) + 32
                mem[_77] = stor5[address(arg1)][idx].field_1280
                if stor5[address(arg1)][idx].field_1280:
                    mem[0] = sha3(sha3(address(arg1), 5)) + (10 * idx) + 5
                    mem[_77 + 32] = stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + (10 * idx) + 5)].field_0
                    t = _77 + 32
                    u = sha3(mem[0])
                    while _77 + (32 * stor5[address(arg1)][idx].field_1280) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_32 + 160] = _77
            mem[_32 + 192] = stor5[address(arg1)][idx].field_1536
            mem[_32 + 224] = stor5[address(arg1)][idx].field_1792
            mem[_32 + 256] = stor5[address(arg1)][idx].field_2048
            mem[_32 + 288] = bool(uint8(stor5[address(arg1)][idx].field_2304))
            mem[s] = _32
            s = s + 32
            idx = idx + 1
            continue 
        mem[0] = sha3(sha3(address(arg1), 5)) + (10 * idx) + 3
        mem[_33 + 32] = address(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + (10 * idx) + 3)].field_0)
        t = _33 + 32
        u = sha3(mem[0])
        while _33 + (32 * stor5[address(arg1)][u].field_768) > t:
            mem[t + 32] = address(stor1[u])
            t = t + 32
            u = u + 1
            continue 
        mem[_32 + 96] = _33
        _78 = mem[64]
        mem[64] = mem[64] + (32 * stor5[address(arg1)][u].field_1024) + 32
        mem[_78] = stor5[address(arg1)][u].field_1024
        if not stor5[address(arg1)][u].field_1024:
            mem[_32 + 128] = _78
            _81 = mem[64]
            mem[64] = mem[64] + (32 * stor5[address(arg1)][u].field_1280) + 32
            mem[_81] = stor5[address(arg1)][u].field_1280
            if stor5[address(arg1)][u].field_1280:
                mem[0] = sha3(sha3(address(arg1), 5)) + (10 * u) + 5
                mem[_81 + 32] = stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + (10 * u) + 5)].field_0
                s = _81 + 32
                v = sha3(mem[0])
                while _81 + (32 * stor5[address(arg1)][u].field_1280) > s:
                    mem[s + 32] = uint256(stor1[v])
                    s = s + 32
                    v = v + 1
                    continue 
            mem[_32 + 160] = _81
        else:
            mem[0] = sha3(sha3(address(arg1), 5)) + (10 * u) + 4
            mem[_78 + 32] = stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + (10 * u) + 4)].field_0
            s = _78 + 32
            v = sha3(mem[0])
            while _78 + (32 * stor5[address(arg1)][u].field_1024) > s:
                mem[s + 32] = uint256(stor1[v])
                s = s + 32
                v = v + 1
                continue 
            mem[_32 + 128] = _78
            _102 = mem[64]
            mem[64] = mem[64] + (32 * stor5[address(arg1)][u].field_1280) + 32
            mem[_102] = stor5[address(arg1)][u].field_1280
            if stor5[address(arg1)][u].field_1280:
                mem[0] = sha3(sha3(address(arg1), 5)) + (10 * u) + 5
                mem[_102 + 32] = stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + (10 * u) + 5)].field_0
                s = _102 + 32
                v = sha3(mem[0])
                while _102 + (32 * stor5[address(arg1)][u].field_1280) > s:
                    mem[s + 32] = uint256(stor1[v])
                    s = s + 32
                    v = v + 1
                    continue 
            mem[_32 + 160] = _102
        mem[_32 + 192] = stor5[address(arg1)][u].field_1536
        mem[_32 + 224] = stor5[address(arg1)][u].field_1792
        mem[_32 + 256] = stor5[address(arg1)][u].field_2048
        mem[_32 + 288] = bool(uint8(stor5[address(arg1)][u].field_2304))
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
    if stor7.length > test266151307():
        revert with 0, 65
    mem[96] = stor7.length
    mem[64] = (32 * stor7.length) + 128
    if not stor7.length:
        idx = 0
        while idx < stor7.length:
            mem[0] = stor7[idx].field_0
            mem[32] = 4
            _67 = mem[64]
            mem[64] = mem[64] + 320
            mem[_67] = address(stor4[stor7[idx].field_0].field_0)
            mem[_67 + 32] = address(stor4[stor7[idx].field_0].field_256)
            mem[_67 + 64] = stor4[stor7[idx].field_0].field_512
            _68 = mem[64]
            mem[64] = mem[64] + (32 * stor4[stor7[idx].field_0].field_768) + 32
            mem[_68] = stor4[stor7[idx].field_0].field_768
            if not stor4[stor7[idx].field_0].field_768:
                mem[_67 + 96] = _68
                _70 = mem[64]
                mem[64] = mem[64] + (32 * stor4[stor7[idx].field_0].field_1024) + 32
                mem[_70] = stor4[stor7[idx].field_0].field_1024
                if not stor4[stor7[idx].field_0].field_1024:
                    mem[_67 + 128] = _70
                    _72 = mem[64]
                    mem[64] = mem[64] + (32 * stor4[stor7[idx].field_0].field_1280) + 32
                    mem[_72] = stor4[stor7[idx].field_0].field_1280
                    if stor4[stor7[idx].field_0].field_1280:
                        mem[0] = sha3(stor7[idx].field_0, 4) + 5
                        mem[_72 + 32] = stor4[stor7[idx].field_0][5].field_0
                        s = _72 + 32
                        t = sha3(sha3(stor7[idx].field_0, 4) + 5)
                        while _72 + (32 * stor4[stor7[idx].field_0].field_1280) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_67 + 160] = _72
                else:
                    mem[0] = sha3(stor7[idx].field_0, 4) + 4
                    mem[_70 + 32] = stor4[stor7[idx].field_0][4].field_0
                    s = _70 + 32
                    t = sha3(sha3(stor7[idx].field_0, 4) + 4)
                    while _70 + (32 * stor4[stor7[idx].field_0].field_1024) > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_67 + 128] = _70
                    _174 = mem[64]
                    mem[64] = mem[64] + (32 * stor4[stor7[idx].field_0].field_1280) + 32
                    mem[_174] = stor4[stor7[idx].field_0].field_1280
                    if stor4[stor7[idx].field_0].field_1280:
                        mem[0] = sha3(stor7[idx].field_0, 4) + 5
                        mem[_174 + 32] = stor4[stor7[idx].field_0][5].field_0
                        s = _174 + 32
                        t = sha3(sha3(stor7[idx].field_0, 4) + 5)
                        while _174 + (32 * stor4[stor7[idx].field_0].field_1280) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_67 + 160] = _174
            else:
                mem[0] = sha3(stor7[idx].field_0, 4) + 3
                mem[_68 + 32] = address(stor4[stor7[idx].field_0][3].field_0)
                s = _68 + 32
                t = sha3(sha3(stor7[idx].field_0, 4) + 3)
                while _68 + (32 * stor4[stor7[idx].field_0].field_768) > s:
                    mem[s + 32] = address(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_67 + 96] = _68
                _175 = mem[64]
                mem[64] = mem[64] + (32 * stor4[stor7[idx].field_0].field_1024) + 32
                mem[_175] = stor4[stor7[idx].field_0].field_1024
                if not stor4[stor7[idx].field_0].field_1024:
                    mem[_67 + 128] = _175
                    _179 = mem[64]
                    mem[64] = mem[64] + (32 * stor4[stor7[idx].field_0].field_1280) + 32
                    mem[_179] = stor4[stor7[idx].field_0].field_1280
                    if stor4[stor7[idx].field_0].field_1280:
                        mem[0] = sha3(stor7[idx].field_0, 4) + 5
                        mem[_179 + 32] = stor4[stor7[idx].field_0][5].field_0
                        s = _179 + 32
                        t = sha3(sha3(stor7[idx].field_0, 4) + 5)
                        while _179 + (32 * stor4[stor7[idx].field_0].field_1280) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_67 + 160] = _179
                else:
                    mem[0] = sha3(stor7[idx].field_0, 4) + 4
                    mem[_175 + 32] = stor4[stor7[idx].field_0][4].field_0
                    s = _175 + 32
                    t = sha3(sha3(stor7[idx].field_0, 4) + 4)
                    while _175 + (32 * stor4[stor7[idx].field_0].field_1024) > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_67 + 128] = _175
                    _251 = mem[64]
                    mem[64] = mem[64] + (32 * stor4[stor7[idx].field_0].field_1280) + 32
                    mem[_251] = stor4[stor7[idx].field_0].field_1280
                    if stor4[stor7[idx].field_0].field_1280:
                        mem[0] = sha3(stor7[idx].field_0, 4) + 5
                        mem[_251 + 32] = stor4[stor7[idx].field_0][5].field_0
                        s = _251 + 32
                        t = sha3(sha3(stor7[idx].field_0, 4) + 5)
                        while _251 + (32 * stor4[stor7[idx].field_0].field_1280) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_67 + 160] = _251
            mem[_67 + 192] = stor4[stor7[idx].field_0].field_1536
            mem[_67 + 224] = stor4[stor7[idx].field_0].field_1792
            mem[_67 + 256] = stor4[stor7[idx].field_0].field_2048
            mem[_67 + 288] = bool(uint8(stor4[stor7[idx].field_0].field_2304))
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
        mem[64] = (32 * stor7.length) + 448
        mem[(32 * stor7.length) + 128] = 0
        mem[(32 * stor7.length) + 160] = 0
        mem[(32 * stor7.length) + 192] = 0
        mem[(32 * stor7.length) + 224] = 96
        mem[(32 * stor7.length) + 256] = 96
        mem[(32 * stor7.length) + 288] = 96
        mem[(32 * stor7.length) + 320] = 0
        mem[(32 * stor7.length) + 352] = 0
        mem[(32 * stor7.length) + 384] = 0
        mem[(32 * stor7.length) + 416] = 0
        mem[var9001] = (32 * stor7.length) + 128
        s = var9001
        idx = var9002
        while idx - 1:
            mem[64] = mem[64] + 320
            mem[(32 * stor7.length) + 128] = 0
            mem[(32 * stor7.length) + 160] = 0
            mem[(32 * stor7.length) + 192] = 0
            mem[(32 * stor7.length) + 224] = 96
            mem[(32 * stor7.length) + 256] = 96
            mem[(32 * stor7.length) + 288] = 96
            mem[(32 * stor7.length) + 320] = 0
            mem[(32 * stor7.length) + 352] = 0
            mem[(32 * stor7.length) + 384] = 0
            mem[(32 * stor7.length) + 416] = 0
            mem[s + 32] = (32 * stor7.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < stor7.length:
            mem[0] = stor7[idx].field_0
            mem[32] = 4
            _187 = mem[64]
            mem[64] = mem[64] + 320
            mem[_187] = address(stor4[stor7[idx].field_0].field_0)
            mem[_187 + 32] = address(stor4[stor7[idx].field_0].field_256)
            mem[_187 + 64] = stor4[stor7[idx].field_0].field_512
            _188 = mem[64]
            mem[64] = mem[64] + (32 * stor4[stor7[idx].field_0].field_768) + 32
            mem[_188] = stor4[stor7[idx].field_0].field_768
            if not stor4[stor7[idx].field_0].field_768:
                mem[_187 + 96] = _188
                _191 = mem[64]
                mem[64] = mem[64] + (32 * stor4[stor7[idx].field_0].field_1024) + 32
                mem[_191] = stor4[stor7[idx].field_0].field_1024
                if not stor4[stor7[idx].field_0].field_1024:
                    mem[_187 + 128] = _191
                    _193 = mem[64]
                    mem[64] = mem[64] + (32 * stor4[stor7[idx].field_0].field_1280) + 32
                    mem[_193] = stor4[stor7[idx].field_0].field_1280
                    if stor4[stor7[idx].field_0].field_1280:
                        mem[0] = sha3(stor7[idx].field_0, 4) + 5
                        mem[_193 + 32] = stor4[stor7[idx].field_0][5].field_0
                        s = _193 + 32
                        t = sha3(sha3(stor7[idx].field_0, 4) + 5)
                        while _193 + (32 * stor4[stor7[idx].field_0].field_1280) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_187 + 160] = _193
                else:
                    mem[0] = sha3(stor7[idx].field_0, 4) + 4
                    mem[_191 + 32] = stor4[stor7[idx].field_0][4].field_0
                    s = _191 + 32
                    t = sha3(sha3(stor7[idx].field_0, 4) + 4)
                    while _191 + (32 * stor4[stor7[idx].field_0].field_1024) > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_187 + 128] = _191
                    _253 = mem[64]
                    mem[64] = mem[64] + (32 * stor4[stor7[idx].field_0].field_1280) + 32
                    mem[_253] = stor4[stor7[idx].field_0].field_1280
                    if stor4[stor7[idx].field_0].field_1280:
                        mem[0] = sha3(stor7[idx].field_0, 4) + 5
                        mem[_253 + 32] = stor4[stor7[idx].field_0][5].field_0
                        s = _253 + 32
                        t = sha3(sha3(stor7[idx].field_0, 4) + 5)
                        while _253 + (32 * stor4[stor7[idx].field_0].field_1280) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_187 + 160] = _253
            else:
                mem[0] = sha3(stor7[idx].field_0, 4) + 3
                mem[_188 + 32] = address(stor4[stor7[idx].field_0][3].field_0)
                s = _188 + 32
                t = sha3(sha3(stor7[idx].field_0, 4) + 3)
                while _188 + (32 * stor4[stor7[idx].field_0].field_768) > s:
                    mem[s + 32] = address(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_187 + 96] = _188
                _254 = mem[64]
                mem[64] = mem[64] + (32 * stor4[stor7[idx].field_0].field_1024) + 32
                mem[_254] = stor4[stor7[idx].field_0].field_1024
                if not stor4[stor7[idx].field_0].field_1024:
                    mem[_187 + 128] = _254
                    _261 = mem[64]
                    mem[64] = mem[64] + (32 * stor4[stor7[idx].field_0].field_1280) + 32
                    mem[_261] = stor4[stor7[idx].field_0].field_1280
                    if stor4[stor7[idx].field_0].field_1280:
                        mem[0] = sha3(stor7[idx].field_0, 4) + 5
                        mem[_261 + 32] = stor4[stor7[idx].field_0][5].field_0
                        s = _261 + 32
                        t = sha3(sha3(stor7[idx].field_0, 4) + 5)
                        while _261 + (32 * stor4[stor7[idx].field_0].field_1280) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_187 + 160] = _261
                else:
                    mem[0] = sha3(stor7[idx].field_0, 4) + 4
                    mem[_254 + 32] = stor4[stor7[idx].field_0][4].field_0
                    s = _254 + 32
                    t = sha3(sha3(stor7[idx].field_0, 4) + 4)
                    while _254 + (32 * stor4[stor7[idx].field_0].field_1024) > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_187 + 128] = _254
                    _290 = mem[64]
                    mem[64] = mem[64] + (32 * stor4[stor7[idx].field_0].field_1280) + 32
                    mem[_290] = stor4[stor7[idx].field_0].field_1280
                    if stor4[stor7[idx].field_0].field_1280:
                        mem[0] = sha3(stor7[idx].field_0, 4) + 5
                        mem[_290 + 32] = stor4[stor7[idx].field_0][5].field_0
                        s = _290 + 32
                        t = sha3(sha3(stor7[idx].field_0, 4) + 5)
                        while _290 + (32 * stor4[stor7[idx].field_0].field_1280) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_187 + 160] = _290
            mem[_187 + 192] = stor4[stor7[idx].field_0].field_1536
            mem[_187 + 224] = stor4[stor7[idx].field_0].field_1792
            mem[_187 + 256] = stor4[stor7[idx].field_0].field_2048
            mem[_187 + 288] = bool(uint8(stor4[stor7[idx].field_0].field_2304))
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

function getOffer(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 96
    mem[224] = 96
    mem[256] = 96
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    if not stor7.length:
        revert with 0, 'offer not registered'
    if stor6[arg1] >= stor7.length:
        revert with 0, 50
    if stor7[stor6[arg1]].field_0 != arg1:
        revert with 0, 'offer not registered'
    mem[32] = 4
    mem[416] = address(stor4[arg1].field_0)
    mem[448] = address(stor4[arg1].field_256)
    mem[480] = stor4[arg1].field_512
    mem[736] = stor4[arg1].field_768
    if not stor4[arg1].field_768:
        mem[512] = 736
        mem[(32 * stor4[arg1].field_768) + 768] = stor4[arg1].field_1024
        if not stor4[arg1].field_1024:
            if stor4[arg1].field_1280:
                mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 832] = stor4[arg1][5].field_0
                idx = (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 832
                s = 0
                while (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 800 > idx:
                    mem[idx + 32] = stor4[arg1][s + 5].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 832] = 32
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 864] = address(stor4[arg1].field_0)
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 896] = address(stor4[arg1].field_256)
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 928] = stor4[arg1].field_512
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 960] = 320
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1184] = stor4[arg1].field_768
            idx = 0
            s = 768
            t = (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1216
            while idx < stor4[arg1].field_768:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 992] = (32 * stor4[arg1].field_768) + 352
            mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1216] = stor4[arg1].field_1024
            mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1248 len 32 * stor4[arg1].field_1024] = mem[(32 * stor4[arg1].field_768) + 800 len 32 * stor4[arg1].field_1024]
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1024] = (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 384
            mem[(64 * stor4[arg1].field_768) + (64 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1248] = stor4[arg1].field_1280
            mem[(64 * stor4[arg1].field_768) + (64 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1280 len 32 * stor4[arg1].field_1280] = mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 832 len 32 * stor4[arg1].field_1280]
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1056] = stor4[arg1].field_1536
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1088] = stor4[arg1].field_1792
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1120] = stor4[arg1].field_2048
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1152] = bool(uint8(stor4[arg1].field_2304))
            return memory
              from (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 832
               len (96 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 448
        mem[(32 * stor4[arg1].field_768) + 800] = stor4[arg1][4].field_0
        idx = (32 * stor4[arg1].field_768) + 800
        s = 0
        while (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 768 > idx:
            mem[idx + 32] = stor4[arg1][s + 4].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[544] = (32 * stor4[arg1].field_768) + 768
        mem[64] = (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 832
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 800] = stor4[arg1].field_1280
        if not stor4[arg1].field_1280:
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 832] = 32
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 864] = address(stor4[arg1].field_0)
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 896] = address(stor4[arg1].field_256)
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 928] = stor4[arg1].field_512
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 960] = 320
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1184] = stor4[arg1].field_768
            idx = 0
            s = 768
            t = (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1216
            while idx < stor4[arg1].field_768:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 992] = (32 * stor4[arg1].field_768) + 352
            mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1216] = stor4[arg1].field_1024
            mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1248 len 32 * stor4[arg1].field_1024] = mem[(32 * stor4[arg1].field_768) + 800 len 32 * stor4[arg1].field_1024]
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1024] = (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 384
            mem[(64 * stor4[arg1].field_768) + (64 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1248] = stor4[arg1].field_1280
            mem[(64 * stor4[arg1].field_768) + (64 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1280 len 32 * stor4[arg1].field_1280] = mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 832 len 32 * stor4[arg1].field_1280]
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1056] = stor4[arg1].field_1536
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1088] = stor4[arg1].field_1792
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1120] = stor4[arg1].field_2048
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1152] = bool(uint8(stor4[arg1].field_2304))
            return memory
              from (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 832
               len (96 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 448
        mem[0] = sha3(arg1, 4) + 5
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 832] = stor4[arg1][5].field_0
        idx = (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 832
        s = 0
        while (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 800 > idx:
            mem[idx + 32] = stor4[arg1][s + 5].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[576] = (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 800
        mem[608] = stor4[arg1].field_1536
        mem[640] = stor4[arg1].field_1792
        mem[672] = stor4[arg1].field_2048
        mem[704] = bool(uint8(stor4[arg1].field_2304))
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 832] = 32
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 864] = address(stor4[arg1].field_0)
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 896] = address(stor4[arg1].field_256)
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 928] = stor4[arg1].field_512
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 960] = 320
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1184] = stor4[arg1].field_768
        idx = 0
        s = 768
        t = mem[64] + 384
        while idx < stor4[arg1].field_768:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 992] = (32 * stor4[arg1].field_768) + 352
        _261 = mem[mem[544]]
        mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1216] = mem[mem[544]]
        mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1248 len 32 * _261] = mem[mem[544] + 32 len 32 * _261]
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1024] = (32 * stor4[arg1].field_768) + (32 * _261) + 384
        _301 = mem[mem[576]]
        mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + (32 * _261) + 1248] = mem[mem[576]]
        mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + (32 * _261) + 1280 len 32 * _301] = mem[mem[576] + 32 len 32 * _301]
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1056] = mem[608]
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1088] = mem[640]
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1120] = mem[672]
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1152] = bool(mem[704])
        return memory
          from mem[64]
           len (64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + (32 * _261) + (32 * _301) + -mem[64] + 1280
    mem[768] = address(stor4[arg1][3].field_0)
    idx = 768
    s = 0
    while (32 * stor4[arg1].field_768) + 736 > idx:
        mem[idx + 32] = address(stor4[arg1][s + 3].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[512] = 736
    mem[(32 * stor4[arg1].field_768) + 768] = stor4[arg1].field_1024
    if not stor4[arg1].field_1024:
        mem[544] = (32 * stor4[arg1].field_768) + 768
        mem[64] = (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 832
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 800] = stor4[arg1].field_1280
        if not stor4[arg1].field_1280:
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 832] = 32
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 864] = address(stor4[arg1].field_0)
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 896] = address(stor4[arg1].field_256)
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 928] = stor4[arg1].field_512
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 960] = 320
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1184] = stor4[arg1].field_768
            idx = 0
            s = 768
            t = (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1216
            while idx < stor4[arg1].field_768:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 992] = (32 * stor4[arg1].field_768) + 352
            mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1216] = stor4[arg1].field_1024
            mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1248 len 32 * stor4[arg1].field_1024] = mem[(32 * stor4[arg1].field_768) + 800 len 32 * stor4[arg1].field_1024]
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1024] = (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 384
            mem[(64 * stor4[arg1].field_768) + (64 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1248] = stor4[arg1].field_1280
            mem[(64 * stor4[arg1].field_768) + (64 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1280 len 32 * stor4[arg1].field_1280] = mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 832 len 32 * stor4[arg1].field_1280]
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1056] = stor4[arg1].field_1536
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1088] = stor4[arg1].field_1792
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1120] = stor4[arg1].field_2048
            mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1152] = bool(uint8(stor4[arg1].field_2304))
            return memory
              from (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 832
               len (96 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 448
        mem[0] = sha3(arg1, 4) + 5
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 832] = stor4[arg1][5].field_0
        idx = (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 832
        s = 0
        while (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 800 > idx:
            mem[idx + 32] = stor4[arg1][s + 5].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[576] = (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 800
        mem[608] = stor4[arg1].field_1536
        mem[640] = stor4[arg1].field_1792
        mem[672] = stor4[arg1].field_2048
        mem[704] = bool(uint8(stor4[arg1].field_2304))
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 832] = 32
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 864] = address(stor4[arg1].field_0)
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 896] = address(stor4[arg1].field_256)
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 928] = stor4[arg1].field_512
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 960] = 320
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1184] = stor4[arg1].field_768
        idx = 0
        s = 768
        t = mem[64] + 384
        while idx < stor4[arg1].field_768:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 992] = (32 * stor4[arg1].field_768) + 352
        _262 = mem[mem[544]]
        mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1216] = mem[mem[544]]
        mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1248 len 32 * _262] = mem[mem[544] + 32 len 32 * _262]
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1024] = (32 * stor4[arg1].field_768) + (32 * _262) + 384
        _302 = mem[mem[576]]
        mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + (32 * _262) + 1248] = mem[mem[576]]
        mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + (32 * _262) + 1280 len 32 * _302] = mem[mem[576] + 32 len 32 * _302]
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1056] = mem[608]
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1088] = mem[640]
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1120] = mem[672]
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1152] = bool(mem[704])
        return memory
          from mem[64]
           len (64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + (32 * _262) + (32 * _302) + -mem[64] + 1280
    mem[0] = sha3(arg1, 4) + 4
    mem[(32 * stor4[arg1].field_768) + 800] = stor4[arg1][4].field_0
    idx = (32 * stor4[arg1].field_768) + 800
    s = 0
    while (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 768 > idx:
        mem[idx + 32] = stor4[arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[544] = (32 * stor4[arg1].field_768) + 768
    mem[64] = (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 832
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 800] = stor4[arg1].field_1280
    if not stor4[arg1].field_1280:
        mem[576] = (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 800
        mem[608] = stor4[arg1].field_1536
        mem[640] = stor4[arg1].field_1792
        mem[672] = stor4[arg1].field_2048
        mem[704] = bool(uint8(stor4[arg1].field_2304))
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 832] = 32
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 864] = address(stor4[arg1].field_0)
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 896] = address(stor4[arg1].field_256)
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 928] = stor4[arg1].field_512
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 960] = 320
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1184] = stor4[arg1].field_768
        idx = 0
        s = 768
        t = mem[64] + 384
        while idx < stor4[arg1].field_768:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 992] = (32 * stor4[arg1].field_768) + 352
        _263 = mem[mem[544]]
        mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1216] = mem[mem[544]]
        mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1248 len 32 * _263] = mem[mem[544] + 32 len 32 * _263]
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1024] = (32 * stor4[arg1].field_768) + (32 * _263) + 384
        _303 = mem[mem[576]]
        mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + (32 * _263) + 1248] = mem[mem[576]]
        mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + (32 * _263) + 1280 len 32 * _303] = mem[mem[576] + 32 len 32 * _303]
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1056] = mem[608]
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1088] = mem[640]
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1120] = mem[672]
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1152] = bool(mem[704])
        return memory
          from mem[64]
           len (64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + (32 * _263) + (32 * _303) + -mem[64] + 1280
    mem[0] = sha3(arg1, 4) + 5
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 832] = stor4[arg1][5].field_0
    idx = (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 832
    s = 0
    while (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 800 > idx:
        mem[idx + 32] = stor4[arg1][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[576] = (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 800
    mem[608] = stor4[arg1].field_1536
    mem[640] = stor4[arg1].field_1792
    mem[672] = stor4[arg1].field_2048
    mem[704] = bool(uint8(stor4[arg1].field_2304))
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 832] = 32
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 864] = address(stor4[arg1].field_0)
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 896] = address(stor4[arg1].field_256)
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 928] = stor4[arg1].field_512
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 960] = 320
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1184] = stor4[arg1].field_768
    idx = 0
    s = 768
    t = mem[64] + 384
    while idx < stor4[arg1].field_768:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 992] = (32 * stor4[arg1].field_768) + 352
    _356 = mem[mem[544]]
    mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1216] = mem[mem[544]]
    mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1248 len 32 * _356] = mem[mem[544] + 32 len 32 * _356]
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1024] = (32 * stor4[arg1].field_768) + (32 * _356) + 384
    _371 = mem[mem[576]]
    mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + (32 * _356) + 1248] = mem[mem[576]]
    mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + (32 * _356) + 1280 len 32 * _371] = mem[mem[576] + 32 len 32 * _371]
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1056] = mem[608]
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1088] = mem[640]
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1120] = mem[672]
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + 1152] = bool(mem[704])
    return memory
      from mem[64]
       len (64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * stor4[arg1].field_1280) + (32 * _356) + (32 * _371) + -mem[64] + 1280
}

function sub_31983366(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 128 < 96 or (32 * ('cd', 36).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 36).length) + 132] = 0x27c08a1671399b6816045d86602ffa6404f756deddc6a5a58270d7c7668d5eb8
    require ext_code.size(stor2)
    staticcall stor2.fee(uint256 arg1) with:
            gas gas_remaining wei
           args 0x27c08a1671399b6816045d86602ffa6404f756deddc6a5a58270d7c7668d5eb8
    mem[(32 * ('cd', 36).length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    if not stor7.length:
        revert with 0, 'offer not registered'
    if stor6[cd[4]] >= stor7.length:
        revert with 0, 50
    if stor7[stor6[cd[4]]].field_0 != cd[4]:
        revert with 0, 'offer not registered'
    if ('cd', 36).length != stor4[cd[4]].field_1024:
        revert with 0, 'too many gems'
    if not ext_call.return_data[0]:
        if msg.value < 10^16:
            revert with 0, 'insufficient accept fee'
        mem[0] = cd[4]
        mem[32] = 4
        idx = 0
        while idx < stor4[cd[4]].field_768:
            if idx >= stor4[cd[4]].field_768:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            _479 = mem[(32 * idx) + 128]
            mem[32] = 4
            if idx >= stor4[cd[4]].field_1024:
                revert with 0, 50
            mem[0] = sha3(cd[4], 4) + 4
            if stor4[cd[4]][idx + 4].field_0 != 0:
                if idx >= stor4[cd[4]].field_1024:
                    revert with 0, 50
                if stor4[cd[4]][idx + 4].field_0 != mem[(32 * idx) + 128]:
                    revert with 0, 'invalid input  gem'
                mem[32] = 4
                if idx >= stor4[cd[4]].field_1280:
                    revert with 0, 50
                mem[0] = sha3(cd[4], 4) + 5
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _479
                require ext_code.size(stor3)
                staticcall stor3.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args msg.sender, _479
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _521 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_521] < stor4[cd[4]][idx + 5].field_0:
                    revert with 0, 'insufficient gem balance'
            else:
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(address(stor4[cd[4]][idx + 3].field_0))
                staticcall address(stor4[cd[4]][idx + 3].field_0).tokenType(uint256 arg1) with:
                        gas gas_remaining wei
                       args _479
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _509 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_509] < 3
                if mem[_509] > 2:
                    revert with 0, 33
                if mem[_509] != 2:
                    revert with 0, 'invalid token type'
                mem[32] = 4
                if idx >= stor4[cd[4]].field_1280:
                    revert with 0, 50
                mem[0] = sha3(cd[4], 4) + 5
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _479
                require ext_code.size(stor3)
                staticcall stor3.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args msg.sender, _479
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _553 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_553] < stor4[cd[4]][idx + 5].field_0:
                    revert with 0, 'insufficient gem balance'
            if idx == -1:
                revert with 0, 17
            mem[0] = cd[4]
            mem[32] = 4
            idx = idx + 1
            continue 
        mem[0] = cd[4]
        mem[32] = 4
        mem[mem[64] + 4] = address(stor4[cd[4]].field_0)
        mem[mem[64] + 36] = stor4[cd[4]].field_512
        require ext_code.size(stor3)
        staticcall stor3.balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(stor4[cd[4]].field_0), stor4[cd[4]].field_512
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _486 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_486]:
            uint8(stor4[cd[4]].field_2304) = 1
            call msg.sender with:
               value 10^16 wei
                 gas 0 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                return 0
        if 10^16 > !stor4[cd[4]].field_1536:
            revert with 0, 17
        if stor1.length > !(stor4[cd[4]].field_1536 + 10^16):
            revert with 0, 17
        stor1.length = stor1.length + stor4[cd[4]].field_1536 + 10^16
        _529 = mem[64]
        mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(stor4[cd[4]].field_0)
        mem[mem[64] + 68] = 160
        _542 = mem[96]
        mem[mem[64] + 164] = mem[96]
        mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        idx = mem[96]
        mem[mem[64] + 100] = (32 * mem[96]) + 192
        mem[mem[64] + (32 * mem[96]) + 196] = stor4[cd[4]].field_1280
        idx = 0
        s = mem[64] + (32 * _542) + 228
        t = 0
        while idx < stor4[cd[4]].field_1280:
            mem[s] = stor4[cd[4]][t + 5].field_0
            idx = idx + 1
            s = s + 32
            t = t + 1
            continue 
        mem[_529 + 132] = (32 * _542) + (32 * stor4[cd[4]].field_1280) + 224
        mem[_529 + (32 * _542) + (32 * stor4[cd[4]].field_1280) + 228] = 0
        require ext_code.size(stor3)
        call stor3.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _529 + (32 * _542) + (32 * stor4[cd[4]].field_1280) + -mem[64] + 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 68] = stor4[cd[4]].field_512
        mem[mem[64] + 100] = 1
        mem[mem[64] + 132] = 160
        mem[mem[64] + 164] = 0
        require ext_code.size(stor3)
        call stor3.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args address(stor4[cd[4]].field_0), msg.sender, stor4[cd[4]].field_512, 1, 160, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not stor7.length:
            mem[32] = 4
            address(stor4[cd[4]].field_0) = 0
            address(stor4[cd[4]].field_256) = 0
            stor4[cd[4]].field_512 = 0
            stor4[cd[4]].field_768 = 0
            idx = 0
            while stor4[cd[4]].field_768 > idx:
                stor4[cd[4]][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
            stor4[cd[4]].field_1024 = 0
            idx = 0
            while stor4[cd[4]].field_1024 > idx:
                stor4[cd[4]][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
            stor4[cd[4]].field_1280 = 0
            mem[0] = sha3(cd[4], 4) + 5
            idx = 0
            while stor4[cd[4]].field_1280 > idx:
                stor4[cd[4]][idx + 5].field_0 = 0
                idx = idx + 1
                continue 
            stor4[cd[4]].field_1536 = 0
            stor4[cd[4]].field_1792 = 0
            stor4[cd[4]].field_2048 = 0
            uint8(stor4[cd[4]].field_2304) = 0
            mem[mem[64]] = cd[4]
            mem[mem[64] + 32] = msg.sender
            mem[mem[64] + 64] = 128
            _1021 = mem[96]
            mem[mem[64] + 128] = mem[96]
            mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 96] = 10^16
            emit 0x630aeb16: cd[4], msg.sender, 128, 10^16, mem[mem[64] + 128 len (32 * _1021) + 32]
        else:
            if stor6[cd[4]] >= stor7.length:
                revert with 0, 50
            if stor7[stor6[cd[4]]].field_0 != cd[4]:
                mem[32] = 4
                address(stor4[cd[4]].field_0) = 0
                address(stor4[cd[4]].field_256) = 0
                stor4[cd[4]].field_512 = 0
                stor4[cd[4]].field_768 = 0
                idx = 0
                while stor4[cd[4]].field_768 > idx:
                    stor4[cd[4]][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
                stor4[cd[4]].field_1024 = 0
                idx = 0
                while stor4[cd[4]].field_1024 > idx:
                    stor4[cd[4]][idx + 4].field_0 = 0
                    idx = idx + 1
                    continue 
                stor4[cd[4]].field_1280 = 0
                mem[0] = sha3(cd[4], 4) + 5
                idx = 0
                while stor4[cd[4]].field_1280 > idx:
                    stor4[cd[4]][idx + 5].field_0 = 0
                    idx = idx + 1
                    continue 
                stor4[cd[4]].field_1536 = 0
                stor4[cd[4]].field_1792 = 0
                stor4[cd[4]].field_2048 = 0
                uint8(stor4[cd[4]].field_2304) = 0
                mem[mem[64]] = cd[4]
                mem[mem[64] + 32] = msg.sender
                mem[mem[64] + 64] = 128
                _1020 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 96] = 10^16
                emit 0x630aeb16: cd[4], msg.sender, 128, 10^16, mem[mem[64] + 128 len (32 * _1020) + 32]
            else:
                if stor7.length < 1:
                    revert with 0, 17
                if stor7.length - 1 == stor6[cd[4]]:
                    stor6[cd[4]] = 0
                    if stor7.length < 1:
                        revert with 0, 17
                    if stor7.length - 1 >= stor7.length:
                        revert with 0, 50
                    stor7[stor7.length].field_0 = 0
                    mem[32] = 4
                    address(stor4[cd[4]].field_0) = 0
                    address(stor4[cd[4]].field_256) = 0
                    stor4[cd[4]].field_512 = 0
                    stor4[cd[4]].field_768 = 0
                    idx = 0
                    while stor4[cd[4]].field_768 > idx:
                        stor4[cd[4]][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor4[cd[4]].field_1024 = 0
                    idx = 0
                    while stor4[cd[4]].field_1024 > idx:
                        stor4[cd[4]][idx + 4].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor4[cd[4]].field_1280 = 0
                    mem[0] = sha3(cd[4], 4) + 5
                    idx = 0
                    while stor4[cd[4]].field_1280 > idx:
                        stor4[cd[4]][idx + 5].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor4[cd[4]].field_1536 = 0
                    stor4[cd[4]].field_1792 = 0
                    stor4[cd[4]].field_2048 = 0
                    uint8(stor4[cd[4]].field_2304) = 0
                    mem[mem[64]] = cd[4]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = 128
                    _1018 = mem[96]
                    mem[mem[64] + 128] = mem[96]
                    mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[mem[64] + 96] = 10^16
                    emit 0x630aeb16: cd[4], msg.sender, 128, 10^16, mem[mem[64] + 128 len (32 * _1018) + 32]
                else:
                    if stor7.length - 1 >= stor7.length:
                        revert with 0, 50
                    stor6[stor7[stor7.length].field_0] = stor6[cd[4]]
                    if stor6[cd[4]] >= stor7.length:
                        revert with 0, 50
                    stor7[stor6[cd[4]]].field_0 = stor7[stor7.length].field_0
                    stor6[cd[4]] = 0
                    if stor7.length < 1:
                        revert with 0, 17
                    if stor7.length - 1 >= stor7.length:
                        revert with 0, 50
                    stor7[stor7.length].field_0 = 0
                    mem[32] = 4
                    address(stor4[cd[4]].field_0) = 0
                    address(stor4[cd[4]].field_256) = 0
                    stor4[cd[4]].field_512 = 0
                    stor4[cd[4]].field_768 = 0
                    idx = 0
                    while stor4[cd[4]].field_768 > idx:
                        stor4[cd[4]][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor4[cd[4]].field_1024 = 0
                    idx = 0
                    while stor4[cd[4]].field_1024 > idx:
                        stor4[cd[4]][idx + 4].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor4[cd[4]].field_1280 = 0
                    mem[0] = sha3(cd[4], 4) + 5
                    idx = 0
                    while stor4[cd[4]].field_1280 > idx:
                        stor4[cd[4]][idx + 5].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor4[cd[4]].field_1536 = 0
                    stor4[cd[4]].field_1792 = 0
                    stor4[cd[4]].field_2048 = 0
                    uint8(stor4[cd[4]].field_2304) = 0
                    mem[mem[64]] = cd[4]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = 128
                    _1019 = mem[96]
                    mem[mem[64] + 128] = mem[96]
                    mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[mem[64] + 96] = 10^16
                    emit 0x630aeb16: cd[4], msg.sender, 128, 10^16, mem[mem[64] + 128 len (32 * _1019) + 32]
    else:
        if msg.value < ext_call.return_data[0]:
            revert with 0, 'insufficient accept fee'
        mem[0] = cd[4]
        mem[32] = 4
        idx = 0
        while idx < stor4[cd[4]].field_768:
            if idx >= stor4[cd[4]].field_768:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            _482 = mem[(32 * idx) + 128]
            mem[32] = 4
            if idx >= stor4[cd[4]].field_1024:
                revert with 0, 50
            mem[0] = sha3(cd[4], 4) + 4
            if stor4[cd[4]][idx + 4].field_0 != 0:
                if idx >= stor4[cd[4]].field_1024:
                    revert with 0, 50
                if stor4[cd[4]][idx + 4].field_0 != mem[(32 * idx) + 128]:
                    revert with 0, 'invalid input  gem'
                mem[32] = 4
                if idx >= stor4[cd[4]].field_1280:
                    revert with 0, 50
                mem[0] = sha3(cd[4], 4) + 5
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _482
                require ext_code.size(stor3)
                staticcall stor3.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args msg.sender, _482
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _523 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_523] < stor4[cd[4]][idx + 5].field_0:
                    revert with 0, 'insufficient gem balance'
            else:
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(address(stor4[cd[4]][idx + 3].field_0))
                staticcall address(stor4[cd[4]][idx + 3].field_0).tokenType(uint256 arg1) with:
                        gas gas_remaining wei
                       args _482
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _514 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_514] < 3
                if mem[_514] > 2:
                    revert with 0, 33
                if mem[_514] != 2:
                    revert with 0, 'invalid token type'
                mem[32] = 4
                if idx >= stor4[cd[4]].field_1280:
                    revert with 0, 50
                mem[0] = sha3(cd[4], 4) + 5
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _482
                require ext_code.size(stor3)
                staticcall stor3.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args msg.sender, _482
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _555 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_555] < stor4[cd[4]][idx + 5].field_0:
                    revert with 0, 'insufficient gem balance'
            if idx == -1:
                revert with 0, 17
            mem[0] = cd[4]
            mem[32] = 4
            idx = idx + 1
            continue 
        mem[0] = cd[4]
        mem[32] = 4
        mem[mem[64] + 4] = address(stor4[cd[4]].field_0)
        mem[mem[64] + 36] = stor4[cd[4]].field_512
        require ext_code.size(stor3)
        staticcall stor3.balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(stor4[cd[4]].field_0), stor4[cd[4]].field_512
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _489 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_489]:
            uint8(stor4[cd[4]].field_2304) = 1
            call msg.sender with:
               value ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                return 0
        if ext_call.return_data[0] > !stor4[cd[4]].field_1536:
            revert with 0, 17
        if stor1.length > !(ext_call.return_data[0] + stor4[cd[4]].field_1536):
            revert with 0, 17
        stor1.length = stor1.length + ext_call.return_data[0] + stor4[cd[4]].field_1536
        _533 = mem[64]
        mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(stor4[cd[4]].field_0)
        mem[mem[64] + 68] = 160
        _544 = mem[96]
        mem[mem[64] + 164] = mem[96]
        mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        idx = mem[96]
        mem[mem[64] + 100] = (32 * mem[96]) + 192
        mem[mem[64] + (32 * mem[96]) + 196] = stor4[cd[4]].field_1280
        idx = 0
        s = mem[64] + (32 * _544) + 228
        t = 0
        while idx < stor4[cd[4]].field_1280:
            mem[s] = stor4[cd[4]][t + 5].field_0
            idx = idx + 1
            s = s + 32
            t = t + 1
            continue 
        mem[_533 + 132] = (32 * _544) + (32 * stor4[cd[4]].field_1280) + 224
        mem[_533 + (32 * _544) + (32 * stor4[cd[4]].field_1280) + 228] = 0
        require ext_code.size(stor3)
        call stor3.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _533 + (32 * _544) + (32 * stor4[cd[4]].field_1280) + -mem[64] + 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 68] = stor4[cd[4]].field_512
        mem[mem[64] + 100] = 1
        mem[mem[64] + 132] = 160
        mem[mem[64] + 164] = 0
        require ext_code.size(stor3)
        call stor3.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args address(stor4[cd[4]].field_0), msg.sender, stor4[cd[4]].field_512, 1, 160, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not stor7.length:
            mem[32] = 4
            address(stor4[cd[4]].field_0) = 0
            address(stor4[cd[4]].field_256) = 0
            stor4[cd[4]].field_512 = 0
            stor4[cd[4]].field_768 = 0
            idx = 0
            while stor4[cd[4]].field_768 > idx:
                stor4[cd[4]][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
            stor4[cd[4]].field_1024 = 0
            idx = 0
            while stor4[cd[4]].field_1024 > idx:
                stor4[cd[4]][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
            stor4[cd[4]].field_1280 = 0
            mem[0] = sha3(cd[4], 4) + 5
            idx = 0
            while stor4[cd[4]].field_1280 > idx:
                stor4[cd[4]][idx + 5].field_0 = 0
                idx = idx + 1
                continue 
            stor4[cd[4]].field_1536 = 0
            stor4[cd[4]].field_1792 = 0
            stor4[cd[4]].field_2048 = 0
            uint8(stor4[cd[4]].field_2304) = 0
            mem[mem[64]] = cd[4]
            mem[mem[64] + 32] = msg.sender
            mem[mem[64] + 64] = 128
            _1025 = mem[96]
            mem[mem[64] + 128] = mem[96]
            mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 96] = ext_call.return_data[0]
            emit 0x630aeb16: cd[4], msg.sender, 128, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _1025) + 32]
        else:
            if stor6[cd[4]] >= stor7.length:
                revert with 0, 50
            if stor7[stor6[cd[4]]].field_0 != cd[4]:
                mem[32] = 4
                address(stor4[cd[4]].field_0) = 0
                address(stor4[cd[4]].field_256) = 0
                stor4[cd[4]].field_512 = 0
                stor4[cd[4]].field_768 = 0
                idx = 0
                while stor4[cd[4]].field_768 > idx:
                    stor4[cd[4]][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
                stor4[cd[4]].field_1024 = 0
                idx = 0
                while stor4[cd[4]].field_1024 > idx:
                    stor4[cd[4]][idx + 4].field_0 = 0
                    idx = idx + 1
                    continue 
                stor4[cd[4]].field_1280 = 0
                mem[0] = sha3(cd[4], 4) + 5
                idx = 0
                while stor4[cd[4]].field_1280 > idx:
                    stor4[cd[4]][idx + 5].field_0 = 0
                    idx = idx + 1
                    continue 
                stor4[cd[4]].field_1536 = 0
                stor4[cd[4]].field_1792 = 0
                stor4[cd[4]].field_2048 = 0
                uint8(stor4[cd[4]].field_2304) = 0
                mem[mem[64]] = cd[4]
                mem[mem[64] + 32] = msg.sender
                mem[mem[64] + 64] = 128
                _1024 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 96] = ext_call.return_data[0]
                emit 0x630aeb16: cd[4], msg.sender, 128, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _1024) + 32]
            else:
                if stor7.length < 1:
                    revert with 0, 17
                if stor7.length - 1 == stor6[cd[4]]:
                    stor6[cd[4]] = 0
                    if stor7.length < 1:
                        revert with 0, 17
                    if stor7.length - 1 >= stor7.length:
                        revert with 0, 50
                    stor7[stor7.length].field_0 = 0
                    mem[32] = 4
                    address(stor4[cd[4]].field_0) = 0
                    address(stor4[cd[4]].field_256) = 0
                    stor4[cd[4]].field_512 = 0
                    stor4[cd[4]].field_768 = 0
                    idx = 0
                    while stor4[cd[4]].field_768 > idx:
                        stor4[cd[4]][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor4[cd[4]].field_1024 = 0
                    idx = 0
                    while stor4[cd[4]].field_1024 > idx:
                        stor4[cd[4]][idx + 4].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor4[cd[4]].field_1280 = 0
                    mem[0] = sha3(cd[4], 4) + 5
                    idx = 0
                    while stor4[cd[4]].field_1280 > idx:
                        stor4[cd[4]][idx + 5].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor4[cd[4]].field_1536 = 0
                    stor4[cd[4]].field_1792 = 0
                    stor4[cd[4]].field_2048 = 0
                    uint8(stor4[cd[4]].field_2304) = 0
                    mem[mem[64]] = cd[4]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = 128
                    _1022 = mem[96]
                    mem[mem[64] + 128] = mem[96]
                    mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    emit 0x630aeb16: cd[4], msg.sender, 128, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _1022) + 32]
                else:
                    if stor7.length - 1 >= stor7.length:
                        revert with 0, 50
                    stor6[stor7[stor7.length].field_0] = stor6[cd[4]]
                    if stor6[cd[4]] >= stor7.length:
                        revert with 0, 50
                    stor7[stor6[cd[4]]].field_0 = stor7[stor7.length].field_0
                    stor6[cd[4]] = 0
                    if stor7.length < 1:
                        revert with 0, 17
                    if stor7.length - 1 >= stor7.length:
                        revert with 0, 50
                    stor7[stor7.length].field_0 = 0
                    mem[32] = 4
                    address(stor4[cd[4]].field_0) = 0
                    address(stor4[cd[4]].field_256) = 0
                    stor4[cd[4]].field_512 = 0
                    stor4[cd[4]].field_768 = 0
                    idx = 0
                    while stor4[cd[4]].field_768 > idx:
                        stor4[cd[4]][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor4[cd[4]].field_1024 = 0
                    idx = 0
                    while stor4[cd[4]].field_1024 > idx:
                        stor4[cd[4]][idx + 4].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor4[cd[4]].field_1280 = 0
                    mem[0] = sha3(cd[4], 4) + 5
                    idx = 0
                    while stor4[cd[4]].field_1280 > idx:
                        stor4[cd[4]][idx + 5].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor4[cd[4]].field_1536 = 0
                    stor4[cd[4]].field_1792 = 0
                    stor4[cd[4]].field_2048 = 0
                    uint8(stor4[cd[4]].field_2304) = 0
                    mem[mem[64]] = cd[4]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = 128
                    _1023 = mem[96]
                    mem[mem[64] + 128] = mem[96]
                    mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    emit 0x630aeb16: cd[4], msg.sender, 128, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _1023) + 32]
    return 1
}

function sub_a0c59979(?) {
    require calldata.size - 4 >= 32
    if not stor7.length:
        revert with 0, 'offer not registered'
    if stor6[arg1] >= stor7.length:
        revert with 0, 50
    if stor7[stor6[arg1]].field_0 == arg1 != 1:
        revert with 0, 'offer not registered'
    if address(stor4[arg1].field_0) != msg.sender:
        revert with 0, 'caller not owner'
    if stor7.length:
        if stor6[arg1] >= stor7.length:
            revert with 0, 50
        if stor7[stor6[arg1]].field_0 == arg1:
            if stor7.length < 1:
                revert with 0, 17
            if stor7.length - 1 != stor6[arg1]:
                if stor7.length - 1 >= stor7.length:
                    revert with 0, 50
                stor6[stor7[stor7.length].field_0] = stor6[arg1]
                if stor6[arg1] >= stor7.length:
                    revert with 0, 50
                stor7[stor6[arg1]].field_0 = stor7[stor7.length].field_0
            stor6[arg1] = 0
            if stor7.length < 1:
                revert with 0, 17
            if stor7.length - 1 >= stor7.length:
                revert with 0, 50
            stor7[stor7.length].field_0 = 0
    address(stor4[arg1].field_0) = 0
    address(stor4[arg1].field_256) = 0
    stor4[arg1].field_512 = 0
    stor4[arg1].field_768 = 0
    idx = 0
    while stor4[arg1].field_768 > idx:
        stor4[arg1][idx + 3].field_0 = 0
        idx = idx + 1
        continue 
    stor4[arg1].field_1024 = 0
    idx = 0
    while stor4[arg1].field_1024 > idx:
        stor4[arg1][idx + 4].field_0 = 0
        idx = idx + 1
        continue 
    stor4[arg1].field_1280 = 0
    idx = 0
    while stor4[arg1].field_1280 > idx:
        stor4[arg1][idx + 5].field_0 = 0
        idx = idx + 1
        continue 
    stor4[arg1].field_1536 = 0
    stor4[arg1].field_1792 = 0
    stor4[arg1].field_2048 = 0
    uint8(stor4[arg1].field_2304) = 0
    mem[0] = address(stor4[arg1].field_0)
    idx = 0
    while idx < stor5[address(stor4[arg1].field_0)].field_0:
        if idx >= stor5[address(stor4[arg1].field_0)].field_0:
            revert with 0, 50
        if stor5[address(stor4[arg1].field_0)][idx].field_512 == arg1:
            if stor5[address(stor4[arg1].field_0)].field_0 < 1:
                revert with 0, 17
            if stor5[address(stor4[arg1].field_0)].field_0 - 1 >= stor5[address(stor4[arg1].field_0)].field_0:
                revert with 0, 50
            if idx >= stor5[address(stor4[arg1].field_0)].field_0:
                revert with 0, 50
            address(stor5[address(stor4[arg1].field_0)][idx].field_0) = address(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0)
            address(stor5[address(stor4[arg1].field_0)][idx].field_256) = address(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0)
            stor5[address(stor4[arg1].field_0)][idx].field_512 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
            stor5[address(stor4[arg1].field_0)][idx].field_768 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
            mem[0] = (10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 3
            if not stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0:
                s = sha3(mem[0])
                while sha3((10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 3) + stor5[address(stor4[arg1].field_0)][idx].field_768 > s:
                    stor[s] = 0
                    mem[0] = address(stor4[arg1].field_0)
                    mem[32] = 5
                    s = s + 1
                    continue 
                stor5[address(stor4[arg1].field_0)][idx].field_1024 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
                mem[0] = (10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 4
                if not stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0:
                    s = sha3(mem[0])
                    while sha3((10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 4) + stor5[address(stor4[arg1].field_0)][idx].field_1024 > s:
                        stor[s] = 0
                        mem[0] = address(stor4[arg1].field_0)
                        mem[32] = 5
                        s = s + 1
                        continue 
                    stor5[address(stor4[arg1].field_0)][idx].field_1280 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
                    mem[0] = (10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 5
                    if not stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0:
                        s = sha3(mem[0])
                        while sha3((10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 5) + stor5[address(stor4[arg1].field_0)][idx].field_1280 > s:
                            stor[s] = 0
                            mem[0] = address(stor4[arg1].field_0)
                            mem[32] = 5
                            s = s + 1
                            continue 
                    else:
                        mem[0] = (10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5
                        t = sha3((10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 5)
                        s = sha3(mem[0])
                        while sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 > s:
                            stor[t] = stor[s]
                            mem[0] = address(stor4[arg1].field_0)
                            mem[32] = 5
                            t = t + 1
                            s = s + 1
                            continue 
                        s = sha3((10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 5) + sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 - sha3(mem[0])
                        while sha3((10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 5) + stor5[address(stor4[arg1].field_0)][idx].field_1280 > s:
                            stor[s] = 0
                            mem[0] = address(stor4[arg1].field_0)
                            mem[32] = 5
                            s = s + 1
                            continue 
                    stor5[address(stor4[arg1].field_0)][idx].field_1536 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
                    stor5[address(stor4[arg1].field_0)][idx].field_1792 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
                    stor5[address(stor4[arg1].field_0)][idx].field_2048 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
                    uint8(stor5[address(stor4[arg1].field_0)][idx].field_2304) = uint8(bool(uint8(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0)))
                    if not stor5[address(stor4[arg1].field_0)].field_0:
                        revert with 0, 49
                    address(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0) = 0
                    address(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0) = 0
                    stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                    stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                    mem[0] = (10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 7
                    s = sha3(mem[0])
                    while sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 7) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor4[arg1].field_0)
                        mem[32] = 5
                        s = s + 1
                        continue 
                    stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                    mem[0] = (10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 6
                    s = sha3(mem[0])
                    while sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 6) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor4[arg1].field_0)
                        mem[32] = 5
                        s = s + 1
                        continue 
                    stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                    mem[0] = (10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5
                    s = sha3(mem[0])
                    while sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor4[arg1].field_0)
                        mem[32] = 5
                        s = s + 1
                        continue 
                    stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                    stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                    stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                    uint8(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0) = 0
                    stor5[address(stor4[arg1].field_0)].field_0--
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(stor4[arg1].field_0)
                    mem[32] = 5
                    idx = idx + 1
                    continue 
                mem[0] = (10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 6
                t = sha3((10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 4)
                s = sha3(mem[0])
                while sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 6) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 > s:
                    stor[t] = stor[s]
                    mem[0] = address(stor4[arg1].field_0)
                    mem[32] = 5
                    t = t + 1
                    s = s + 1
                    continue 
                s = sha3((10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 4) + sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 6) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 - sha3(mem[0])
                while sha3((10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 4) + stor5[address(stor4[arg1].field_0)][idx].field_1024 > s:
                    stor[s] = 0
                    mem[0] = address(stor4[arg1].field_0)
                    mem[32] = 5
                    s = s + 1
                    continue 
                stor5[address(stor4[arg1].field_0)][idx].field_1280 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
                mem[0] = (10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 5
                if not stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0:
                    s = sha3(mem[0])
                    while sha3((10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 5) + stor5[address(stor4[arg1].field_0)][idx].field_1280 > s:
                        stor[s] = 0
                        mem[0] = address(stor4[arg1].field_0)
                        mem[32] = 5
                        s = s + 1
                        continue 
                    stor5[address(stor4[arg1].field_0)][idx].field_1536 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
                    stor5[address(stor4[arg1].field_0)][idx].field_1792 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
                    stor5[address(stor4[arg1].field_0)][idx].field_2048 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
                    uint8(stor5[address(stor4[arg1].field_0)][idx].field_2304) = uint8(bool(uint8(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0)))
                    if not stor5[address(stor4[arg1].field_0)].field_0:
                        revert with 0, 49
                    address(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0) = 0
                    address(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0) = 0
                    stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                    stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                    mem[0] = (10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 7
                    s = sha3(mem[0])
                    while sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 7) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor4[arg1].field_0)
                        mem[32] = 5
                        s = s + 1
                        continue 
                    stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                    mem[0] = (10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 6
                    s = sha3(mem[0])
                    while sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 6) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor4[arg1].field_0)
                        mem[32] = 5
                        s = s + 1
                        continue 
                    stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                    mem[0] = (10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5
                    s = sha3(mem[0])
                    while sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor4[arg1].field_0)
                        mem[32] = 5
                        s = s + 1
                        continue 
                    stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                    stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                    stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                    uint8(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0) = 0
                    stor5[address(stor4[arg1].field_0)].field_0--
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(stor4[arg1].field_0)
                    mem[32] = 5
                    idx = idx + 1
                    continue 
                mem[0] = (10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5
                t = sha3((10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 5)
                s = sha3(mem[0])
                while sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 > s:
                    stor[t] = stor[s]
                    mem[0] = address(stor4[arg1].field_0)
                    mem[32] = 5
                    t = t + 1
                    s = s + 1
                    continue 
                s = sha3((10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 5) + sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 - sha3(mem[0])
                while sha3((10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 5) + stor5[address(stor4[arg1].field_0)][idx].field_1280 > s:
                    stor[s] = 0
                    mem[0] = address(stor4[arg1].field_0)
                    mem[32] = 5
                    s = s + 1
                    continue 
                stor5[address(stor4[arg1].field_0)][idx].field_1536 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
                stor5[address(stor4[arg1].field_0)][idx].field_1792 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
                stor5[address(stor4[arg1].field_0)][idx].field_2048 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
                uint8(stor5[address(stor4[arg1].field_0)][idx].field_2304) = uint8(bool(uint8(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0)))
                if not stor5[address(stor4[arg1].field_0)].field_0:
                    revert with 0, 49
                address(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0) = 0
                address(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0) = 0
                stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                mem[0] = (10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 7
                s = sha3(mem[0])
                while sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 7) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor4[arg1].field_0)
                    mem[32] = 5
                    s = s + 1
                    continue 
                stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                mem[0] = (10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 6
                s = sha3(mem[0])
                while sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 6) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor4[arg1].field_0)
                    mem[32] = 5
                    s = s + 1
                    continue 
                stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                mem[0] = (10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5
                s = sha3(mem[0])
                while sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor4[arg1].field_0)
                    mem[32] = 5
                    s = s + 1
                    continue 
                stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                uint8(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0) = 0
                stor5[address(stor4[arg1].field_0)].field_0--
                if sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 == -1:
                    revert with 0, 17
                mem[0] = address(stor4[arg1].field_0)
                mem[32] = 5
                s = sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 + 1
                continue 
            mem[0] = (10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 7
            t = sha3((10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 3)
            s = sha3(mem[0])
            while sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 7) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 > s:
                stor[t] = stor[s]
                mem[0] = address(stor4[arg1].field_0)
                mem[32] = 5
                t = t + 1
                s = s + 1
                continue 
            s = sha3((10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 3) + sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 7) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 - sha3(mem[0])
            while sha3((10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 3) + stor5[address(stor4[arg1].field_0)][idx].field_768 > s:
                stor[s] = 0
                mem[0] = address(stor4[arg1].field_0)
                mem[32] = 5
                s = s + 1
                continue 
            stor5[address(stor4[arg1].field_0)][idx].field_1024 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
            mem[0] = (10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 4
            if not stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0:
                s = sha3(mem[0])
                while sha3((10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 4) + stor5[address(stor4[arg1].field_0)][idx].field_1024 > s:
                    stor[s] = 0
                    mem[0] = address(stor4[arg1].field_0)
                    mem[32] = 5
                    s = s + 1
                    continue 
                stor5[address(stor4[arg1].field_0)][idx].field_1280 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
                mem[0] = (10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 5
                if not stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0:
                    s = sha3(mem[0])
                    while sha3((10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 5) + stor5[address(stor4[arg1].field_0)][idx].field_1280 > s:
                        stor[s] = 0
                        mem[0] = address(stor4[arg1].field_0)
                        mem[32] = 5
                        s = s + 1
                        continue 
                    stor5[address(stor4[arg1].field_0)][idx].field_1536 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
                    stor5[address(stor4[arg1].field_0)][idx].field_1792 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
                    stor5[address(stor4[arg1].field_0)][idx].field_2048 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
                    uint8(stor5[address(stor4[arg1].field_0)][idx].field_2304) = uint8(bool(uint8(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0)))
                    if not stor5[address(stor4[arg1].field_0)].field_0:
                        revert with 0, 49
                    address(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0) = 0
                    address(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0) = 0
                    stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                    stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                    mem[0] = (10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 7
                    s = sha3(mem[0])
                    while sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 7) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor4[arg1].field_0)
                        mem[32] = 5
                        s = s + 1
                        continue 
                    stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                    mem[0] = (10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 6
                    s = sha3(mem[0])
                    while sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 6) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor4[arg1].field_0)
                        mem[32] = 5
                        s = s + 1
                        continue 
                    stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                    mem[0] = (10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5
                    s = sha3(mem[0])
                    while sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 > s:
                        stor[s] = 0
                        mem[0] = address(stor4[arg1].field_0)
                        mem[32] = 5
                        s = s + 1
                        continue 
                    stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                    stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                    stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                    uint8(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0) = 0
                    stor5[address(stor4[arg1].field_0)].field_0--
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(stor4[arg1].field_0)
                    mem[32] = 5
                    idx = idx + 1
                    continue 
                mem[0] = (10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5
                t = sha3((10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 5)
                s = sha3(mem[0])
                while sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 > s:
                    stor[t] = stor[s]
                    mem[0] = address(stor4[arg1].field_0)
                    mem[32] = 5
                    t = t + 1
                    s = s + 1
                    continue 
                s = sha3((10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 5) + sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 - sha3(mem[0])
                while sha3((10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 5) + stor5[address(stor4[arg1].field_0)][idx].field_1280 > s:
                    stor[s] = 0
                    mem[0] = address(stor4[arg1].field_0)
                    mem[32] = 5
                    s = s + 1
                    continue 
                stor5[address(stor4[arg1].field_0)][idx].field_1536 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
                stor5[address(stor4[arg1].field_0)][idx].field_1792 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
                stor5[address(stor4[arg1].field_0)][idx].field_2048 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
                uint8(stor5[address(stor4[arg1].field_0)][idx].field_2304) = uint8(bool(uint8(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0)))
                if not stor5[address(stor4[arg1].field_0)].field_0:
                    revert with 0, 49
                address(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0) = 0
                address(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0) = 0
                stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                mem[0] = (10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 7
                s = sha3(mem[0])
                while sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 7) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor4[arg1].field_0)
                    mem[32] = 5
                    s = s + 1
                    continue 
                stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                mem[0] = (10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 6
                s = sha3(mem[0])
                while sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 6) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor4[arg1].field_0)
                    mem[32] = 5
                    s = s + 1
                    continue 
                stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                mem[0] = (10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5
                s = sha3(mem[0])
                while sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor4[arg1].field_0)
                    mem[32] = 5
                    s = s + 1
                    continue 
                stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                uint8(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0) = 0
                stor5[address(stor4[arg1].field_0)].field_0--
                if sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 == -1:
                    revert with 0, 17
                mem[0] = address(stor4[arg1].field_0)
                mem[32] = 5
                s = sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 + 1
                continue 
            mem[0] = (10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 6
            t = sha3((10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 4)
            s = sha3(mem[0])
            while sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 6) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 > s:
                stor[t] = stor[s]
                mem[0] = address(stor4[arg1].field_0)
                mem[32] = 5
                t = t + 1
                s = s + 1
                continue 
            s = sha3((10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 4) + sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 6) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 - sha3(mem[0])
            while sha3((10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 4) + stor5[address(stor4[arg1].field_0)][idx].field_1024 > s:
                stor[s] = 0
                mem[0] = address(stor4[arg1].field_0)
                mem[32] = 5
                s = s + 1
                continue 
            stor5[address(stor4[arg1].field_0)][idx].field_1280 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
            mem[0] = (10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 5
            if not stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0:
                s = sha3(mem[0])
                while sha3((10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 5) + stor5[address(stor4[arg1].field_0)][idx].field_1280 > s:
                    stor[s] = 0
                    mem[0] = address(stor4[arg1].field_0)
                    mem[32] = 5
                    s = s + 1
                    continue 
                stor5[address(stor4[arg1].field_0)][idx].field_1536 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
                stor5[address(stor4[arg1].field_0)][idx].field_1792 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
                stor5[address(stor4[arg1].field_0)][idx].field_2048 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
                uint8(stor5[address(stor4[arg1].field_0)][idx].field_2304) = uint8(bool(uint8(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0)))
                if not stor5[address(stor4[arg1].field_0)].field_0:
                    revert with 0, 49
                address(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0) = 0
                address(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0) = 0
                stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                mem[0] = (10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 7
                s = sha3(mem[0])
                while sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 7) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor4[arg1].field_0)
                    mem[32] = 5
                    s = s + 1
                    continue 
                stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                mem[0] = (10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 6
                s = sha3(mem[0])
                while sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 6) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor4[arg1].field_0)
                    mem[32] = 5
                    s = s + 1
                    continue 
                stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                mem[0] = (10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5
                s = sha3(mem[0])
                while sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 > s:
                    stor[s] = 0
                    mem[0] = address(stor4[arg1].field_0)
                    mem[32] = 5
                    s = s + 1
                    continue 
                stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
                uint8(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0) = 0
                stor5[address(stor4[arg1].field_0)].field_0--
                if sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 == -1:
                    revert with 0, 17
                mem[0] = address(stor4[arg1].field_0)
                mem[32] = 5
                s = sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 + 1
                continue 
            mem[0] = (10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5
            t = sha3((10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 5)
            s = sha3(mem[0])
            while sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 > s:
                stor[t] = stor[s]
                mem[0] = address(stor4[arg1].field_0)
                mem[32] = 5
                t = t + 1
                s = s + 1
                continue 
            s = sha3((10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 5) + sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 - sha3(mem[0])
            while sha3((10 * idx) + sha3(sha3(address(stor4[arg1].field_0), 5)) + 5) + stor5[address(stor4[arg1].field_0)][idx].field_1280 > s:
                stor[s] = 0
                mem[0] = address(stor4[arg1].field_0)
                mem[32] = 5
                s = s + 1
                continue 
            stor5[address(stor4[arg1].field_0)][idx].field_1536 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
            stor5[address(stor4[arg1].field_0)][idx].field_1792 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
            stor5[address(stor4[arg1].field_0)][idx].field_2048 = stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0
            uint8(stor5[address(stor4[arg1].field_0)][idx].field_2304) = uint8(bool(uint8(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0)))
            if not stor5[address(stor4[arg1].field_0)].field_0:
                revert with 0, 49
            address(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0) = 0
            address(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0) = 0
            stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
            stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
            mem[0] = (10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 7
            s = sha3(mem[0])
            while sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 7) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 > s:
                stor[s] = 0
                mem[0] = address(stor4[arg1].field_0)
                mem[32] = 5
                s = s + 1
                continue 
            stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
            mem[0] = (10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 6
            s = sha3(mem[0])
            while sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 6) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 > s:
                stor[s] = 0
                mem[0] = address(stor4[arg1].field_0)
                mem[32] = 5
                s = s + 1
                continue 
            stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
            mem[0] = (10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5
            s = sha3(mem[0])
            while sha3((10 * stor5[address(stor4[arg1].field_0)].field_0) + sha3(sha3(address(stor4[arg1].field_0), 5)) - 5) + stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 > s:
                stor[s] = 0
                mem[0] = address(stor4[arg1].field_0)
                mem[32] = 5
                s = s + 1
                continue 
            stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
            stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
            stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0 = 0
            uint8(stor5[address(stor4[arg1].field_0)][stor5[address(stor4[arg1].field_0)].field_0].field_0) = 0
            stor5[address(stor4[arg1].field_0)].field_0--
        if idx == -1:
            revert with 0, 17
        mem[0] = address(stor4[arg1].field_0)
        mem[32] = 5
        idx = idx + 1
        continue 
    if not uint8(stor4[arg1].field_2304):
        call address(stor4[arg1].field_0) with:
           value stor4[arg1].field_1536 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x6fe9d303: arg1
    return 1
}



}
