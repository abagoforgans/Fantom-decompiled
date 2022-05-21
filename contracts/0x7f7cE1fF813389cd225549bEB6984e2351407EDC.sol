contract main {




// =====================  Runtime code  =====================


#
#  - sub_b5ded0bb(?)
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
        _26 = mem[64]
        mem[64] = mem[64] + 256
        mem[_26] = address(stor5[address(arg1)][idx].field_0)
        mem[_26 + 32] = address(stor5[address(arg1)][idx].field_256)
        mem[_26 + 64] = stor5[address(arg1)][idx].field_512
        _27 = mem[64]
        mem[64] = mem[64] + (32 * stor5[address(arg1)][idx].field_768) + 32
        mem[_27] = stor5[address(arg1)][idx].field_768
        if not stor5[address(arg1)][idx].field_768:
            mem[_26 + 96] = _27
            _29 = mem[64]
            mem[64] = mem[64] + (32 * stor5[address(arg1)][idx].field_1024) + 32
            mem[_29] = stor5[address(arg1)][idx].field_1024
            if stor5[address(arg1)][idx].field_1024:
                mem[0] = sha3(sha3(address(arg1), 5)) + (8 * idx) + 4
                mem[_29 + 32] = stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + (8 * idx) + 4)].field_0
                t = _29 + 32
                u = sha3(mem[0])
                while _29 + (32 * stor5[address(arg1)][idx].field_1024) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_26 + 128] = _29
        else:
            mem[0] = sha3(sha3(address(arg1), 5)) + (8 * idx) + 3
            mem[_27 + 32] = address(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + (8 * idx) + 3)].field_0)
            t = _27 + 32
            u = sha3(mem[0])
            while _27 + (32 * stor5[address(arg1)][idx].field_768) > t:
                mem[t + 32] = address(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_26 + 96] = _27
            _61 = mem[64]
            mem[64] = mem[64] + (32 * stor5[address(arg1)][idx].field_1024) + 32
            mem[_61] = stor5[address(arg1)][idx].field_1024
            if stor5[address(arg1)][idx].field_1024:
                mem[0] = sha3(sha3(address(arg1), 5)) + (8 * idx) + 4
                mem[_61 + 32] = stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + (8 * idx) + 4)].field_0
                t = _61 + 32
                u = sha3(mem[0])
                while _61 + (32 * stor5[address(arg1)][idx].field_1024) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_26 + 128] = _61
        mem[_26 + 160] = stor5[address(arg1)][idx].field_1280
        mem[_26 + 192] = stor5[address(arg1)][idx].field_1536
        mem[_26 + 224] = bool(uint8(stor5[address(arg1)][idx].field_1792))
        mem[s] = _26
        s = s + 32
        idx = idx + 1
        continue 
    _28 = mem[64]
    mem[mem[64]] = 32
    _31 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    u = mem[64] + (32 * mem[96]) + 64
    while idx < _31:
        mem[t] = u + -_28 - 64
        _47 = mem[s]
        mem[u] = mem[mem[s] + 12 len 20]
        mem[u + 32] = mem[_47 + 44 len 20]
        mem[u + 64] = mem[_47 + 64]
        _52 = mem[_47 + 96]
        mem[u + 96] = 256
        _53 = mem[_52]
        mem[u + 256] = mem[_52]
        v = 0
        w = _52 + 32
        x = u + 288
        while v < _53:
            mem[x] = mem[w + 12 len 20]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        _64 = mem[_47 + 128]
        mem[u + 128] = (32 * _53) + 288
        _65 = mem[_64]
        mem[u + (32 * _53) + 288] = mem[_64]
        w = u + (32 * _53) + 320
        v = 0
        x = _64 + 32
        while v < _65:
            mem[w] = mem[x]
            w = w + 32
            v = v + 1
            x = x + 32
            continue 
        mem[u + 160] = mem[_47 + 160]
        mem[u + 192] = mem[_47 + 192]
        mem[u + 224] = bool(mem[_47 + 224])
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = u + (32 * _53) + (32 * _65) + 320
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
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    if not stor7.length:
        revert with 0, 'offer not registered'
    if stor6[arg1] >= stor7.length:
        revert with 0, 50
    if stor7[stor6[arg1]].field_0 != arg1:
        revert with 0, 'offer not registered'
    mem[32] = 4
    mem[352] = address(stor4[arg1].field_0)
    mem[384] = address(stor4[arg1].field_256)
    mem[416] = stor4[arg1].field_512
    mem[608] = stor4[arg1].field_768
    if not stor4[arg1].field_768:
        mem[(32 * stor4[arg1].field_768) + 640] = stor4[arg1].field_1024
        if stor4[arg1].field_1024:
            mem[(32 * stor4[arg1].field_768) + 672] = stor4[arg1][4].field_0
            idx = (32 * stor4[arg1].field_768) + 672
            s = 0
            while (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 640 > idx:
                mem[idx + 32] = stor4[arg1][s + 4].field_256
                idx = idx + 32
                s = s + 1
                continue 
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 672] = 32
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 704] = address(stor4[arg1].field_0)
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 736] = address(stor4[arg1].field_256)
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 768] = stor4[arg1].field_512
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 800] = 256
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 960] = stor4[arg1].field_768
        idx = 0
        s = 640
        t = (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 992
        while idx < stor4[arg1].field_768:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 832] = (32 * stor4[arg1].field_768) + 288
        mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 992] = stor4[arg1].field_1024
        mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 1024 len 32 * stor4[arg1].field_1024] = mem[(32 * stor4[arg1].field_768) + 672 len 32 * stor4[arg1].field_1024]
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 864] = stor4[arg1].field_1280
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 896] = stor4[arg1].field_1536
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 928] = bool(uint8(stor4[arg1].field_1792))
        return memory
          from (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 672
           len (96 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 352
    mem[640] = address(stor4[arg1][3].field_0)
    idx = 640
    s = 0
    while (32 * stor4[arg1].field_768) + 608 > idx:
        mem[idx + 32] = address(stor4[arg1][s + 3].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[448] = 608
    mem[64] = (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 672
    mem[(32 * stor4[arg1].field_768) + 640] = stor4[arg1].field_1024
    if not stor4[arg1].field_1024:
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 672] = 32
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 704] = address(stor4[arg1].field_0)
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 736] = address(stor4[arg1].field_256)
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 768] = stor4[arg1].field_512
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 800] = 256
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 960] = stor4[arg1].field_768
        idx = 0
        s = 640
        t = (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 992
        while idx < stor4[arg1].field_768:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 832] = (32 * stor4[arg1].field_768) + 288
        mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 992] = stor4[arg1].field_1024
        mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 1024 len 32 * stor4[arg1].field_1024] = mem[(32 * stor4[arg1].field_768) + 672 len 32 * stor4[arg1].field_1024]
        var31002 = (64 * stor4[arg1].field_768) + (64 * stor4[arg1].field_1024) + 1024
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 864] = stor4[arg1].field_1280
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 896] = stor4[arg1].field_1536
        mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 928] = bool(uint8(stor4[arg1].field_1792))
        return memory
          from (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 672
           len (96 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 352
    mem[0] = sha3(arg1, 4) + 4
    mem[(32 * stor4[arg1].field_768) + 672] = stor4[arg1][4].field_0
    idx = (32 * stor4[arg1].field_768) + 672
    s = 0
    while (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 640 > idx:
        mem[idx + 32] = stor4[arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[480] = (32 * stor4[arg1].field_768) + 640
    mem[512] = stor4[arg1].field_1280
    mem[544] = stor4[arg1].field_1536
    mem[576] = bool(uint8(stor4[arg1].field_1792))
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 672] = 32
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 704] = address(stor4[arg1].field_0)
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 736] = address(stor4[arg1].field_256)
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 768] = stor4[arg1].field_512
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 800] = 256
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 960] = stor4[arg1].field_768
    idx = 0
    s = 640
    t = mem[64] + 320
    while idx < stor4[arg1].field_768:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 832] = (32 * stor4[arg1].field_768) + 288
    _113 = mem[mem[480]]
    mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 992] = mem[mem[480]]
    mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 1024 len 32 * _113] = mem[mem[480] + 32 len 32 * _113]
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 864] = mem[512]
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 896] = mem[544]
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 928] = bool(mem[576])
    return memory
      from mem[64]
       len (64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + (32 * _113) + -mem[64] + 1024
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
            _55 = mem[64]
            mem[64] = mem[64] + 256
            mem[_55] = address(stor4[stor7[idx].field_0].field_0)
            mem[_55 + 32] = address(stor4[stor7[idx].field_0].field_256)
            mem[_55 + 64] = stor4[stor7[idx].field_0].field_512
            _56 = mem[64]
            mem[64] = mem[64] + (32 * stor4[stor7[idx].field_0].field_768) + 32
            mem[_56] = stor4[stor7[idx].field_0].field_768
            if not stor4[stor7[idx].field_0].field_768:
                mem[_55 + 96] = _56
                _58 = mem[64]
                mem[64] = mem[64] + (32 * stor4[stor7[idx].field_0].field_1024) + 32
                mem[_58] = stor4[stor7[idx].field_0].field_1024
                if stor4[stor7[idx].field_0].field_1024:
                    mem[0] = sha3(stor7[idx].field_0, 4) + 4
                    mem[_58 + 32] = stor4[stor7[idx].field_0][4].field_0
                    s = _58 + 32
                    t = sha3(sha3(stor7[idx].field_0, 4) + 4)
                    while _58 + (32 * stor4[stor7[idx].field_0].field_1024) > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_55 + 128] = _58
            else:
                mem[0] = sha3(stor7[idx].field_0, 4) + 3
                mem[_56 + 32] = address(stor4[stor7[idx].field_0][3].field_0)
                s = _56 + 32
                t = sha3(sha3(stor7[idx].field_0, 4) + 3)
                while _56 + (32 * stor4[stor7[idx].field_0].field_768) > s:
                    mem[s + 32] = address(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_55 + 96] = _56
                _140 = mem[64]
                mem[64] = mem[64] + (32 * stor4[stor7[idx].field_0].field_1024) + 32
                mem[_140] = stor4[stor7[idx].field_0].field_1024
                if stor4[stor7[idx].field_0].field_1024:
                    mem[0] = sha3(stor7[idx].field_0, 4) + 4
                    mem[_140 + 32] = stor4[stor7[idx].field_0][4].field_0
                    s = _140 + 32
                    t = sha3(sha3(stor7[idx].field_0, 4) + 4)
                    while _140 + (32 * stor4[stor7[idx].field_0].field_1024) > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_55 + 128] = _140
            mem[_55 + 160] = stor4[stor7[idx].field_0].field_1280
            mem[_55 + 192] = stor4[stor7[idx].field_0].field_1536
            mem[_55 + 224] = bool(uint8(stor4[stor7[idx].field_0].field_1792))
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _55
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _52 = mem[64]
        mem[mem[64]] = 32
        _57 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _57:
            mem[t] = u + -_52 - 64
            _101 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            mem[u + 32] = mem[_101 + 44 len 20]
            mem[u + 64] = mem[_101 + 64]
            _106 = mem[_101 + 96]
            mem[u + 96] = 256
            _107 = mem[_106]
            mem[u + 256] = mem[_106]
            v = 0
            w = _106 + 32
            x = u + 288
            while v < _107:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _144 = mem[_101 + 128]
            mem[u + 128] = (32 * _107) + 288
            _145 = mem[_144]
            mem[u + (32 * _107) + 288] = mem[_144]
            w = u + (32 * _107) + 320
            v = 0
            x = _144 + 32
            while v < _145:
                mem[w] = mem[x]
                w = w + 32
                v = v + 1
                x = x + 32
                continue 
            mem[u + 160] = mem[_101 + 160]
            mem[u + 192] = mem[_101 + 192]
            mem[u + 224] = bool(mem[_101 + 224])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _107) + (32 * _145) + 320
            continue 
    else:
        mem[64] = (32 * stor7.length) + 384
        mem[(32 * stor7.length) + 128] = 0
        mem[(32 * stor7.length) + 160] = 0
        mem[(32 * stor7.length) + 192] = 0
        mem[(32 * stor7.length) + 224] = 96
        mem[(32 * stor7.length) + 256] = 96
        mem[(32 * stor7.length) + 288] = 0
        mem[(32 * stor7.length) + 320] = 0
        mem[(32 * stor7.length) + 352] = 0
        mem[var9001] = (32 * stor7.length) + 128
        s = var9001
        idx = var9002
        while idx - 1:
            mem[64] = mem[64] + 256
            mem[(32 * stor7.length) + 128] = 0
            mem[(32 * stor7.length) + 160] = 0
            mem[(32 * stor7.length) + 192] = 0
            mem[(32 * stor7.length) + 224] = 96
            mem[(32 * stor7.length) + 256] = 96
            mem[(32 * stor7.length) + 288] = 0
            mem[(32 * stor7.length) + 320] = 0
            mem[(32 * stor7.length) + 352] = 0
            mem[s + 32] = (32 * stor7.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < stor7.length:
            mem[0] = stor7[idx].field_0
            mem[32] = 4
            _149 = mem[64]
            mem[64] = mem[64] + 256
            mem[_149] = address(stor4[stor7[idx].field_0].field_0)
            mem[_149 + 32] = address(stor4[stor7[idx].field_0].field_256)
            mem[_149 + 64] = stor4[stor7[idx].field_0].field_512
            _150 = mem[64]
            mem[64] = mem[64] + (32 * stor4[stor7[idx].field_0].field_768) + 32
            mem[_150] = stor4[stor7[idx].field_0].field_768
            if not stor4[stor7[idx].field_0].field_768:
                mem[_149 + 96] = _150
                _152 = mem[64]
                mem[64] = mem[64] + (32 * stor4[stor7[idx].field_0].field_1024) + 32
                mem[_152] = stor4[stor7[idx].field_0].field_1024
                if stor4[stor7[idx].field_0].field_1024:
                    mem[0] = sha3(stor7[idx].field_0, 4) + 4
                    mem[_152 + 32] = stor4[stor7[idx].field_0][4].field_0
                    s = _152 + 32
                    t = sha3(sha3(stor7[idx].field_0, 4) + 4)
                    while _152 + (32 * stor4[stor7[idx].field_0].field_1024) > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_149 + 128] = _152
            else:
                mem[0] = sha3(stor7[idx].field_0, 4) + 3
                mem[_150 + 32] = address(stor4[stor7[idx].field_0][3].field_0)
                s = _150 + 32
                t = sha3(sha3(stor7[idx].field_0, 4) + 3)
                while _150 + (32 * stor4[stor7[idx].field_0].field_768) > s:
                    mem[s + 32] = address(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_149 + 96] = _150
                _194 = mem[64]
                mem[64] = mem[64] + (32 * stor4[stor7[idx].field_0].field_1024) + 32
                mem[_194] = stor4[stor7[idx].field_0].field_1024
                if stor4[stor7[idx].field_0].field_1024:
                    mem[0] = sha3(stor7[idx].field_0, 4) + 4
                    mem[_194 + 32] = stor4[stor7[idx].field_0][4].field_0
                    s = _194 + 32
                    t = sha3(sha3(stor7[idx].field_0, 4) + 4)
                    while _194 + (32 * stor4[stor7[idx].field_0].field_1024) > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_149 + 128] = _194
            mem[_149 + 160] = stor4[stor7[idx].field_0].field_1280
            mem[_149 + 192] = stor4[stor7[idx].field_0].field_1536
            mem[_149 + 224] = bool(uint8(stor4[stor7[idx].field_0].field_1792))
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _149
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _146 = mem[64]
        mem[mem[64]] = 32
        _151 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _151:
            mem[t] = u + -_146 - 64
            _178 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            mem[u + 32] = mem[_178 + 44 len 20]
            mem[u + 64] = mem[_178 + 64]
            _183 = mem[_178 + 96]
            mem[u + 96] = 256
            _184 = mem[_183]
            mem[u + 256] = mem[_183]
            v = 0
            w = _183 + 32
            x = u + 288
            while v < _184:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _198 = mem[_178 + 128]
            mem[u + 128] = (32 * _184) + 288
            _199 = mem[_198]
            mem[u + (32 * _184) + 288] = mem[_198]
            w = u + (32 * _184) + 320
            v = 0
            x = _198 + 32
            while v < _199:
                mem[w] = mem[x]
                w = w + 32
                v = v + 1
                x = x + 32
                continue 
            mem[u + 160] = mem[_178 + 160]
            mem[u + 192] = mem[_178 + 192]
            mem[u + 224] = bool(mem[_178 + 224])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _184) + (32 * _199) + 320
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_a0c59979(?) {
    require calldata.size - 4 >= 32
    if address(stor4[arg1].field_0) != msg.sender:
        revert with 0, 'not owner'
    if not stor7.length:
        revert with 0, 'offer not registered'
    if stor6[arg1] >= stor7.length:
        revert with 0, 50
    if stor7[stor6[arg1]].field_0 != arg1:
        revert with 0, 'offer not registered'
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
    stor4[arg1].field_1536 = 0
    uint8(stor4[arg1].field_1792) = 0
    mem[0] = msg.sender
    idx = 0
    while idx < stor5[msg.sender].field_0:
        if idx >= stor5[msg.sender].field_0:
            revert with 0, 50
        if stor5[msg.sender][idx].field_512 != arg1:
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 5
            idx = idx + 1
            continue 
        if stor5[msg.sender].field_0 < 1:
            revert with 0, 17
        if stor5[msg.sender].field_0 - 1 >= stor5[msg.sender].field_0:
            revert with 0, 50
        if idx >= stor5[address(msg.sender)].field_0:
            revert with 0, 50
        address(stor5[address(msg.sender)][idx].field_0) = address(stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_0)
        address(stor5[address(msg.sender)][idx].field_256) = address(stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_256)
        stor5[address(msg.sender)][idx].field_512 = stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_512
        stor5[address(msg.sender)][idx].field_768 = stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_768
        mem[0] = (8 * idx) + sha3(sha3(address(msg.sender), 5)) + 3
        if not stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_768:
            s = sha3(mem[0])
            while sha3((8 * idx) + sha3(sha3(address(msg.sender), 5)) + 3) + stor5[address(msg.sender)][idx].field_768 > s:
                stor[s] = 0
                mem[0] = msg.sender
                mem[32] = 5
                s = s + 1
                continue 
            stor5[address(msg.sender)][idx].field_1024 = stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1024
            mem[0] = (8 * idx) + sha3(sha3(address(msg.sender), 5)) + 4
            if not stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1024:
                s = sha3(mem[0])
                while sha3((8 * idx) + sha3(sha3(address(msg.sender), 5)) + 4) + stor5[address(msg.sender)][idx].field_1024 > s:
                    stor[s] = 0
                    mem[0] = msg.sender
                    mem[32] = 5
                    s = s + 1
                    continue 
            else:
                mem[0] = (8 * stor5[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 5)) + 4
                t = sha3((8 * idx) + sha3(sha3(address(msg.sender), 5)) + 4)
                s = sha3(mem[0])
                while sha3((8 * stor5[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 5)) + 4) + stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1024 > s:
                    stor[t] = stor[s]
                    mem[0] = msg.sender
                    mem[32] = 5
                    t = t + 1
                    s = s + 1
                    continue 
                s = sha3((8 * idx) + sha3(sha3(address(msg.sender), 5)) + 4) + sha3((8 * stor5[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 5)) + 4) + stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1024 - sha3(mem[0])
                while sha3((8 * idx) + sha3(sha3(address(msg.sender), 5)) + 4) + stor5[address(msg.sender)][idx].field_1024 > s:
                    stor[s] = 0
                    mem[0] = msg.sender
                    mem[32] = 5
                    s = s + 1
                    continue 
            stor5[address(msg.sender)][idx].field_1280 = stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1280
            stor5[address(msg.sender)][idx].field_1536 = stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1536
            uint8(stor5[address(msg.sender)][idx].field_1792) = uint8(bool(uint8(stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1792)))
            if not stor5[msg.sender].field_0:
                revert with 0, 49
            address(stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_0) = 0
            address(stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_256) = 0
            stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_512 = 0
            stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_768 = 0
            mem[0] = (8 * stor5[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 5)) + 3
            s = sha3(mem[0])
            while sha3((8 * stor5[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 5)) + 3) + stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_768 > s:
                stor[s] = 0
                mem[0] = msg.sender
                mem[32] = 5
                s = s + 1
                continue 
            stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1024 = 0
            mem[0] = (8 * stor5[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 5)) + 4
            s = sha3(mem[0])
            while sha3((8 * stor5[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 5)) + 4) + stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1024 > s:
                stor[s] = 0
                mem[0] = msg.sender
                mem[32] = 5
                s = s + 1
                continue 
            stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1280 = 0
            stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1536 = 0
            uint8(stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1792) = 0
            stor5[msg.sender].field_0--
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 5
            idx = idx + 1
            continue 
        mem[0] = (8 * stor5[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 5)) + 3
        t = sha3((8 * idx) + sha3(sha3(address(msg.sender), 5)) + 3)
        s = sha3(mem[0])
        while sha3((8 * stor5[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 5)) + 3) + stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_768 > s:
            stor[t] = stor[s]
            mem[0] = msg.sender
            mem[32] = 5
            t = t + 1
            s = s + 1
            continue 
        s = sha3((8 * idx) + sha3(sha3(address(msg.sender), 5)) + 3) + sha3((8 * stor5[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 5)) + 3) + stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_768 - sha3(mem[0])
        while sha3((8 * idx) + sha3(sha3(address(msg.sender), 5)) + 3) + stor5[address(msg.sender)][idx].field_768 > s:
            stor[s] = 0
            mem[0] = msg.sender
            mem[32] = 5
            s = s + 1
            continue 
        stor5[address(msg.sender)][idx].field_1024 = stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1024
        mem[0] = (8 * idx) + sha3(sha3(address(msg.sender), 5)) + 4
        if not stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1024:
            s = sha3(mem[0])
            while sha3((8 * idx) + sha3(sha3(address(msg.sender), 5)) + 4) + stor5[address(msg.sender)][idx].field_1024 > s:
                stor[s] = 0
                mem[0] = msg.sender
                mem[32] = 5
                s = s + 1
                continue 
            stor5[address(msg.sender)][idx].field_1280 = stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1280
            stor5[address(msg.sender)][idx].field_1536 = stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1536
            uint8(stor5[address(msg.sender)][idx].field_1792) = uint8(bool(uint8(stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1792)))
            if not stor5[msg.sender].field_0:
                revert with 0, 49
            address(stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_0) = 0
            address(stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_256) = 0
            stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_512 = 0
            stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_768 = 0
            mem[0] = (8 * stor5[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 5)) + 3
            s = sha3(mem[0])
            while sha3((8 * stor5[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 5)) + 3) + stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_768 > s:
                stor[s] = 0
                mem[0] = msg.sender
                mem[32] = 5
                s = s + 1
                continue 
            stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1024 = 0
            mem[0] = (8 * stor5[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 5)) + 4
            s = sha3(mem[0])
            while sha3((8 * stor5[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 5)) + 4) + stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1024 > s:
                stor[s] = 0
                mem[0] = msg.sender
                mem[32] = 5
                s = s + 1
                continue 
            stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1280 = 0
            stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1536 = 0
            uint8(stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1792) = 0
            stor5[msg.sender].field_0--
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 5
            idx = idx + 1
            continue 
        mem[0] = (8 * stor5[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 5)) + 4
        t = sha3((8 * idx) + sha3(sha3(address(msg.sender), 5)) + 4)
        s = sha3(mem[0])
        while sha3((8 * stor5[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 5)) + 4) + stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1024 > s:
            stor[t] = stor[s]
            mem[0] = msg.sender
            mem[32] = 5
            t = t + 1
            s = s + 1
            continue 
        s = sha3((8 * idx) + sha3(sha3(address(msg.sender), 5)) + 4) + sha3((8 * stor5[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 5)) + 4) + stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1024 - sha3(mem[0])
        while sha3((8 * idx) + sha3(sha3(address(msg.sender), 5)) + 4) + stor5[address(msg.sender)][idx].field_1024 > s:
            stor[s] = 0
            mem[0] = msg.sender
            mem[32] = 5
            s = s + 1
            continue 
        stor5[address(msg.sender)][idx].field_1280 = stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1280
        stor5[address(msg.sender)][idx].field_1536 = stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1536
        uint8(stor5[address(msg.sender)][idx].field_1792) = uint8(bool(uint8(stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1792)))
        if not stor5[msg.sender].field_0:
            revert with 0, 49
        address(stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_0) = 0
        address(stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_256) = 0
        stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_512 = 0
        stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_768 = 0
        mem[0] = (8 * stor5[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 5)) + 3
        s = sha3(mem[0])
        while sha3((8 * stor5[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 5)) + 3) + stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_768 > s:
            stor[s] = 0
            mem[0] = msg.sender
            mem[32] = 5
            s = s + 1
            continue 
        stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1024 = 0
        mem[0] = (8 * stor5[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 5)) + 4
        s = sha3(mem[0])
        while sha3((8 * stor5[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 5)) + 4) + stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1024 > s:
            stor[s] = 0
            mem[0] = msg.sender
            mem[32] = 5
            s = s + 1
            continue 
        stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1280 = 0
        stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1536 = 0
        uint8(stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1792) = 0
        stor5[msg.sender].field_0--
        if sha3((8 * stor5[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 5)) + 4) + stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1024 == -1:
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = 5
        s = sha3((8 * stor5[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 5)) + 4) + stor5[msg.sender][stor5[msg.sender].field_0 - 1].field_1024 + 1
        continue 
    if not uint8(stor4[arg1].field_1792):
        call msg.sender with:
           value stor4[arg1].field_1280 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x6fe9d303: arg1
    return 1
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
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 36).length) + 132] = 0x27c08a1671399b6816045d86602ffa6404f756deddc6a5a58270d7c7668d5eb8
    require ext_code.size(stor2)
    staticcall stor2.fee(uint256 arg1) with:
            gas gas_remaining wei
           args 0x27c08a1671399b6816045d86602ffa6404f756deddc6a5a58270d7c7668d5eb8
    mem[(32 * ('cd', 36).length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor7.length:
        revert with 0, 'offer not registered'
    if stor6[cd[4]] >= stor7.length:
        revert with 0, 50
    if stor7[stor6[cd[4]]].field_0 != cd[4]:
        revert with 0, 'offer not registered'
    if ('cd', 36).length > stor4[cd[4]].field_1024:
        revert with 0, 'too many gems'
    if not ext_call.return_data[0]:
        if msg.value < 10^18:
            revert with 0, 'insufficient accept fee'
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 128] = ('cd', 36).length
        mem[64] = (64 * ('cd', 36).length) + ceil32(return_data.size) + 160
        if not ('cd', 36).length:
            mem[0] = cd[4]
            mem[32] = 4
            idx = 0
            while idx < stor4[cd[4]].field_768:
                if idx >= stor4[cd[4]].field_768:
                    revert with 0, 50
                mem[0] = cd[4]
                mem[32] = 4
                if idx >= stor4[cd[4]].field_1024:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1040 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1040
                    require ext_code.size(stor3)
                    staticcall stor3.balanceOf(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args msg.sender, _1040
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1094 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1094] < 1:
                        revert with 0, 'insufficient gem balance'
                    mem[mem[64] + 4] = _1040
                    require ext_code.size(address(stor4[cd[4]][idx + 3].field_0))
                    staticcall address(stor4[cd[4]][idx + 3].field_0).tokenType(uint256 arg1) with:
                            gas gas_remaining wei
                           args _1040
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1187 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1187] < 3
                    if mem[_1187] > 2:
                        revert with 0, 33
                    if mem[_1187] != 2:
                        revert with 0, 'invalid token type'
                else:
                    mem[32] = 4
                    if idx >= stor4[cd[4]].field_1024:
                        revert with 0, 50
                    mem[0] = sha3(cd[4], 4) + 4
                    if idx >= mem[96]:
                        revert with 0, 50
                    if stor4[cd[4]][idx + 4].field_0:
                        mem[(32 * idx) + 128] = stor4[cd[4]][idx + 4].field_0
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = stor4[cd[4]][idx + 4].field_0
                        require ext_code.size(stor3)
                        staticcall stor3.balanceOf(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args msg.sender, stor4[cd[4]][idx + 4].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1099 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1099] < 1:
                            revert with 0, 'insufficient gem balance'
                        mem[mem[64] + 4] = stor4[cd[4]][idx + 4].field_0
                        require ext_code.size(address(stor4[cd[4]][idx + 3].field_0))
                        staticcall address(stor4[cd[4]][idx + 3].field_0).tokenType(uint256 arg1) with:
                                gas gas_remaining wei
                               args stor4[cd[4]][idx + 4].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1194 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1194] < 3
                        if mem[_1194] > 2:
                            revert with 0, 33
                        if mem[_1194] != 2:
                            revert with 0, 'invalid token type'
                    else:
                        _1051 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1051
                        require ext_code.size(stor3)
                        staticcall stor3.balanceOf(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args msg.sender, _1051
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1100 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1100] < 1:
                            revert with 0, 'insufficient gem balance'
                        mem[mem[64] + 4] = _1051
                        require ext_code.size(address(stor4[cd[4]][idx + 3].field_0))
                        staticcall address(stor4[cd[4]][idx + 3].field_0).tokenType(uint256 arg1) with:
                                gas gas_remaining wei
                               args _1051
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1195 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1195] < 3
                        if mem[_1195] > 2:
                            revert with 0, 33
                        if mem[_1195] != 2:
                            revert with 0, 'invalid token type'
                if idx >= mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 160] = 1
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
            _1030 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_1030]:
                uint8(stor4[cd[4]].field_1792) = 1
                call msg.sender with:
                   value 10^18 wei
                     gas 0 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    return 0
            if 10^18 > !stor4[cd[4]].field_1280:
                revert with 0, 17
            if stor1.length > !(stor4[cd[4]].field_1280 + 10^18):
                revert with 0, 17
            stor1.length = stor1.length + stor4[cd[4]].field_1280 + 10^18
            mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(stor4[cd[4]].field_0)
            mem[mem[64] + 68] = 160
            _1158 = mem[96]
            mem[mem[64] + 164] = mem[96]
            mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 100] = (32 * mem[96]) + 192
            _1462 = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 128]
            mem[mem[64] + (32 * mem[96]) + 196] = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 128]
            mem[mem[64] + (32 * _1158) + 228 len 32 * _1462] = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 160 len 32 * _1462]
            mem[mem[64] + (32 * _1158) + (32 * _1462) + 228] = 0
            require ext_code.size(stor3)
            call stor3.safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(stor4[cd[4]].field_0), 160, mem[mem[64] + 100], (32 * _1158) + (32 * _1462) + 224, mem[mem[64] + 164 len (32 * _1158) + (32 * _1462) + 64], 0
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
                mem[0] = sha3(cd[4], 4) + 4
                idx = 0
                while stor4[cd[4]].field_1024 > idx:
                    stor4[cd[4]][idx + 4].field_0 = 0
                    idx = idx + 1
                    continue 
                stor4[cd[4]].field_1280 = 0
                stor4[cd[4]].field_1536 = 0
                uint8(stor4[cd[4]].field_1792) = 0
                mem[mem[64]] = cd[4]
                mem[mem[64] + 32] = msg.sender
                mem[mem[64] + 64] = 96
                _2005 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                var99001 = _2005
                emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _2005) + 32]
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
                    mem[0] = sha3(cd[4], 4) + 4
                    idx = 0
                    while stor4[cd[4]].field_1024 > idx:
                        stor4[cd[4]][idx + 4].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor4[cd[4]].field_1280 = 0
                    stor4[cd[4]].field_1536 = 0
                    uint8(stor4[cd[4]].field_1792) = 0
                    mem[mem[64]] = cd[4]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = 96
                    _2004 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    var99001 = _2004
                    emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _2004) + 32]
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
                        mem[0] = sha3(cd[4], 4) + 4
                        idx = 0
                        while stor4[cd[4]].field_1024 > idx:
                            stor4[cd[4]][idx + 4].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor4[cd[4]].field_1280 = 0
                        stor4[cd[4]].field_1536 = 0
                        uint8(stor4[cd[4]].field_1792) = 0
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = 96
                        _2002 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _2002) + 32]
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
                        mem[0] = sha3(cd[4], 4) + 4
                        idx = 0
                        while stor4[cd[4]].field_1024 > idx:
                            stor4[cd[4]][idx + 4].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor4[cd[4]].field_1280 = 0
                        stor4[cd[4]].field_1536 = 0
                        uint8(stor4[cd[4]].field_1792) = 0
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = 96
                        _2003 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _2003) + 32]
        else:
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 160 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            mem[0] = cd[4]
            mem[32] = 4
            idx = 0
            while idx < stor4[cd[4]].field_768:
                if idx >= stor4[cd[4]].field_768:
                    revert with 0, 50
                mem[0] = cd[4]
                mem[32] = 4
                if idx >= stor4[cd[4]].field_1024:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1043 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1043
                    require ext_code.size(stor3)
                    staticcall stor3.balanceOf(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args msg.sender, _1043
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1095 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1095] < 1:
                        revert with 0, 'insufficient gem balance'
                    mem[mem[64] + 4] = _1043
                    require ext_code.size(address(stor4[cd[4]][idx + 3].field_0))
                    staticcall address(stor4[cd[4]][idx + 3].field_0).tokenType(uint256 arg1) with:
                            gas gas_remaining wei
                           args _1043
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1189 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1189] < 3
                    if mem[_1189] > 2:
                        revert with 0, 33
                    if mem[_1189] != 2:
                        revert with 0, 'invalid token type'
                else:
                    mem[32] = 4
                    if idx >= stor4[cd[4]].field_1024:
                        revert with 0, 50
                    mem[0] = sha3(cd[4], 4) + 4
                    if idx >= mem[96]:
                        revert with 0, 50
                    if stor4[cd[4]][idx + 4].field_0:
                        mem[(32 * idx) + 128] = stor4[cd[4]][idx + 4].field_0
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = stor4[cd[4]][idx + 4].field_0
                        require ext_code.size(stor3)
                        staticcall stor3.balanceOf(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args msg.sender, stor4[cd[4]][idx + 4].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1102 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1102] < 1:
                            revert with 0, 'insufficient gem balance'
                        mem[mem[64] + 4] = stor4[cd[4]][idx + 4].field_0
                        require ext_code.size(address(stor4[cd[4]][idx + 3].field_0))
                        staticcall address(stor4[cd[4]][idx + 3].field_0).tokenType(uint256 arg1) with:
                                gas gas_remaining wei
                               args stor4[cd[4]][idx + 4].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1196 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1196] < 3
                        if mem[_1196] > 2:
                            revert with 0, 33
                        if mem[_1196] != 2:
                            revert with 0, 'invalid token type'
                    else:
                        _1054 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1054
                        require ext_code.size(stor3)
                        staticcall stor3.balanceOf(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args msg.sender, _1054
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1103 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1103] < 1:
                            revert with 0, 'insufficient gem balance'
                        mem[mem[64] + 4] = _1054
                        require ext_code.size(address(stor4[cd[4]][idx + 3].field_0))
                        staticcall address(stor4[cd[4]][idx + 3].field_0).tokenType(uint256 arg1) with:
                                gas gas_remaining wei
                               args _1054
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1197 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1197] < 3
                        if mem[_1197] > 2:
                            revert with 0, 33
                        if mem[_1197] != 2:
                            revert with 0, 'invalid token type'
                if idx >= mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 160] = 1
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
            _1032 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_1032]:
                uint8(stor4[cd[4]].field_1792) = 1
                call msg.sender with:
                   value 10^18 wei
                     gas 0 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    return 0
            if 10^18 > !stor4[cd[4]].field_1280:
                revert with 0, 17
            if stor1.length > !(stor4[cd[4]].field_1280 + 10^18):
                revert with 0, 17
            stor1.length = stor1.length + stor4[cd[4]].field_1280 + 10^18
            mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(stor4[cd[4]].field_0)
            mem[mem[64] + 68] = 160
            _1161 = mem[96]
            mem[mem[64] + 164] = mem[96]
            mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 100] = (32 * mem[96]) + 192
            _1463 = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 128]
            mem[mem[64] + (32 * mem[96]) + 196] = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 128]
            mem[mem[64] + (32 * _1161) + 228 len 32 * _1463] = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 160 len 32 * _1463]
            mem[mem[64] + (32 * _1161) + (32 * _1463) + 228] = 0
            require ext_code.size(stor3)
            call stor3.safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(stor4[cd[4]].field_0), 160, mem[mem[64] + 100], (32 * _1161) + (32 * _1463) + 224, mem[mem[64] + 164 len (32 * _1161) + (32 * _1463) + 64], 0
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
                mem[0] = sha3(cd[4], 4) + 4
                idx = 0
                while stor4[cd[4]].field_1024 > idx:
                    stor4[cd[4]][idx + 4].field_0 = 0
                    idx = idx + 1
                    continue 
                stor4[cd[4]].field_1280 = 0
                stor4[cd[4]].field_1536 = 0
                uint8(stor4[cd[4]].field_1792) = 0
                mem[mem[64]] = cd[4]
                mem[mem[64] + 32] = msg.sender
                mem[mem[64] + 64] = 96
                _2009 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _2009) + 32]
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
                    mem[0] = sha3(cd[4], 4) + 4
                    idx = 0
                    while stor4[cd[4]].field_1024 > idx:
                        stor4[cd[4]][idx + 4].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor4[cd[4]].field_1280 = 0
                    stor4[cd[4]].field_1536 = 0
                    uint8(stor4[cd[4]].field_1792) = 0
                    mem[mem[64]] = cd[4]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = 96
                    _2008 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _2008) + 32]
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
                        mem[0] = sha3(cd[4], 4) + 4
                        idx = 0
                        while stor4[cd[4]].field_1024 > idx:
                            stor4[cd[4]][idx + 4].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor4[cd[4]].field_1280 = 0
                        stor4[cd[4]].field_1536 = 0
                        uint8(stor4[cd[4]].field_1792) = 0
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = 96
                        _2006 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _2006) + 32]
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
                        mem[0] = sha3(cd[4], 4) + 4
                        idx = 0
                        while stor4[cd[4]].field_1024 > idx:
                            stor4[cd[4]][idx + 4].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor4[cd[4]].field_1280 = 0
                        stor4[cd[4]].field_1536 = 0
                        uint8(stor4[cd[4]].field_1792) = 0
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = 96
                        _2007 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _2007) + 32]
    else:
        if msg.value < ext_call.return_data[0]:
            revert with 0, 'insufficient accept fee'
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 128] = ('cd', 36).length
        mem[64] = (64 * ('cd', 36).length) + ceil32(return_data.size) + 160
        if not ('cd', 36).length:
            mem[0] = cd[4]
            mem[32] = 4
            idx = 0
            while idx < stor4[cd[4]].field_768:
                if idx >= stor4[cd[4]].field_768:
                    revert with 0, 50
                mem[0] = cd[4]
                mem[32] = 4
                if idx >= stor4[cd[4]].field_1024:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1046 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1046
                    require ext_code.size(stor3)
                    staticcall stor3.balanceOf(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args msg.sender, _1046
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1096 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1096] < 1:
                        revert with 0, 'insufficient gem balance'
                    mem[mem[64] + 4] = _1046
                    require ext_code.size(address(stor4[cd[4]][idx + 3].field_0))
                    staticcall address(stor4[cd[4]][idx + 3].field_0).tokenType(uint256 arg1) with:
                            gas gas_remaining wei
                           args _1046
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1191 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1191] < 3
                    if mem[_1191] > 2:
                        revert with 0, 33
                    if mem[_1191] != 2:
                        revert with 0, 'invalid token type'
                else:
                    mem[32] = 4
                    if idx >= stor4[cd[4]].field_1024:
                        revert with 0, 50
                    mem[0] = sha3(cd[4], 4) + 4
                    if idx >= mem[96]:
                        revert with 0, 50
                    if stor4[cd[4]][idx + 4].field_0:
                        mem[(32 * idx) + 128] = stor4[cd[4]][idx + 4].field_0
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = stor4[cd[4]][idx + 4].field_0
                        require ext_code.size(stor3)
                        staticcall stor3.balanceOf(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args msg.sender, stor4[cd[4]][idx + 4].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1105 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1105] < 1:
                            revert with 0, 'insufficient gem balance'
                        mem[mem[64] + 4] = stor4[cd[4]][idx + 4].field_0
                        require ext_code.size(address(stor4[cd[4]][idx + 3].field_0))
                        staticcall address(stor4[cd[4]][idx + 3].field_0).tokenType(uint256 arg1) with:
                                gas gas_remaining wei
                               args stor4[cd[4]][idx + 4].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1198 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1198] < 3
                        if mem[_1198] > 2:
                            revert with 0, 33
                        if mem[_1198] != 2:
                            revert with 0, 'invalid token type'
                    else:
                        _1057 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1057
                        require ext_code.size(stor3)
                        staticcall stor3.balanceOf(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args msg.sender, _1057
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1106 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1106] < 1:
                            revert with 0, 'insufficient gem balance'
                        mem[mem[64] + 4] = _1057
                        require ext_code.size(address(stor4[cd[4]][idx + 3].field_0))
                        staticcall address(stor4[cd[4]][idx + 3].field_0).tokenType(uint256 arg1) with:
                                gas gas_remaining wei
                               args _1057
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1199 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1199] < 3
                        if mem[_1199] > 2:
                            revert with 0, 33
                        if mem[_1199] != 2:
                            revert with 0, 'invalid token type'
                if idx >= mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 160] = 1
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
            _1034 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_1034]:
                uint8(stor4[cd[4]].field_1792) = 1
                call msg.sender with:
                   value ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    return 0
            if ext_call.return_data[0] > !stor4[cd[4]].field_1280:
                revert with 0, 17
            if stor1.length > !(ext_call.return_data[0] + stor4[cd[4]].field_1280):
                revert with 0, 17
            stor1.length = stor1.length + ext_call.return_data[0] + stor4[cd[4]].field_1280
            mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(stor4[cd[4]].field_0)
            mem[mem[64] + 68] = 160
            _1164 = mem[96]
            mem[mem[64] + 164] = mem[96]
            mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 100] = (32 * mem[96]) + 192
            _1464 = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 128]
            mem[mem[64] + (32 * mem[96]) + 196] = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 128]
            mem[mem[64] + (32 * _1164) + 228 len 32 * _1464] = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 160 len 32 * _1464]
            mem[mem[64] + (32 * _1164) + (32 * _1464) + 228] = 0
            require ext_code.size(stor3)
            call stor3.safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(stor4[cd[4]].field_0), 160, mem[mem[64] + 100], (32 * _1164) + (32 * _1464) + 224, mem[mem[64] + 164 len (32 * _1164) + (32 * _1464) + 64], 0
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
                mem[0] = sha3(cd[4], 4) + 4
                idx = 0
                while stor4[cd[4]].field_1024 > idx:
                    stor4[cd[4]][idx + 4].field_0 = 0
                    idx = idx + 1
                    continue 
                stor4[cd[4]].field_1280 = 0
                stor4[cd[4]].field_1536 = 0
                uint8(stor4[cd[4]].field_1792) = 0
                mem[mem[64]] = cd[4]
                mem[mem[64] + 32] = msg.sender
                mem[mem[64] + 64] = 96
                _2013 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                var99001 = _2013
                emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _2013) + 32]
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
                    mem[0] = sha3(cd[4], 4) + 4
                    idx = 0
                    while stor4[cd[4]].field_1024 > idx:
                        stor4[cd[4]][idx + 4].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor4[cd[4]].field_1280 = 0
                    stor4[cd[4]].field_1536 = 0
                    uint8(stor4[cd[4]].field_1792) = 0
                    mem[mem[64]] = cd[4]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = 96
                    _2012 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    var99001 = _2012
                    emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _2012) + 32]
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
                        mem[0] = sha3(cd[4], 4) + 4
                        idx = 0
                        while stor4[cd[4]].field_1024 > idx:
                            stor4[cd[4]][idx + 4].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor4[cd[4]].field_1280 = 0
                        stor4[cd[4]].field_1536 = 0
                        uint8(stor4[cd[4]].field_1792) = 0
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = 96
                        _2010 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _2010) + 32]
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
                        mem[0] = sha3(cd[4], 4) + 4
                        idx = 0
                        while stor4[cd[4]].field_1024 > idx:
                            stor4[cd[4]][idx + 4].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor4[cd[4]].field_1280 = 0
                        stor4[cd[4]].field_1536 = 0
                        uint8(stor4[cd[4]].field_1792) = 0
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = 96
                        _2011 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _2011) + 32]
        else:
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 160 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            mem[0] = cd[4]
            mem[32] = 4
            idx = 0
            while idx < stor4[cd[4]].field_768:
                if idx >= stor4[cd[4]].field_768:
                    revert with 0, 50
                mem[0] = cd[4]
                mem[32] = 4
                if idx >= stor4[cd[4]].field_1024:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1049 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1049
                    require ext_code.size(stor3)
                    staticcall stor3.balanceOf(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args msg.sender, _1049
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1097 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1097] < 1:
                        revert with 0, 'insufficient gem balance'
                    mem[mem[64] + 4] = _1049
                    require ext_code.size(address(stor4[cd[4]][idx + 3].field_0))
                    staticcall address(stor4[cd[4]][idx + 3].field_0).tokenType(uint256 arg1) with:
                            gas gas_remaining wei
                           args _1049
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1193 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1193] < 3
                    if mem[_1193] > 2:
                        revert with 0, 33
                    if mem[_1193] != 2:
                        revert with 0, 'invalid token type'
                else:
                    mem[32] = 4
                    if idx >= stor4[cd[4]].field_1024:
                        revert with 0, 50
                    mem[0] = sha3(cd[4], 4) + 4
                    if idx >= mem[96]:
                        revert with 0, 50
                    if stor4[cd[4]][idx + 4].field_0:
                        mem[(32 * idx) + 128] = stor4[cd[4]][idx + 4].field_0
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = stor4[cd[4]][idx + 4].field_0
                        require ext_code.size(stor3)
                        staticcall stor3.balanceOf(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args msg.sender, stor4[cd[4]][idx + 4].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1108 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1108] < 1:
                            revert with 0, 'insufficient gem balance'
                        mem[mem[64] + 4] = stor4[cd[4]][idx + 4].field_0
                        require ext_code.size(address(stor4[cd[4]][idx + 3].field_0))
                        staticcall address(stor4[cd[4]][idx + 3].field_0).tokenType(uint256 arg1) with:
                                gas gas_remaining wei
                               args stor4[cd[4]][idx + 4].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1200 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1200] < 3
                        if mem[_1200] > 2:
                            revert with 0, 33
                        if mem[_1200] != 2:
                            revert with 0, 'invalid token type'
                    else:
                        _1060 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1060
                        require ext_code.size(stor3)
                        staticcall stor3.balanceOf(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args msg.sender, _1060
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1109 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1109] < 1:
                            revert with 0, 'insufficient gem balance'
                        mem[mem[64] + 4] = _1060
                        require ext_code.size(address(stor4[cd[4]][idx + 3].field_0))
                        staticcall address(stor4[cd[4]][idx + 3].field_0).tokenType(uint256 arg1) with:
                                gas gas_remaining wei
                               args _1060
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1201 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1201] < 3
                        if mem[_1201] > 2:
                            revert with 0, 33
                        if mem[_1201] != 2:
                            revert with 0, 'invalid token type'
                if idx >= mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 160] = 1
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
            _1036 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_1036]:
                uint8(stor4[cd[4]].field_1792) = 1
                call msg.sender with:
                   value ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    return 0
            if ext_call.return_data[0] > !stor4[cd[4]].field_1280:
                revert with 0, 17
            if stor1.length > !(ext_call.return_data[0] + stor4[cd[4]].field_1280):
                revert with 0, 17
            stor1.length = stor1.length + ext_call.return_data[0] + stor4[cd[4]].field_1280
            mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(stor4[cd[4]].field_0)
            mem[mem[64] + 68] = 160
            _1167 = mem[96]
            mem[mem[64] + 164] = mem[96]
            mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 100] = (32 * mem[96]) + 192
            _1465 = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 128]
            mem[mem[64] + (32 * mem[96]) + 196] = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 128]
            mem[mem[64] + (32 * _1167) + 228 len 32 * _1465] = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 160 len 32 * _1465]
            mem[mem[64] + (32 * _1167) + (32 * _1465) + 228] = 0
            require ext_code.size(stor3)
            call stor3.safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(stor4[cd[4]].field_0), 160, mem[mem[64] + 100], (32 * _1167) + (32 * _1465) + 224, mem[mem[64] + 164 len (32 * _1167) + (32 * _1465) + 64], 0
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
                mem[0] = sha3(cd[4], 4) + 4
                idx = 0
                while stor4[cd[4]].field_1024 > idx:
                    stor4[cd[4]][idx + 4].field_0 = 0
                    idx = idx + 1
                    continue 
                stor4[cd[4]].field_1280 = 0
                stor4[cd[4]].field_1536 = 0
                uint8(stor4[cd[4]].field_1792) = 0
                mem[mem[64]] = cd[4]
                mem[mem[64] + 32] = msg.sender
                mem[mem[64] + 64] = 96
                _2017 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _2017) + 32]
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
                    mem[0] = sha3(cd[4], 4) + 4
                    idx = 0
                    while stor4[cd[4]].field_1024 > idx:
                        stor4[cd[4]][idx + 4].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor4[cd[4]].field_1280 = 0
                    stor4[cd[4]].field_1536 = 0
                    uint8(stor4[cd[4]].field_1792) = 0
                    mem[mem[64]] = cd[4]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = 96
                    _2016 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _2016) + 32]
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
                        mem[0] = sha3(cd[4], 4) + 4
                        idx = 0
                        while stor4[cd[4]].field_1024 > idx:
                            stor4[cd[4]][idx + 4].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor4[cd[4]].field_1280 = 0
                        stor4[cd[4]].field_1536 = 0
                        uint8(stor4[cd[4]].field_1792) = 0
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = 96
                        _2014 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _2014) + 32]
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
                        mem[0] = sha3(cd[4], 4) + 4
                        idx = 0
                        while stor4[cd[4]].field_1024 > idx:
                            stor4[cd[4]][idx + 4].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor4[cd[4]].field_1280 = 0
                        stor4[cd[4]].field_1536 = 0
                        uint8(stor4[cd[4]].field_1792) = 0
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = 96
                        _2015 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _2015) + 32]
    return 1
}



}
