contract main {




// =====================  Runtime code  =====================


#
#  - enterAnswer(uint256 arg1, bytes32 arg2)
#  - checkAnswer(uint256 arg1, bytes32 arg2)
#
mapping of uint256 stor0;
mapping of uint8 stor1;
mapping of uint256 sub_b42512b2;
uint256 sub_93199b09;
uint256 numberOfQuestions;
address teacherAddress;
array of struct stor6;

function sub_30e23fbf(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return bool(uint8(stor1[arg1][arg2]))
}

function sub_93199b09(?) payable {
    return sub_93199b09
}

function sub_b42512b2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b42512b2[arg1]
}

function numberOfQuestions() payable {
    return numberOfQuestions
}

function teacher() payable {
    return teacherAddress
}

function _fallback() payable {
    revert
}

function addAnswer(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if teacherAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Teacher: Caller is not the teacher'
    stor0[stor4] = arg1
    if numberOfQuestions == -1:
        revert with 'NH{q', 17
    numberOfQuestions++
}

function sub_c83c6209(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if teacherAddress != msg.sender:
        revert with 0, 'Teacher: Caller is not the teacher'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if teacherAddress != msg.sender:
            revert with 0, 'Teacher: Caller is not the teacher'
        mem[0] = numberOfQuestions
        mem[32] = 0
        stor0[stor4] = mem[(32 * idx) + 128]
        if numberOfQuestions == -1:
            revert with 'NH{q', 17
        numberOfQuestions++
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_67b09cdb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if sub_b42512b2[address(msg.sender)] > 0:
        revert with 0, 'Teacher: You are already enrolled'
    stor6.length++
    stor6[stor6.length].field_0 = msg.sender
    if stor6[stor6.length].field_256:
        if stor6[stor6.length].field_256 == stor6[stor6.length].field_257 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor[sha3((4 * stor6.length) + ('name', 'stor6', 6) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor6[stor6.length].field_256 = 0
            idx = 0
            while stor6[stor6.length].field_257 + 31 / 32 > idx:
                stor[idx + sha3((4 * stor6.length) + ('name', 'stor6', 6) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor6[stor6.length].field_256 == stor6[stor6.length].field_257 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor[sha3((4 * stor6.length) + ('name', 'stor6', 6) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor6[stor6.length].field_256 = 0
            idx = 0
            while stor6[stor6.length].field_257 + 31 / 32 > idx:
                stor[idx + sha3((4 * stor6.length) + ('name', 'stor6', 6) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    stor6[stor6.length].field_512 = block.timestamp
    stor6[stor6.length].field_768 = 0
    if sub_93199b09 == -1:
        revert with 'NH{q', 17
    sub_93199b09++
    sub_b42512b2[address(msg.sender)] = sub_93199b09
}

function students(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor6.length
    if stor6[arg1].field_256:
        if stor6[arg1].field_256 == stor6[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor6[arg1].field_256:
            if stor6[arg1].field_256 == stor6[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if stor6[arg1].field_257:
                if 31 >= stor6[arg1].field_257:
                    mem[128] = 256 * stor6[arg1].field_264
                else:
                    mem[128] = stor[sha3((4 * arg1) + ('name', 'stor6', 6) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor6[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor6', 6) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor6[arg1].field_256 == stor6[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if stor6[arg1].field_257:
                if 31 >= stor6[arg1].field_257:
                    mem[128] = 256 * stor6[arg1].field_264
                else:
                    mem[128] = stor[sha3((4 * arg1) + ('name', 'stor6', 6) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor6[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor6', 6) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor6[arg1].field_0, 
               Array(len=2 * Mask(256, -1, stor6[arg1].field_257), data=mem[128 len ceil32(stor6[arg1].field_257)]),
               stor6[arg1].field_512,
               bool(stor6[arg1].field_768)
    if stor6[arg1].field_256 == stor6[arg1].field_257 < 32:
        revert with 'NH{q', 34
    if stor6[arg1].field_256:
        if stor6[arg1].field_256 == stor6[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor6[arg1].field_257:
            if 31 >= stor6[arg1].field_257:
                mem[128] = 256 * stor6[arg1].field_264
            else:
                mem[128] = stor[sha3((4 * arg1) + ('name', 'stor6', 6) + 1)].field_0
                idx = 128
                s = 0
                while stor6[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor6', 6) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor6[arg1].field_256 == stor6[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor6[arg1].field_257:
            if 31 >= stor6[arg1].field_257:
                mem[128] = 256 * stor6[arg1].field_264
            else:
                mem[128] = stor[sha3((4 * arg1) + ('name', 'stor6', 6) + 1)].field_0
                idx = 128
                s = 0
                while stor6[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor6', 6) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor6[arg1].field_0, 
           Array(len=stor6[arg1].field_256, data=mem[128 len ceil32(stor6[arg1].field_257)]),
           stor6[arg1].field_512,
           bool(stor6[arg1].field_768)
}

function studentRoll() payable {
    if sub_93199b09 > test266151307():
        revert with 'NH{q', 65
    mem[96] = sub_93199b09
    mem[64] = (32 * sub_93199b09) + 128
    if not sub_93199b09:
        idx = 0
        while idx < sub_93199b09:
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            _70 = mem[64]
            mem[64] = mem[64] + 128
            mem[_70] = stor6[idx].field_0
            if stor6[idx].field_256:
                if stor6[idx].field_256 == stor6[idx].field_257 < 32:
                    revert with 'NH{q', 34
                _72 = mem[64]
                mem[64] = mem[64] + ceil32(stor6[idx].field_257) + 32
                mem[_72] = stor6[idx].field_257
                if stor6[idx].field_256:
                    if stor6[idx].field_256 == stor6[idx].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor6[idx].field_257:
                        if 31 >= stor6[idx].field_257:
                            mem[_72 + 32] = 256 * stor6[idx].field_264
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_72 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _72 + 32
                            t = sha3(mem[0])
                            while _72 + stor6[idx].field_257 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor6[idx].field_256 == stor6[idx].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor6[idx].field_257:
                        if 31 >= stor6[idx].field_257:
                            mem[_72 + 32] = 256 * stor6[idx].field_264
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_72 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _72 + 32
                            t = sha3(mem[0])
                            while _72 + stor6[idx].field_257 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_70 + 32] = _72
            else:
                if stor6[idx].field_256 == stor6[idx].field_257 < 32:
                    revert with 'NH{q', 34
                _73 = mem[64]
                mem[64] = mem[64] + ceil32(stor6[idx].field_257) + 32
                mem[_73] = stor6[idx].field_257
                if stor6[idx].field_256:
                    if stor6[idx].field_256 == stor6[idx].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor6[idx].field_257:
                        if 31 >= stor6[idx].field_257:
                            mem[_73 + 32] = 256 * stor6[idx].field_264
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_73 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _73 + 32
                            t = sha3(mem[0])
                            while _73 + stor6[idx].field_257 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor6[idx].field_256 == stor6[idx].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor6[idx].field_257:
                        if 31 >= stor6[idx].field_257:
                            mem[_73 + 32] = 256 * stor6[idx].field_264
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_73 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _73 + 32
                            t = sha3(mem[0])
                            while _73 + stor6[idx].field_257 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_70 + 32] = _73
            mem[_70 + 64] = stor6[idx].field_512
            mem[_70 + 96] = bool(stor6[idx].field_768)
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _70
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _68 = mem[64]
        mem[mem[64]] = 32
        _71 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _71:
            mem[u] = t + -_68 - 64
            _133 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _143 = mem[_133 + 32]
            mem[t + 32] = 128
            _146 = mem[_143]
            mem[t + 128] = mem[_143]
            v = 0
            while v < _146:
                mem[t + v + 160] = mem[_143 + v + 32]
                v = v + 32
                continue 
            if ceil32(_146) > _146:
                mem[t + _146 + 160] = 0
            mem[t + 64] = mem[_133 + 64]
            mem[t + 96] = bool(mem[_133 + 96])
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_146) + 160
            u = u + 32
            continue 
    else:
        mem[64] = (32 * sub_93199b09) + 256
        mem[(32 * sub_93199b09) + 128] = 0
        mem[(32 * sub_93199b09) + 160] = 96
        mem[(32 * sub_93199b09) + 192] = 0
        mem[(32 * sub_93199b09) + 224] = 0
        mem[var8001] = (32 * sub_93199b09) + 128
        s = var8001
        idx = var8002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[(32 * sub_93199b09) + 128] = 0
            mem[(32 * sub_93199b09) + 160] = 96
            mem[(32 * sub_93199b09) + 192] = 0
            mem[(32 * sub_93199b09) + 224] = 0
            mem[s + 32] = (32 * sub_93199b09) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < sub_93199b09:
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            _182 = mem[64]
            mem[64] = mem[64] + 128
            mem[_182] = stor6[idx].field_0
            if stor6[idx].field_256:
                if stor6[idx].field_256 == stor6[idx].field_257 < 32:
                    revert with 'NH{q', 34
                _185 = mem[64]
                mem[64] = mem[64] + ceil32(stor6[idx].field_257) + 32
                mem[_185] = stor6[idx].field_257
                if stor6[idx].field_256:
                    if stor6[idx].field_256 == stor6[idx].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor6[idx].field_257:
                        if 31 >= stor6[idx].field_257:
                            mem[_185 + 32] = 256 * stor6[idx].field_264
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_185 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _185 + 32
                            t = sha3(mem[0])
                            while _185 + stor6[idx].field_257 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor6[idx].field_256 == stor6[idx].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor6[idx].field_257:
                        if 31 >= stor6[idx].field_257:
                            mem[_185 + 32] = 256 * stor6[idx].field_264
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_185 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _185 + 32
                            t = sha3(mem[0])
                            while _185 + stor6[idx].field_257 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_182 + 32] = _185
            else:
                if stor6[idx].field_256 == stor6[idx].field_257 < 32:
                    revert with 'NH{q', 34
                _187 = mem[64]
                mem[64] = mem[64] + ceil32(stor6[idx].field_257) + 32
                mem[_187] = stor6[idx].field_257
                if stor6[idx].field_256:
                    if stor6[idx].field_256 == stor6[idx].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor6[idx].field_257:
                        if 31 >= stor6[idx].field_257:
                            mem[_187 + 32] = 256 * stor6[idx].field_264
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_187 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _187 + 32
                            t = sha3(mem[0])
                            while _187 + stor6[idx].field_257 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor6[idx].field_256 == stor6[idx].field_257 < 32:
                        revert with 'NH{q', 34
                    if stor6[idx].field_257:
                        if 31 >= stor6[idx].field_257:
                            mem[_187 + 32] = 256 * stor6[idx].field_264
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_187 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _187 + 32
                            t = sha3(mem[0])
                            while _187 + stor6[idx].field_257 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_182 + 32] = _187
            mem[_182 + 64] = stor6[idx].field_512
            mem[_182 + 96] = bool(stor6[idx].field_768)
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _182
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _180 = mem[64]
        mem[mem[64]] = 32
        _183 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _183:
            mem[u] = t + -_180 - 64
            _216 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _223 = mem[_216 + 32]
            mem[t + 32] = 128
            _224 = mem[_223]
            mem[t + 128] = mem[_223]
            v = 0
            while v < _224:
                mem[t + v + 160] = mem[_223 + v + 32]
                v = v + 32
                continue 
            if ceil32(_224) > _224:
                mem[t + _224 + 160] = 0
            mem[t + 64] = mem[_216 + 64]
            mem[t + 96] = bool(mem[_216 + 96])
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_224) + 160
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function graduates() payable {
    if sub_93199b09 > test266151307():
        revert with 'NH{q', 65
    mem[96] = sub_93199b09
    mem[64] = (32 * sub_93199b09) + 128
    if not sub_93199b09:
        idx = 0
        s = 0
        while idx < sub_93199b09:
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            _119 = mem[64]
            mem[64] = mem[64] + 128
            mem[_119] = stor6[idx].field_0
            if stor6[idx].field_256:
                if stor6[idx].field_256 == stor6[idx].field_257 < 32:
                    revert with 'NH{q', 34
                _124 = mem[64]
                mem[64] = mem[64] + ceil32(stor6[idx].field_257) + 32
                mem[_124] = stor6[idx].field_257
                if stor6[idx].field_256:
                    if stor6[idx].field_256 == stor6[idx].field_257 < 32:
                        revert with 'NH{q', 34
                    if not stor6[idx].field_257:
                        mem[_119 + 32] = _124
                        mem[_119 + 64] = stor6[idx].field_512
                        mem[_119 + 96] = bool(stor6[idx].field_768)
                        if not stor6[idx].field_768:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + 128] = stor6[idx].field_0
                    else:
                        if 31 >= stor6[idx].field_257:
                            mem[_124 + 32] = 256 * stor6[idx].field_264
                            mem[_119 + 32] = _124
                            mem[_119 + 64] = stor6[idx].field_512
                            mem[_119 + 96] = bool(stor6[idx].field_768)
                            if not stor6[idx].field_768:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s
                                continue 
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + 128] = stor6[idx].field_0
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_124 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            t = _124 + 32
                            u = sha3(mem[0])
                            while _124 + stor6[idx].field_257 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_119 + 32] = _124
                            mem[_119 + 64] = stor6[idx].field_512
                            mem[_119 + 96] = bool(stor6[idx].field_768)
                            if not stor6[idx].field_768:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s
                                continue 
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + 128] = mem[_119 + 12 len 20]
                else:
                    if stor6[idx].field_256 == stor6[idx].field_257 < 32:
                        revert with 'NH{q', 34
                    if not stor6[idx].field_257:
                        mem[_119 + 32] = _124
                        mem[_119 + 64] = stor6[idx].field_512
                        mem[_119 + 96] = bool(stor6[idx].field_768)
                        if not stor6[idx].field_768:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + 128] = stor6[idx].field_0
                    else:
                        if 31 >= stor6[idx].field_257:
                            mem[_124 + 32] = 256 * stor6[idx].field_264
                            mem[_119 + 32] = _124
                            mem[_119 + 64] = stor6[idx].field_512
                            mem[_119 + 96] = bool(stor6[idx].field_768)
                            if not stor6[idx].field_768:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s
                                continue 
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + 128] = stor6[idx].field_0
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_124 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            t = _124 + 32
                            u = sha3(mem[0])
                            while _124 + stor6[idx].field_257 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_119 + 32] = _124
                            mem[_119 + 64] = stor6[idx].field_512
                            mem[_119 + 96] = bool(stor6[idx].field_768)
                            if not stor6[idx].field_768:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s
                                continue 
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + 128] = mem[_119 + 12 len 20]
            else:
                if stor6[idx].field_256 == stor6[idx].field_257 < 32:
                    revert with 'NH{q', 34
                _126 = mem[64]
                mem[64] = mem[64] + ceil32(stor6[idx].field_257) + 32
                mem[_126] = stor6[idx].field_257
                if stor6[idx].field_256:
                    if stor6[idx].field_256 == stor6[idx].field_257 < 32:
                        revert with 'NH{q', 34
                    if not stor6[idx].field_257:
                        mem[_119 + 32] = _126
                        mem[_119 + 64] = stor6[idx].field_512
                        mem[_119 + 96] = bool(stor6[idx].field_768)
                        if not stor6[idx].field_768:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + 128] = stor6[idx].field_0
                    else:
                        if 31 >= stor6[idx].field_257:
                            mem[_126 + 32] = 256 * stor6[idx].field_264
                            mem[_119 + 32] = _126
                            mem[_119 + 64] = stor6[idx].field_512
                            mem[_119 + 96] = bool(stor6[idx].field_768)
                            if not stor6[idx].field_768:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s
                                continue 
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + 128] = stor6[idx].field_0
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_126 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            t = _126 + 32
                            u = sha3(mem[0])
                            while _126 + stor6[idx].field_257 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_119 + 32] = _126
                            mem[_119 + 64] = stor6[idx].field_512
                            mem[_119 + 96] = bool(stor6[idx].field_768)
                            if not stor6[idx].field_768:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s
                                continue 
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + 128] = mem[_119 + 12 len 20]
                else:
                    if stor6[idx].field_256 == stor6[idx].field_257 < 32:
                        revert with 'NH{q', 34
                    if not stor6[idx].field_257:
                        mem[_119 + 32] = _126
                        mem[_119 + 64] = stor6[idx].field_512
                        mem[_119 + 96] = bool(stor6[idx].field_768)
                        if not stor6[idx].field_768:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + 128] = stor6[idx].field_0
                    else:
                        if 31 >= stor6[idx].field_257:
                            mem[_126 + 32] = 256 * stor6[idx].field_264
                            mem[_119 + 32] = _126
                            mem[_119 + 64] = stor6[idx].field_512
                            mem[_119 + 96] = bool(stor6[idx].field_768)
                            if not stor6[idx].field_768:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s
                                continue 
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + 128] = stor6[idx].field_0
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_126 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            t = _126 + 32
                            u = sha3(mem[0])
                            while _126 + stor6[idx].field_257 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_119 + 32] = _126
                            mem[_119 + 64] = stor6[idx].field_512
                            mem[_119 + 96] = bool(stor6[idx].field_768)
                            if not stor6[idx].field_768:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s
                                continue 
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + 128] = mem[_119 + 12 len 20]
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _116 = mem[64]
        mem[mem[64] + 32] = 32
        _122 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        t = 128
        u = mem[64] + 96
        while idx < _122:
            mem[u] = mem[t + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        _240 = mem[64]
        mem[mem[64]] = _116 + (32 * _122) + -mem[64] + 64
        mem[64] = _116 + (32 * _122) + 96
        mem[_240 + 64] = s
        _241 = mem[_240]
        require mem[_240] >= 32
        _260 = mem[_240 + 32]
        require mem[_240 + 32] <= test266151307()
        require _240 + mem[_240 + 32] + 63 < _240 + mem[_240] + 32
        _262 = mem[_240 + mem[_240 + 32] + 32]
        if mem[_240 + mem[_240 + 32] + 32] > test266151307():
            revert with 'NH{q', 65
        if _116 + (32 * _122) + floor32(mem[_240 + mem[_240 + 32] + 32]) + 97 > test266151307() or floor32(mem[_240 + mem[_240 + 32] + 32]) + 97 < 96:
            revert with 'NH{q', 65
        mem[64] = _116 + (32 * _122) + floor32(mem[_240 + mem[_240 + 32] + 32]) + 97
        mem[_116 + (32 * _122) + 96] = _262
        require _260 + (32 * _262) + 64 <= _241 + 32
        idx = 0
        s = _240 + _260 + 64
        t = _116 + (32 * _122) + 128
        while idx < _262:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _278 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _262
        idx = 0
        s = _116 + (32 * _122) + 128
        t = mem[64] + 64
        while idx < _262:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _278 + (32 * _262) + -mem[64] + 64
    mem[128 len 32 * sub_93199b09] = call.data[calldata.size len 32 * sub_93199b09]
    idx = 0
    s = 0
    while idx < sub_93199b09:
        if idx >= stor6.length:
            revert with 'NH{q', 50
        mem[0] = 6
        _121 = mem[64]
        mem[64] = mem[64] + 128
        mem[_121] = stor6[idx].field_0
        if stor6[idx].field_256:
            if stor6[idx].field_256 == stor6[idx].field_257 < 32:
                revert with 'NH{q', 34
            _125 = mem[64]
            mem[64] = mem[64] + ceil32(stor6[idx].field_257) + 32
            mem[_125] = stor6[idx].field_257
            if stor6[idx].field_256:
                if stor6[idx].field_256 == stor6[idx].field_257 < 32:
                    revert with 'NH{q', 34
                if not stor6[idx].field_257:
                    mem[_121 + 32] = _125
                    mem[_121 + 64] = stor6[idx].field_512
                    mem[_121 + 96] = bool(stor6[idx].field_768)
                    if not stor6[idx].field_768:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                    if s >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + 128] = stor6[idx].field_0
                else:
                    if 31 >= stor6[idx].field_257:
                        mem[_125 + 32] = 256 * stor6[idx].field_264
                        mem[_121 + 32] = _125
                        mem[_121 + 64] = stor6[idx].field_512
                        mem[_121 + 96] = bool(stor6[idx].field_768)
                        if not stor6[idx].field_768:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + 128] = stor6[idx].field_0
                    else:
                        mem[0] = (4 * idx) + sha3(6) + 1
                        mem[_125 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                        t = _125 + 32
                        u = sha3(mem[0])
                        while _125 + stor6[idx].field_257 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_121 + 32] = _125
                        mem[_121 + 64] = stor6[idx].field_512
                        mem[_121 + 96] = bool(stor6[idx].field_768)
                        if not stor6[idx].field_768:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + 128] = mem[_121 + 12 len 20]
            else:
                if stor6[idx].field_256 == stor6[idx].field_257 < 32:
                    revert with 'NH{q', 34
                if not stor6[idx].field_257:
                    mem[_121 + 32] = _125
                    mem[_121 + 64] = stor6[idx].field_512
                    mem[_121 + 96] = bool(stor6[idx].field_768)
                    if not stor6[idx].field_768:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                    if s >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + 128] = stor6[idx].field_0
                else:
                    if 31 >= stor6[idx].field_257:
                        mem[_125 + 32] = 256 * stor6[idx].field_264
                        mem[_121 + 32] = _125
                        mem[_121 + 64] = stor6[idx].field_512
                        mem[_121 + 96] = bool(stor6[idx].field_768)
                        if not stor6[idx].field_768:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + 128] = stor6[idx].field_0
                    else:
                        mem[0] = (4 * idx) + sha3(6) + 1
                        mem[_125 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                        t = _125 + 32
                        u = sha3(mem[0])
                        while _125 + stor6[idx].field_257 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_121 + 32] = _125
                        mem[_121 + 64] = stor6[idx].field_512
                        mem[_121 + 96] = bool(stor6[idx].field_768)
                        if not stor6[idx].field_768:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + 128] = mem[_121 + 12 len 20]
        else:
            if stor6[idx].field_256 == stor6[idx].field_257 < 32:
                revert with 'NH{q', 34
            _127 = mem[64]
            mem[64] = mem[64] + ceil32(stor6[idx].field_257) + 32
            mem[_127] = stor6[idx].field_257
            if stor6[idx].field_256:
                if stor6[idx].field_256 == stor6[idx].field_257 < 32:
                    revert with 'NH{q', 34
                if not stor6[idx].field_257:
                    mem[_121 + 32] = _127
                    mem[_121 + 64] = stor6[idx].field_512
                    mem[_121 + 96] = bool(stor6[idx].field_768)
                    if not stor6[idx].field_768:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                    if s >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + 128] = stor6[idx].field_0
                else:
                    if 31 >= stor6[idx].field_257:
                        mem[_127 + 32] = 256 * stor6[idx].field_264
                        mem[_121 + 32] = _127
                        mem[_121 + 64] = stor6[idx].field_512
                        mem[_121 + 96] = bool(stor6[idx].field_768)
                        if not stor6[idx].field_768:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + 128] = stor6[idx].field_0
                    else:
                        mem[0] = (4 * idx) + sha3(6) + 1
                        mem[_127 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                        t = _127 + 32
                        u = sha3(mem[0])
                        while _127 + stor6[idx].field_257 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_121 + 32] = _127
                        mem[_121 + 64] = stor6[idx].field_512
                        mem[_121 + 96] = bool(stor6[idx].field_768)
                        if not stor6[idx].field_768:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + 128] = mem[_121 + 12 len 20]
            else:
                if stor6[idx].field_256 == stor6[idx].field_257 < 32:
                    revert with 'NH{q', 34
                if not stor6[idx].field_257:
                    mem[_121 + 32] = _127
                    mem[_121 + 64] = stor6[idx].field_512
                    mem[_121 + 96] = bool(stor6[idx].field_768)
                    if not stor6[idx].field_768:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                    if s >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + 128] = stor6[idx].field_0
                else:
                    if 31 >= stor6[idx].field_257:
                        mem[_127 + 32] = 256 * stor6[idx].field_264
                        mem[_121 + 32] = _127
                        mem[_121 + 64] = stor6[idx].field_512
                        mem[_121 + 96] = bool(stor6[idx].field_768)
                        if not stor6[idx].field_768:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + 128] = stor6[idx].field_0
                    else:
                        mem[0] = (4 * idx) + sha3(6) + 1
                        mem[_127 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                        t = _127 + 32
                        u = sha3(mem[0])
                        while _127 + stor6[idx].field_257 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_121 + 32] = _127
                        mem[_121 + 64] = stor6[idx].field_512
                        mem[_121 + 96] = bool(stor6[idx].field_768)
                        if not stor6[idx].field_768:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + 128] = mem[_121 + 12 len 20]
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _117 = mem[64]
    mem[mem[64] + 32] = 32
    _123 = mem[96]
    mem[mem[64] + 64] = mem[96]
    idx = 0
    t = 128
    u = mem[64] + 96
    while idx < _123:
        mem[u] = mem[t + 12 len 20]
        idx = idx + 1
        t = t + 32
        u = u + 32
        continue 
    _250 = mem[64]
    mem[mem[64]] = _117 + (32 * _123) + -mem[64] + 64
    mem[64] = _117 + (32 * _123) + 96
    mem[_250 + 64] = s
    _251 = mem[_250]
    require mem[_250] >= 32
    _261 = mem[_250 + 32]
    require mem[_250 + 32] <= test266151307()
    require _250 + mem[_250 + 32] + 63 < _250 + mem[_250] + 32
    _263 = mem[_250 + mem[_250 + 32] + 32]
    if mem[_250 + mem[_250 + 32] + 32] > test266151307():
        revert with 'NH{q', 65
    if _117 + (32 * _123) + floor32(mem[_250 + mem[_250 + 32] + 32]) + 97 > test266151307() or floor32(mem[_250 + mem[_250 + 32] + 32]) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = _117 + (32 * _123) + floor32(mem[_250 + mem[_250 + 32] + 32]) + 97
    mem[_117 + (32 * _123) + 96] = _263
    require _261 + (32 * _263) + 64 <= _251 + 32
    idx = 0
    s = _250 + _261 + 64
    t = _117 + (32 * _123) + 128
    while idx < _263:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _279 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _263
    idx = 0
    s = _117 + (32 * _123) + 128
    t = mem[64] + 64
    while idx < _263:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _279 + (32 * _263) + -mem[64] + 64
}



}
