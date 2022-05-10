contract main {




// =====================  Runtime code  =====================


#
#  - enterAnswer(uint256 arg1, bytes32 arg2)
#  - getAnswerFromPointerWord(bytes32 arg1)
#  - getAnswerFromQuestionId(uint256 arg1)
#  - checkAnswer(uint256 arg1, bytes32 arg2)
#  - getPointerFromSeed(bytes1 arg1)
#
mapping of uint256 stor0;
mapping of uint8 stor1;
mapping of uint256 sub_b42512b2;
uint256 sub_93199b09;
uint256 numberOfQuestions;
address teacherAddress;
array of struct stor6;
array of uint256 stor666;
array of struct stor111414077815863400510004064629973595961579173665589224203503662149373724986688;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986689;
array of uint8 stor111414077815863400510004064629973595961579173665589224203503662149373724986690;

function sub_30e23fbf(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
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
    if teacherAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Teacher: Caller is not the teacher'
    stor0[stor4] = arg1
    if numberOfQuestions == -1:
        revert with 0, 17
    numberOfQuestions++
}

function getDistribution() payable {
    mem[8372 len 256] = call.data[calldata.size len 256]
    mem[8628 len 8192] = call.data[calldata.size len 8192]
    idx = 0
    while idx < 8:
        mem[(32 * idx + 1) + 8340] = stor666[idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < 256:
        if idx >= 256:
            revert with 0, 50
        if idx >= 256:
            revert with 0, 50
        mem[(32 * idx) + 8628] = Mask(8, 248, mem[idx + 8372])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return memory
      from 16820
       len 8192
}

function sub_c83c6209(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if teacherAddress != msg.sender:
        revert with 0, 'Teacher: Caller is not the teacher'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if teacherAddress != msg.sender:
            revert with 0, 'Teacher: Caller is not the teacher'
        mem[0] = numberOfQuestions
        mem[32] = 0
        stor0[stor4] = mem[(32 * idx) + 128]
        if numberOfQuestions == -1:
            revert with 0, 17
        numberOfQuestions++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function generateAnswerPointerWord(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 32
    mem[64] = 160
    mem[128] = call.data[calldata.size]
    idx = 0
    while uint8(idx) < 32:
        mem[8436 len 256] = call.data[calldata.size len 256]
        mem[8692 len 8192] = call.data[calldata.size len 8192]
        s = 0
        while s < 8:
            mem[(32 * s + 1) + 8404] = stor666[s]
            if s == -1:
                revert with 0, 17
            s = s + 1
            continue 
        s = 0
        while s < 256:
            if s >= 256:
                revert with 0, 50
            if s >= 256:
                revert with 0, 50
            mem[(32 * s) + 8692] = Mask(8, 248, mem[s + 8436])
            if s == -1:
                revert with 0, 17
            s = s + 1
            continue 
        s = 0
        while uint8(s) < 256:
            if Mask(8, 248, mem[(32 * uint8(s)) + 8692]):
                if 255 == uint8(s):
                    revert with 0, 'Error getting pointer'
                if uint8(s) == 255:
                    revert with 0, 17
                s = uint8(s) + 1
                continue 
            if uint8(s) >= 32:
                revert with 0, 50
            mem[uint8(s) + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('var', 1)), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('var', 1)), 0) - 256
            if uint8(s) == 255:
                revert with 0, 17
            s = uint8(s) + 1
            continue 
        revert with 0, 'Error getting pointer'
    return call.data[calldata.size]
}

function getAnswersSeedDistribution() payable {
    mem[96 len 8192] = call.data[calldata.size len 8192]
    mem[8288 len 8192] = call.data[calldata.size len 8192]
    mem[16512] = Mask(160, 96, teacherAddress)
    mem[16480] = 20
    mem[64] = 16532
    idx = 0
    s = 16480
    while uint16(idx) < 256:
        mem[mem[64] + 32] = sha3(mem[s + 32 len mem[s]])
        _16 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        if uint16(sha3(mem[_16 + 32 len mem[_16]])) / 256 > 255:
            revert with 0, 17
        if uint16(sha3(mem[_16 + 32 len mem[_16]])) < Mask(8, 8, sha3(mem[_16 + 32 len mem[_16]])):
            revert with 0, 17
        if uint16(uint16(sha3(mem[_16 + 32 len mem[_16]])) - Mask(8, 8, sha3(mem[_16 + 32 len mem[_16]]))) >= 256:
            revert with 0, 50
        if Mask(8, 248, mem[(32 * uint16(uint16(sha3(mem[_16 + 32 len mem[_16]])) - Mask(8, 8, sha3(mem[_16 + 32 len mem[_16]])))) + 8288]):
            idx = idx
            s = _16
            continue 
        if uint16(uint16(sha3(mem[_16 + 32 len mem[_16]])) - Mask(8, 8, sha3(mem[_16 + 32 len mem[_16]]))) >= 256:
            revert with 0, 50
        mem[(32 * uint16(uint16(sha3(mem[_16 + 32 len mem[_16]])) - Mask(8, 8, sha3(mem[_16 + 32 len mem[_16]])))) + 8288] = idx << 248
        if uint16(idx) == 65535:
            revert with 0, 17
        idx = uint16(idx) + 1
        s = _16
        continue 
    idx = 0
    s = 8288
    t = mem[64]
    while idx < 256:
        mem[t] = Mask(8, 248, mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len 8192
}

function sub_67b09cdb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if sub_b42512b2[msg.sender]:
        revert with 0, 'Teacher: You are already enrolled'
    stor6.length++
    address(stor6[stor6.length].field_0) = msg.sender
    if bool(storF652[stor6.length].field_0):
        if bool(storF652[stor6.length].field_0) == uint255(storF652[stor6.length].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor[sha3((4 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c0)][] = Array(len=arg1.length, data=arg1[all])
        else:
            storF652[stor6.length].field_0 = 0
            idx = 0
            while (uint255(storF652[stor6.length].field_0) * 0.5) + 31 / 32 > idx:
                stor[idx + sha3((4 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c0)] = 0
                idx = idx + 1
                continue 
    else:
        if bool(storF652[stor6.length].field_0) == storF652[stor6.length].field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            stor[sha3((4 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c0)][] = Array(len=arg1.length, data=arg1[all])
        else:
            storF652[stor6.length].field_0 = 0
            idx = 0
            while storF652[stor6.length].field_1 % 128 + 31 / 32 > idx:
                stor[idx + sha3((4 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c0)] = 0
                idx = idx + 1
                continue 
    storF652[stor6.length] = block.timestamp
    storF652[stor6.length] = 0
    if sub_93199b09 == -1:
        revert with 0, 17
    sub_93199b09++
    sub_b42512b2[address(msg.sender)] = sub_93199b09
}

function students(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor6.length
    if bool(stor6[arg1].field_256):
        if bool(stor6[arg1].field_256) == uint255(stor6[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if bool(stor6[arg1].field_256):
            if bool(stor6[arg1].field_256) == uint255(stor6[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor6[arg1].field_256):
                if 31 >= uint255(stor6[arg1].field_256) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor6[arg1].field_264)
                else:
                    mem[128] = stor[sha3((4 * arg1) + ('name', 'stor6', 6) + 1)].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor6[arg1].field_256) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor6', 6) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor6[arg1].field_256) == stor6[arg1].field_257 % 128 < 32:
                revert with 0, 34
            if stor6[arg1].field_257 % 128:
                if 31 >= stor6[arg1].field_257 % 128:
                    mem[128] = 256 * Mask(248, 0, stor6[arg1].field_264)
                else:
                    mem[128] = stor[sha3((4 * arg1) + ('name', 'stor6', 6) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor6[arg1].field_257 % 128 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor6', 6) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return address(stor6[arg1].field_0), 
               Array(len=2 * Mask(256, -1, stor6[arg1].field_256), data=mem[128 len ceil32(uint255(stor6[arg1].field_256) * 0.5)]),
               stor6[arg1].field_512,
               bool(uint8(stor6[arg1].field_768))
    if bool(stor6[arg1].field_256) == stor6[arg1].field_257 % 128 < 32:
        revert with 0, 34
    if bool(stor6[arg1].field_256):
        if bool(stor6[arg1].field_256) == uint255(stor6[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor6[arg1].field_256):
            if 31 >= uint255(stor6[arg1].field_256) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor6[arg1].field_264)
            else:
                mem[128] = stor[sha3((4 * arg1) + ('name', 'stor6', 6) + 1)].field_0
                idx = 128
                s = 0
                while (uint255(stor6[arg1].field_256) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor6', 6) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor6[arg1].field_256) == stor6[arg1].field_257 % 128 < 32:
            revert with 0, 34
        if stor6[arg1].field_257 % 128:
            if 31 >= stor6[arg1].field_257 % 128:
                mem[128] = 256 * Mask(248, 0, stor6[arg1].field_264)
            else:
                mem[128] = stor[sha3((4 * arg1) + ('name', 'stor6', 6) + 1)].field_0
                idx = 128
                s = 0
                while stor6[arg1].field_257 % 128 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor6', 6) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return address(stor6[arg1].field_0), 
           Array(len=stor6[arg1].field_256 % 128, data=mem[128 len ceil32(stor6[arg1].field_257 % 128)]),
           stor6[arg1].field_512,
           bool(uint8(stor6[arg1].field_768))
}

function graduates() payable {
    if sub_93199b09 > test266151307():
        revert with 0, 65
    mem[96] = sub_93199b09
    mem[64] = (32 * sub_93199b09) + 128
    if not sub_93199b09:
        idx = 0
        s = 0
        while idx < sub_93199b09:
            if idx >= stor6.length:
                revert with 0, 50
            mem[0] = 6
            _120 = mem[64]
            mem[64] = mem[64] + 128
            mem[_120] = address(stor6[idx].field_0)
            if bool(stor6[idx].field_256):
                if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                _130 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_256) * 0.5) + 32
                mem[_130] = uint255(stor6[idx].field_256) * 0.5
                if bool(stor6[idx].field_256):
                    if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor6[idx].field_256):
                        mem[_120 + 32] = _130
                        mem[_120 + 64] = stor6[idx].field_512
                        mem[_120 + 96] = bool(uint8(stor6[idx].field_768))
                        if not uint8(stor6[idx].field_768):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        mem[(32 * s) + 128] = address(stor6[idx].field_0)
                    else:
                        if 31 >= uint255(stor6[idx].field_256) * 0.5:
                            mem[_130 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                            mem[_120 + 32] = _130
                            mem[_120 + 64] = stor6[idx].field_512
                            mem[_120 + 96] = bool(uint8(stor6[idx].field_768))
                            if not uint8(stor6[idx].field_768):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if s >= mem[96]:
                                revert with 0, 50
                            mem[(32 * s) + 128] = address(stor6[idx].field_0)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_130 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            t = _130 + 32
                            u = sha3(mem[0])
                            while _130 + (uint255(stor6[idx].field_256) * 0.5) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_120 + 32] = _130
                            mem[_120 + 64] = stor6[idx].field_512
                            mem[_120 + 96] = bool(uint8(stor6[idx].field_768))
                            if not uint8(stor6[idx].field_768):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if s >= mem[96]:
                                revert with 0, 50
                            mem[(32 * s) + 128] = mem[_120 + 12 len 20]
                else:
                    if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                        revert with 0, 34
                    if not stor6[idx].field_257 % 128:
                        mem[_120 + 32] = _130
                        mem[_120 + 64] = stor6[idx].field_512
                        mem[_120 + 96] = bool(uint8(stor6[idx].field_768))
                        if not uint8(stor6[idx].field_768):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        mem[(32 * s) + 128] = address(stor6[idx].field_0)
                    else:
                        if 31 >= stor6[idx].field_257 % 128:
                            mem[_130 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                            mem[_120 + 32] = _130
                            mem[_120 + 64] = stor6[idx].field_512
                            mem[_120 + 96] = bool(uint8(stor6[idx].field_768))
                            if not uint8(stor6[idx].field_768):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if s >= mem[96]:
                                revert with 0, 50
                            mem[(32 * s) + 128] = address(stor6[idx].field_0)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_130 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            t = _130 + 32
                            u = sha3(mem[0])
                            while _130 + stor6[idx].field_257 % 128 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_120 + 32] = _130
                            mem[_120 + 64] = stor6[idx].field_512
                            mem[_120 + 96] = bool(uint8(stor6[idx].field_768))
                            if not uint8(stor6[idx].field_768):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if s >= mem[96]:
                                revert with 0, 50
                            mem[(32 * s) + 128] = mem[_120 + 12 len 20]
            else:
                if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                    revert with 0, 34
                _133 = mem[64]
                mem[64] = mem[64] + ceil32(stor6[idx].field_257 % 128) + 32
                mem[_133] = stor6[idx].field_257 % 128
                if bool(stor6[idx].field_256):
                    if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor6[idx].field_256):
                        mem[_120 + 32] = _133
                        mem[_120 + 64] = stor6[idx].field_512
                        mem[_120 + 96] = bool(uint8(stor6[idx].field_768))
                        if not uint8(stor6[idx].field_768):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        mem[(32 * s) + 128] = address(stor6[idx].field_0)
                    else:
                        if 31 >= uint255(stor6[idx].field_256) * 0.5:
                            mem[_133 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                            mem[_120 + 32] = _133
                            mem[_120 + 64] = stor6[idx].field_512
                            mem[_120 + 96] = bool(uint8(stor6[idx].field_768))
                            if not uint8(stor6[idx].field_768):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if s >= mem[96]:
                                revert with 0, 50
                            mem[(32 * s) + 128] = address(stor6[idx].field_0)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_133 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            t = _133 + 32
                            u = sha3(mem[0])
                            while _133 + (uint255(stor6[idx].field_256) * 0.5) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_120 + 32] = _133
                            mem[_120 + 64] = stor6[idx].field_512
                            mem[_120 + 96] = bool(uint8(stor6[idx].field_768))
                            if not uint8(stor6[idx].field_768):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if s >= mem[96]:
                                revert with 0, 50
                            mem[(32 * s) + 128] = mem[_120 + 12 len 20]
                else:
                    if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                        revert with 0, 34
                    if not stor6[idx].field_257 % 128:
                        mem[_120 + 32] = _133
                        mem[_120 + 64] = stor6[idx].field_512
                        mem[_120 + 96] = bool(uint8(stor6[idx].field_768))
                        if not uint8(stor6[idx].field_768):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        mem[(32 * s) + 128] = address(stor6[idx].field_0)
                    else:
                        if 31 >= stor6[idx].field_257 % 128:
                            mem[_133 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                            mem[_120 + 32] = _133
                            mem[_120 + 64] = stor6[idx].field_512
                            mem[_120 + 96] = bool(uint8(stor6[idx].field_768))
                            if not uint8(stor6[idx].field_768):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if s >= mem[96]:
                                revert with 0, 50
                            mem[(32 * s) + 128] = address(stor6[idx].field_0)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_133 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            t = _133 + 32
                            u = sha3(mem[0])
                            while _133 + stor6[idx].field_257 % 128 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_120 + 32] = _133
                            mem[_120 + 64] = stor6[idx].field_512
                            mem[_120 + 96] = bool(uint8(stor6[idx].field_768))
                            if not uint8(stor6[idx].field_768):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if s >= mem[96]:
                                revert with 0, 50
                            mem[(32 * s) + 128] = mem[_120 + 12 len 20]
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _116 = mem[64]
        mem[mem[64] + 32] = 32
        _118 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        t = mem[64] + 96
        u = 128
        while idx < _118:
            mem[t] = mem[u + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        _232 = mem[64]
        mem[mem[64]] = _116 + (32 * _118) + -mem[64] + 64
        mem[64] = _116 + (32 * _118) + 96
        mem[_232 + 64] = s
        _233 = mem[_232]
        require mem[_232] >= 32
        _260 = mem[_232 + 32]
        require mem[_232 + 32] <= test266151307()
        require _232 + mem[_232] + 32 > _232 + mem[_232 + 32] + 63
        _262 = mem[_232 + mem[_232 + 32] + 32]
        if mem[_232 + mem[_232 + 32] + 32] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_232 + mem[_232 + 32] + 32]) + 97 < 96 or _116 + (32 * _118) + ceil32(32 * mem[_232 + mem[_232 + 32] + 32]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = _116 + (32 * _118) + ceil32(32 * mem[_232 + mem[_232 + 32] + 32]) + 97
        mem[_116 + (32 * _118) + 96] = _262
        require _260 + (32 * _262) + 64 <= _233 + 32
        s = _232 + _260 + 64
        t = _116 + (32 * _118) + 128
        idx = 0
        while idx < _262:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        _278 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _262
        idx = 0
        s = mem[64] + 64
        t = _116 + (32 * _118) + 128
        while idx < _262:
            mem[s] = mem[t + 12 len 20]
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
            revert with 0, 50
        mem[0] = 6
        _123 = mem[64]
        mem[64] = mem[64] + 128
        mem[_123] = address(stor6[idx].field_0)
        if bool(stor6[idx].field_256):
            if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                revert with 0, 34
            _131 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_256) * 0.5) + 32
            mem[_131] = uint255(stor6[idx].field_256) * 0.5
            if bool(stor6[idx].field_256):
                if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor6[idx].field_256):
                    mem[_123 + 32] = _131
                    mem[_123 + 64] = stor6[idx].field_512
                    mem[_123 + 96] = bool(uint8(stor6[idx].field_768))
                    if not uint8(stor6[idx].field_768):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    mem[(32 * s) + 128] = address(stor6[idx].field_0)
                else:
                    if 31 >= uint255(stor6[idx].field_256) * 0.5:
                        mem[_131 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        mem[_123 + 32] = _131
                        mem[_123 + 64] = stor6[idx].field_512
                        mem[_123 + 96] = bool(uint8(stor6[idx].field_768))
                        if not uint8(stor6[idx].field_768):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        mem[(32 * s) + 128] = address(stor6[idx].field_0)
                    else:
                        mem[0] = (4 * idx) + sha3(6) + 1
                        mem[_131 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                        t = _131 + 32
                        u = sha3(mem[0])
                        while _131 + (uint255(stor6[idx].field_256) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_123 + 32] = _131
                        mem[_123 + 64] = stor6[idx].field_512
                        mem[_123 + 96] = bool(uint8(stor6[idx].field_768))
                        if not uint8(stor6[idx].field_768):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        mem[(32 * s) + 128] = mem[_123 + 12 len 20]
            else:
                if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                    revert with 0, 34
                if not stor6[idx].field_257 % 128:
                    mem[_123 + 32] = _131
                    mem[_123 + 64] = stor6[idx].field_512
                    mem[_123 + 96] = bool(uint8(stor6[idx].field_768))
                    if not uint8(stor6[idx].field_768):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    mem[(32 * s) + 128] = address(stor6[idx].field_0)
                else:
                    if 31 >= stor6[idx].field_257 % 128:
                        mem[_131 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        mem[_123 + 32] = _131
                        mem[_123 + 64] = stor6[idx].field_512
                        mem[_123 + 96] = bool(uint8(stor6[idx].field_768))
                        if not uint8(stor6[idx].field_768):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        mem[(32 * s) + 128] = address(stor6[idx].field_0)
                    else:
                        mem[0] = (4 * idx) + sha3(6) + 1
                        mem[_131 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                        t = _131 + 32
                        u = sha3(mem[0])
                        while _131 + stor6[idx].field_257 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_123 + 32] = _131
                        mem[_123 + 64] = stor6[idx].field_512
                        mem[_123 + 96] = bool(uint8(stor6[idx].field_768))
                        if not uint8(stor6[idx].field_768):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        mem[(32 * s) + 128] = mem[_123 + 12 len 20]
        else:
            if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                revert with 0, 34
            _135 = mem[64]
            mem[64] = mem[64] + ceil32(stor6[idx].field_257 % 128) + 32
            mem[_135] = stor6[idx].field_257 % 128
            if bool(stor6[idx].field_256):
                if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor6[idx].field_256):
                    mem[_123 + 32] = _135
                    mem[_123 + 64] = stor6[idx].field_512
                    mem[_123 + 96] = bool(uint8(stor6[idx].field_768))
                    if not uint8(stor6[idx].field_768):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    mem[(32 * s) + 128] = address(stor6[idx].field_0)
                else:
                    if 31 >= uint255(stor6[idx].field_256) * 0.5:
                        mem[_135 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        mem[_123 + 32] = _135
                        mem[_123 + 64] = stor6[idx].field_512
                        mem[_123 + 96] = bool(uint8(stor6[idx].field_768))
                        if not uint8(stor6[idx].field_768):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        mem[(32 * s) + 128] = address(stor6[idx].field_0)
                    else:
                        mem[0] = (4 * idx) + sha3(6) + 1
                        mem[_135 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                        t = _135 + 32
                        u = sha3(mem[0])
                        while _135 + (uint255(stor6[idx].field_256) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_123 + 32] = _135
                        mem[_123 + 64] = stor6[idx].field_512
                        mem[_123 + 96] = bool(uint8(stor6[idx].field_768))
                        if not uint8(stor6[idx].field_768):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        mem[(32 * s) + 128] = mem[_123 + 12 len 20]
            else:
                if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                    revert with 0, 34
                if not stor6[idx].field_257 % 128:
                    mem[_123 + 32] = _135
                    mem[_123 + 64] = stor6[idx].field_512
                    mem[_123 + 96] = bool(uint8(stor6[idx].field_768))
                    if not uint8(stor6[idx].field_768):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    mem[(32 * s) + 128] = address(stor6[idx].field_0)
                else:
                    if 31 >= stor6[idx].field_257 % 128:
                        mem[_135 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        mem[_123 + 32] = _135
                        mem[_123 + 64] = stor6[idx].field_512
                        mem[_123 + 96] = bool(uint8(stor6[idx].field_768))
                        if not uint8(stor6[idx].field_768):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        mem[(32 * s) + 128] = address(stor6[idx].field_0)
                    else:
                        mem[0] = (4 * idx) + sha3(6) + 1
                        mem[_135 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                        t = _135 + 32
                        u = sha3(mem[0])
                        while _135 + stor6[idx].field_257 % 128 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_123 + 32] = _135
                        mem[_123 + 64] = stor6[idx].field_512
                        mem[_123 + 96] = bool(uint8(stor6[idx].field_768))
                        if not uint8(stor6[idx].field_768):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        mem[(32 * s) + 128] = mem[_123 + 12 len 20]
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    _117 = mem[64]
    mem[mem[64] + 32] = 32
    _121 = mem[96]
    mem[mem[64] + 64] = mem[96]
    idx = 0
    t = mem[64] + 96
    u = 128
    while idx < _121:
        mem[t] = mem[u + 12 len 20]
        idx = idx + 1
        t = t + 32
        u = u + 32
        continue 
    _238 = mem[64]
    mem[mem[64]] = _117 + (32 * _121) + -mem[64] + 64
    mem[64] = _117 + (32 * _121) + 96
    mem[_238 + 64] = s
    _239 = mem[_238]
    require mem[_238] >= 32
    _261 = mem[_238 + 32]
    require mem[_238 + 32] <= test266151307()
    require _238 + mem[_238] + 32 > _238 + mem[_238 + 32] + 63
    _263 = mem[_238 + mem[_238 + 32] + 32]
    if mem[_238 + mem[_238 + 32] + 32] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_238 + mem[_238 + 32] + 32]) + 97 < 96 or _117 + (32 * _121) + ceil32(32 * mem[_238 + mem[_238 + 32] + 32]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = _117 + (32 * _121) + ceil32(32 * mem[_238 + mem[_238 + 32] + 32]) + 97
    mem[_117 + (32 * _121) + 96] = _263
    require _261 + (32 * _263) + 64 <= _239 + 32
    s = _238 + _261 + 64
    t = _117 + (32 * _121) + 128
    idx = 0
    while idx < _263:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _279 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _263
    idx = 0
    s = mem[64] + 64
    t = _117 + (32 * _121) + 128
    while idx < _263:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _279 + (32 * _263) + -mem[64] + 64
}

function studentRoll() payable {
    if sub_93199b09 > test266151307():
        revert with 0, 65
    mem[96] = sub_93199b09
    mem[64] = (32 * sub_93199b09) + 128
    if not sub_93199b09:
        idx = 0
        while idx < sub_93199b09:
            if idx >= stor6.length:
                revert with 0, 50
            mem[0] = 6
            _70 = mem[64]
            mem[64] = mem[64] + 128
            mem[_70] = address(stor6[idx].field_0)
            if bool(stor6[idx].field_256):
                if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                _78 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_256) * 0.5) + 32
                mem[_78] = uint255(stor6[idx].field_256) * 0.5
                if bool(stor6[idx].field_256):
                    if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor6[idx].field_256):
                        if 31 >= uint255(stor6[idx].field_256) * 0.5:
                            mem[_78 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_78 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _78 + 32
                            t = sha3(mem[0])
                            while _78 + (uint255(stor6[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor6[idx].field_257 % 128:
                        if 31 >= stor6[idx].field_257 % 128:
                            mem[_78 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_78 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _78 + 32
                            t = sha3(mem[0])
                            while _78 + stor6[idx].field_257 % 128 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_70 + 32] = _78
            else:
                if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                    revert with 0, 34
                _82 = mem[64]
                mem[64] = mem[64] + ceil32(stor6[idx].field_257 % 128) + 32
                mem[_82] = stor6[idx].field_257 % 128
                if bool(stor6[idx].field_256):
                    if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor6[idx].field_256):
                        if 31 >= uint255(stor6[idx].field_256) * 0.5:
                            mem[_82 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_82 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _82 + 32
                            t = sha3(mem[0])
                            while _82 + (uint255(stor6[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor6[idx].field_257 % 128:
                        if 31 >= stor6[idx].field_257 % 128:
                            mem[_82 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_82 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _82 + 32
                            t = sha3(mem[0])
                            while _82 + stor6[idx].field_257 % 128 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_70 + 32] = _82
            mem[_70 + 64] = stor6[idx].field_512
            mem[_70 + 96] = bool(uint8(stor6[idx].field_768))
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _70
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _68 = mem[64]
        mem[mem[64]] = 32
        _72 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _72:
            mem[u] = t + -_68 - 64
            _133 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _135 = mem[_133 + 32]
            mem[t + 32] = 128
            _138 = mem[_135]
            mem[t + 128] = mem[_135]
            v = 0
            while v < _138:
                mem[v + t + 160] = mem[_135 + v + 32]
                v = v + 32
                continue 
            if ceil32(_138) > _138:
                mem[t + _138 + 160] = 0
            mem[t + 64] = mem[_133 + 64]
            mem[t + 96] = bool(mem[_133 + 96])
            idx = idx + 1
            s = s + 32
            t = ceil32(_138) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_93199b09) + 256
    mem[(32 * sub_93199b09) + 128] = 0
    mem[(32 * sub_93199b09) + 160] = 96
    mem[(32 * sub_93199b09) + 192] = 0
    mem[(32 * sub_93199b09) + 224] = 0
    mem[var9002] = var9001
    if not var9003 - 1:
        idx = 0
        while idx < sub_93199b09:
            if idx >= stor6.length:
                revert with 0, 50
            mem[0] = 6
            _217 = mem[64]
            mem[64] = mem[64] + 128
            mem[_217] = address(stor6[idx].field_0)
            if bool(stor6[idx].field_256):
                if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                _231 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_256) * 0.5) + 32
                mem[_231] = uint255(stor6[idx].field_256) * 0.5
                if bool(stor6[idx].field_256):
                    if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor6[idx].field_256):
                        if 31 >= uint255(stor6[idx].field_256) * 0.5:
                            mem[_231 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_231 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _231 + 32
                            t = sha3(mem[0])
                            while _231 + (uint255(stor6[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor6[idx].field_257 % 128:
                        if 31 >= stor6[idx].field_257 % 128:
                            mem[_231 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_231 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _231 + 32
                            t = sha3(mem[0])
                            while _231 + stor6[idx].field_257 % 128 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_217 + 32] = _231
            else:
                if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                    revert with 0, 34
                _233 = mem[64]
                mem[64] = mem[64] + ceil32(stor6[idx].field_257 % 128) + 32
                mem[_233] = stor6[idx].field_257 % 128
                if bool(stor6[idx].field_256):
                    if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor6[idx].field_256):
                        if 31 >= uint255(stor6[idx].field_256) * 0.5:
                            mem[_233 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_233 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _233 + 32
                            t = sha3(mem[0])
                            while _233 + (uint255(stor6[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor6[idx].field_257 % 128:
                        if 31 >= stor6[idx].field_257 % 128:
                            mem[_233 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_233 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _233 + 32
                            t = sha3(mem[0])
                            while _233 + stor6[idx].field_257 % 128 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_217 + 32] = _233
            mem[_217 + 64] = stor6[idx].field_512
            mem[_217 + 96] = bool(uint8(stor6[idx].field_768))
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _217
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _215 = mem[64]
        mem[mem[64]] = 32
        _220 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _220:
            mem[u] = t + -_215 - 64
            _284 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _286 = mem[_284 + 32]
            mem[t + 32] = 128
            _288 = mem[_286]
            mem[t + 128] = mem[_286]
            v = 0
            while v < _288:
                mem[v + t + 160] = mem[_286 + v + 32]
                v = v + 32
                continue 
            if ceil32(_288) > _288:
                mem[t + _288 + 160] = 0
            mem[t + 64] = mem[_284 + 64]
            mem[t + 96] = bool(mem[_284 + 96])
            idx = idx + 1
            s = s + 32
            t = ceil32(_288) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_93199b09) + 384
    mem[(32 * sub_93199b09) + 256] = 0
    mem[(32 * sub_93199b09) + 288] = 96
    mem[(32 * sub_93199b09) + 320] = 0
    mem[(32 * sub_93199b09) + 352] = 0
    mem[var13002] = var13001
    if not var13003 - 1:
        idx = 0
        while idx < sub_93199b09:
            if idx >= stor6.length:
                revert with 0, 50
            mem[0] = 6
            _367 = mem[64]
            mem[64] = mem[64] + 128
            mem[_367] = address(stor6[idx].field_0)
            if bool(stor6[idx].field_256):
                if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                _381 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_256) * 0.5) + 32
                mem[_381] = uint255(stor6[idx].field_256) * 0.5
                if bool(stor6[idx].field_256):
                    if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor6[idx].field_256):
                        if 31 >= uint255(stor6[idx].field_256) * 0.5:
                            mem[_381 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_381 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _381 + 32
                            t = sha3(mem[0])
                            while _381 + (uint255(stor6[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor6[idx].field_257 % 128:
                        if 31 >= stor6[idx].field_257 % 128:
                            mem[_381 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_381 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _381 + 32
                            t = sha3(mem[0])
                            while _381 + stor6[idx].field_257 % 128 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_367 + 32] = _381
            else:
                if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                    revert with 0, 34
                _383 = mem[64]
                mem[64] = mem[64] + ceil32(stor6[idx].field_257 % 128) + 32
                mem[_383] = stor6[idx].field_257 % 128
                if bool(stor6[idx].field_256):
                    if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor6[idx].field_256):
                        if 31 >= uint255(stor6[idx].field_256) * 0.5:
                            mem[_383 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_383 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _383 + 32
                            t = sha3(mem[0])
                            while _383 + (uint255(stor6[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor6[idx].field_257 % 128:
                        if 31 >= stor6[idx].field_257 % 128:
                            mem[_383 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_383 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _383 + 32
                            t = sha3(mem[0])
                            while _383 + stor6[idx].field_257 % 128 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_367 + 32] = _383
            mem[_367 + 64] = stor6[idx].field_512
            mem[_367 + 96] = bool(uint8(stor6[idx].field_768))
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _367
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _365 = mem[64]
        mem[mem[64]] = 32
        _368 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _368:
            mem[u] = t + -_365 - 64
            _434 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _436 = mem[_434 + 32]
            mem[t + 32] = 128
            _438 = mem[_436]
            mem[t + 128] = mem[_436]
            v = 0
            while v < _438:
                mem[v + t + 160] = mem[_436 + v + 32]
                v = v + 32
                continue 
            if ceil32(_438) > _438:
                mem[t + _438 + 160] = 0
            mem[t + 64] = mem[_434 + 64]
            mem[t + 96] = bool(mem[_434 + 96])
            idx = idx + 1
            s = s + 32
            t = ceil32(_438) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_93199b09) + 512
    mem[(32 * sub_93199b09) + 384] = 0
    mem[(32 * sub_93199b09) + 416] = 96
    mem[(32 * sub_93199b09) + 448] = 0
    mem[(32 * sub_93199b09) + 480] = 0
    mem[var17002] = var17001
    if not var17003 - 1:
        idx = 0
        while idx < sub_93199b09:
            if idx >= stor6.length:
                revert with 0, 50
            mem[0] = 6
            _517 = mem[64]
            mem[64] = mem[64] + 128
            mem[_517] = address(stor6[idx].field_0)
            if bool(stor6[idx].field_256):
                if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                _531 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_256) * 0.5) + 32
                mem[_531] = uint255(stor6[idx].field_256) * 0.5
                if bool(stor6[idx].field_256):
                    if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor6[idx].field_256):
                        if 31 >= uint255(stor6[idx].field_256) * 0.5:
                            mem[_531 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_531 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _531 + 32
                            t = sha3(mem[0])
                            while _531 + (uint255(stor6[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor6[idx].field_257 % 128:
                        if 31 >= stor6[idx].field_257 % 128:
                            mem[_531 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_531 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _531 + 32
                            t = sha3(mem[0])
                            while _531 + stor6[idx].field_257 % 128 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_517 + 32] = _531
            else:
                if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                    revert with 0, 34
                _533 = mem[64]
                mem[64] = mem[64] + ceil32(stor6[idx].field_257 % 128) + 32
                mem[_533] = stor6[idx].field_257 % 128
                if bool(stor6[idx].field_256):
                    if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor6[idx].field_256):
                        if 31 >= uint255(stor6[idx].field_256) * 0.5:
                            mem[_533 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_533 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _533 + 32
                            t = sha3(mem[0])
                            while _533 + (uint255(stor6[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor6[idx].field_257 % 128:
                        if 31 >= stor6[idx].field_257 % 128:
                            mem[_533 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_533 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _533 + 32
                            t = sha3(mem[0])
                            while _533 + stor6[idx].field_257 % 128 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_517 + 32] = _533
            mem[_517 + 64] = stor6[idx].field_512
            mem[_517 + 96] = bool(uint8(stor6[idx].field_768))
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _517
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _515 = mem[64]
        mem[mem[64]] = 32
        _518 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _518:
            mem[u] = t + -_515 - 64
            _584 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _586 = mem[_584 + 32]
            mem[t + 32] = 128
            _588 = mem[_586]
            mem[t + 128] = mem[_586]
            v = 0
            while v < _588:
                mem[v + t + 160] = mem[_586 + v + 32]
                v = v + 32
                continue 
            if ceil32(_588) > _588:
                mem[t + _588 + 160] = 0
            mem[t + 64] = mem[_584 + 64]
            mem[t + 96] = bool(mem[_584 + 96])
            idx = idx + 1
            s = s + 32
            t = ceil32(_588) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_93199b09) + 640
    mem[(32 * sub_93199b09) + 512] = 0
    mem[(32 * sub_93199b09) + 544] = 96
    mem[(32 * sub_93199b09) + 576] = 0
    mem[(32 * sub_93199b09) + 608] = 0
    mem[var21002] = var21001
    if not var21003 - 1:
        idx = 0
        while idx < sub_93199b09:
            if idx >= stor6.length:
                revert with 0, 50
            mem[0] = 6
            _667 = mem[64]
            mem[64] = mem[64] + 128
            mem[_667] = address(stor6[idx].field_0)
            if bool(stor6[idx].field_256):
                if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                _681 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_256) * 0.5) + 32
                mem[_681] = uint255(stor6[idx].field_256) * 0.5
                if bool(stor6[idx].field_256):
                    if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor6[idx].field_256):
                        if 31 >= uint255(stor6[idx].field_256) * 0.5:
                            mem[_681 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_681 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _681 + 32
                            t = sha3(mem[0])
                            while _681 + (uint255(stor6[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor6[idx].field_257 % 128:
                        if 31 >= stor6[idx].field_257 % 128:
                            mem[_681 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_681 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _681 + 32
                            t = sha3(mem[0])
                            while _681 + stor6[idx].field_257 % 128 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_667 + 32] = _681
            else:
                if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                    revert with 0, 34
                _683 = mem[64]
                mem[64] = mem[64] + ceil32(stor6[idx].field_257 % 128) + 32
                mem[_683] = stor6[idx].field_257 % 128
                if bool(stor6[idx].field_256):
                    if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor6[idx].field_256):
                        if 31 >= uint255(stor6[idx].field_256) * 0.5:
                            mem[_683 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_683 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _683 + 32
                            t = sha3(mem[0])
                            while _683 + (uint255(stor6[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor6[idx].field_257 % 128:
                        if 31 >= stor6[idx].field_257 % 128:
                            mem[_683 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_683 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _683 + 32
                            t = sha3(mem[0])
                            while _683 + stor6[idx].field_257 % 128 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_667 + 32] = _683
            mem[_667 + 64] = stor6[idx].field_512
            mem[_667 + 96] = bool(uint8(stor6[idx].field_768))
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _667
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _665 = mem[64]
        mem[mem[64]] = 32
        _668 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _668:
            mem[u] = t + -_665 - 64
            _734 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _736 = mem[_734 + 32]
            mem[t + 32] = 128
            _738 = mem[_736]
            mem[t + 128] = mem[_736]
            v = 0
            while v < _738:
                mem[v + t + 160] = mem[_736 + v + 32]
                v = v + 32
                continue 
            if ceil32(_738) > _738:
                mem[t + _738 + 160] = 0
            mem[t + 64] = mem[_734 + 64]
            mem[t + 96] = bool(mem[_734 + 96])
            idx = idx + 1
            s = s + 32
            t = ceil32(_738) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_93199b09) + 768
    mem[(32 * sub_93199b09) + 640] = 0
    mem[(32 * sub_93199b09) + 672] = 96
    mem[(32 * sub_93199b09) + 704] = 0
    mem[(32 * sub_93199b09) + 736] = 0
    mem[var25002] = var25001
    if not var25003 - 1:
        idx = 0
        while idx < sub_93199b09:
            if idx >= stor6.length:
                revert with 0, 50
            mem[0] = 6
            _817 = mem[64]
            mem[64] = mem[64] + 128
            mem[_817] = address(stor6[idx].field_0)
            if bool(stor6[idx].field_256):
                if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                _831 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_256) * 0.5) + 32
                mem[_831] = uint255(stor6[idx].field_256) * 0.5
                if bool(stor6[idx].field_256):
                    if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor6[idx].field_256):
                        if 31 >= uint255(stor6[idx].field_256) * 0.5:
                            mem[_831 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_831 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _831 + 32
                            t = sha3(mem[0])
                            while _831 + (uint255(stor6[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor6[idx].field_257 % 128:
                        if 31 >= stor6[idx].field_257 % 128:
                            mem[_831 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_831 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _831 + 32
                            t = sha3(mem[0])
                            while _831 + stor6[idx].field_257 % 128 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_817 + 32] = _831
            else:
                if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                    revert with 0, 34
                _833 = mem[64]
                mem[64] = mem[64] + ceil32(stor6[idx].field_257 % 128) + 32
                mem[_833] = stor6[idx].field_257 % 128
                if bool(stor6[idx].field_256):
                    if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor6[idx].field_256):
                        if 31 >= uint255(stor6[idx].field_256) * 0.5:
                            mem[_833 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_833 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _833 + 32
                            t = sha3(mem[0])
                            while _833 + (uint255(stor6[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor6[idx].field_257 % 128:
                        if 31 >= stor6[idx].field_257 % 128:
                            mem[_833 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_833 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _833 + 32
                            t = sha3(mem[0])
                            while _833 + stor6[idx].field_257 % 128 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_817 + 32] = _833
            mem[_817 + 64] = stor6[idx].field_512
            mem[_817 + 96] = bool(uint8(stor6[idx].field_768))
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _817
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _815 = mem[64]
        mem[mem[64]] = 32
        _818 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _818:
            mem[u] = t + -_815 - 64
            _884 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _886 = mem[_884 + 32]
            mem[t + 32] = 128
            _888 = mem[_886]
            mem[t + 128] = mem[_886]
            v = 0
            while v < _888:
                mem[v + t + 160] = mem[_886 + v + 32]
                v = v + 32
                continue 
            if ceil32(_888) > _888:
                mem[t + _888 + 160] = 0
            mem[t + 64] = mem[_884 + 64]
            mem[t + 96] = bool(mem[_884 + 96])
            idx = idx + 1
            s = s + 32
            t = ceil32(_888) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_93199b09) + 896
    mem[(32 * sub_93199b09) + 768] = 0
    mem[(32 * sub_93199b09) + 800] = 96
    mem[(32 * sub_93199b09) + 832] = 0
    mem[(32 * sub_93199b09) + 864] = 0
    mem[var29002] = var29001
    if not var29003 - 1:
        idx = 0
        while idx < sub_93199b09:
            if idx >= stor6.length:
                revert with 0, 50
            mem[0] = 6
            _967 = mem[64]
            mem[64] = mem[64] + 128
            mem[_967] = address(stor6[idx].field_0)
            if bool(stor6[idx].field_256):
                if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                _981 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_256) * 0.5) + 32
                mem[_981] = uint255(stor6[idx].field_256) * 0.5
                if bool(stor6[idx].field_256):
                    if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor6[idx].field_256):
                        if 31 >= uint255(stor6[idx].field_256) * 0.5:
                            mem[_981 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_981 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _981 + 32
                            t = sha3(mem[0])
                            while _981 + (uint255(stor6[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor6[idx].field_257 % 128:
                        if 31 >= stor6[idx].field_257 % 128:
                            mem[_981 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_981 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _981 + 32
                            t = sha3(mem[0])
                            while _981 + stor6[idx].field_257 % 128 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_967 + 32] = _981
            else:
                if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                    revert with 0, 34
                _983 = mem[64]
                mem[64] = mem[64] + ceil32(stor6[idx].field_257 % 128) + 32
                mem[_983] = stor6[idx].field_257 % 128
                if bool(stor6[idx].field_256):
                    if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor6[idx].field_256):
                        if 31 >= uint255(stor6[idx].field_256) * 0.5:
                            mem[_983 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_983 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _983 + 32
                            t = sha3(mem[0])
                            while _983 + (uint255(stor6[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor6[idx].field_257 % 128:
                        if 31 >= stor6[idx].field_257 % 128:
                            mem[_983 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_983 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _983 + 32
                            t = sha3(mem[0])
                            while _983 + stor6[idx].field_257 % 128 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_967 + 32] = _983
            mem[_967 + 64] = stor6[idx].field_512
            mem[_967 + 96] = bool(uint8(stor6[idx].field_768))
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _967
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _965 = mem[64]
        mem[mem[64]] = 32
        _968 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _968:
            mem[u] = t + -_965 - 64
            _1034 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _1036 = mem[_1034 + 32]
            mem[t + 32] = 128
            _1038 = mem[_1036]
            mem[t + 128] = mem[_1036]
            v = 0
            while v < _1038:
                mem[v + t + 160] = mem[_1036 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1038) > _1038:
                mem[t + _1038 + 160] = 0
            mem[t + 64] = mem[_1034 + 64]
            mem[t + 96] = bool(mem[_1034 + 96])
            idx = idx + 1
            s = s + 32
            t = ceil32(_1038) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_93199b09) + 1024
    mem[(32 * sub_93199b09) + 896] = 0
    mem[(32 * sub_93199b09) + 928] = 96
    mem[(32 * sub_93199b09) + 960] = 0
    mem[(32 * sub_93199b09) + 992] = 0
    mem[var33002] = var33001
    if not var33003 - 1:
        idx = 0
        while idx < sub_93199b09:
            if idx >= stor6.length:
                revert with 0, 50
            mem[0] = 6
            _1117 = mem[64]
            mem[64] = mem[64] + 128
            mem[_1117] = address(stor6[idx].field_0)
            if bool(stor6[idx].field_256):
                if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                _1131 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_256) * 0.5) + 32
                mem[_1131] = uint255(stor6[idx].field_256) * 0.5
                if bool(stor6[idx].field_256):
                    if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor6[idx].field_256):
                        if 31 >= uint255(stor6[idx].field_256) * 0.5:
                            mem[_1131 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_1131 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _1131 + 32
                            t = sha3(mem[0])
                            while _1131 + (uint255(stor6[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor6[idx].field_257 % 128:
                        if 31 >= stor6[idx].field_257 % 128:
                            mem[_1131 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_1131 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _1131 + 32
                            t = sha3(mem[0])
                            while _1131 + stor6[idx].field_257 % 128 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_1117 + 32] = _1131
            else:
                if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                    revert with 0, 34
                _1133 = mem[64]
                mem[64] = mem[64] + ceil32(stor6[idx].field_257 % 128) + 32
                mem[_1133] = stor6[idx].field_257 % 128
                if bool(stor6[idx].field_256):
                    if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor6[idx].field_256):
                        if 31 >= uint255(stor6[idx].field_256) * 0.5:
                            mem[_1133 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_1133 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _1133 + 32
                            t = sha3(mem[0])
                            while _1133 + (uint255(stor6[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor6[idx].field_257 % 128:
                        if 31 >= stor6[idx].field_257 % 128:
                            mem[_1133 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_1133 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _1133 + 32
                            t = sha3(mem[0])
                            while _1133 + stor6[idx].field_257 % 128 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_1117 + 32] = _1133
            mem[_1117 + 64] = stor6[idx].field_512
            mem[_1117 + 96] = bool(uint8(stor6[idx].field_768))
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _1117
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1115 = mem[64]
        mem[mem[64]] = 32
        _1118 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _1118:
            mem[u] = t + -_1115 - 64
            _1184 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _1186 = mem[_1184 + 32]
            mem[t + 32] = 128
            _1188 = mem[_1186]
            mem[t + 128] = mem[_1186]
            v = 0
            while v < _1188:
                mem[v + t + 160] = mem[_1186 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1188) > _1188:
                mem[t + _1188 + 160] = 0
            mem[t + 64] = mem[_1184 + 64]
            mem[t + 96] = bool(mem[_1184 + 96])
            idx = idx + 1
            s = s + 32
            t = ceil32(_1188) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_93199b09) + 1152
    mem[(32 * sub_93199b09) + 1024] = 0
    mem[(32 * sub_93199b09) + 1056] = 96
    mem[(32 * sub_93199b09) + 1088] = 0
    mem[(32 * sub_93199b09) + 1120] = 0
    mem[var37002] = var37001
    if var37003 - 1:
        mem[64] = (32 * sub_93199b09) + 1280
        mem[var41002] = var41001
        if not var41003 - 1:
            idx = 0
            while idx < sub_93199b09:
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = 6
                _1417 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1417] = address(stor6[idx].field_0)
                if bool(stor6[idx].field_256):
                    if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    _1431 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_256) * 0.5) + 32
                    mem[_1431] = uint255(stor6[idx].field_256) * 0.5
                    if bool(stor6[idx].field_256):
                        if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor6[idx].field_256):
                            mem[_1417 + 32] = _1431
                            mem[_1417 + 64] = stor6[idx].field_512
                            mem[_1417 + 96] = bool(uint8(stor6[idx].field_768))
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _1417
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if 31 < uint255(stor6[idx].field_256) * 0.5:
                            # nil
                        else:
                            mem[_1431 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                            mem[_1417 + 32] = _1431
                            mem[_1417 + 64] = stor6[idx].field_512
                            mem[_1417 + 96] = bool(uint8(stor6[idx].field_768))
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _1417
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                            revert with 0, 34
                        if not stor6[idx].field_257 % 128:
                            mem[_1417 + 32] = _1431
                            mem[_1417 + 64] = stor6[idx].field_512
                            mem[_1417 + 96] = bool(uint8(stor6[idx].field_768))
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _1417
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if 31 < stor6[idx].field_257 % 128:
                            # nil
                        else:
                            mem[_1431 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                            mem[_1417 + 32] = _1431
                            mem[_1417 + 64] = stor6[idx].field_512
                            mem[_1417 + 96] = bool(uint8(stor6[idx].field_768))
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _1417
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                        revert with 0, 34
                    _1433 = mem[64]
                    mem[64] = mem[64] + ceil32(stor6[idx].field_257 % 128) + 32
                    mem[_1433] = stor6[idx].field_257 % 128
                    if bool(stor6[idx].field_256):
                        if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor6[idx].field_256):
                            mem[_1417 + 32] = _1433
                            mem[_1417 + 64] = stor6[idx].field_512
                            mem[_1417 + 96] = bool(uint8(stor6[idx].field_768))
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _1417
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if 31 < uint255(stor6[idx].field_256) * 0.5:
                            # nil
                        else:
                            mem[_1433 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                            mem[_1417 + 32] = _1433
                            mem[_1417 + 64] = stor6[idx].field_512
                            mem[_1417 + 96] = bool(uint8(stor6[idx].field_768))
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _1417
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                            revert with 0, 34
                        if not stor6[idx].field_257 % 128:
                            mem[_1417 + 32] = _1433
                            mem[_1417 + 64] = stor6[idx].field_512
                            mem[_1417 + 96] = bool(uint8(stor6[idx].field_768))
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _1417
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if 31 < stor6[idx].field_257 % 128:
                            # nil
                        else:
                            mem[_1433 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                            mem[_1417 + 32] = _1433
                            mem[_1417 + 64] = stor6[idx].field_512
                            mem[_1417 + 96] = bool(uint8(stor6[idx].field_768))
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _1417
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
        # nil
    else:
        idx = 0
        while idx < sub_93199b09:
            if idx >= stor6.length:
                revert with 0, 50
            mem[0] = 6
            _1267 = mem[64]
            mem[64] = mem[64] + 128
            mem[_1267] = address(stor6[idx].field_0)
            if bool(stor6[idx].field_256):
                if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                _1281 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor6[idx].field_256) * 0.5) + 32
                mem[_1281] = uint255(stor6[idx].field_256) * 0.5
                if bool(stor6[idx].field_256):
                    if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor6[idx].field_256):
                        if 31 >= uint255(stor6[idx].field_256) * 0.5:
                            mem[_1281 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_1281 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _1281 + 32
                            t = sha3(mem[0])
                            while _1281 + (uint255(stor6[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor6[idx].field_257 % 128:
                        if 31 >= stor6[idx].field_257 % 128:
                            mem[_1281 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_1281 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _1281 + 32
                            t = sha3(mem[0])
                            while _1281 + stor6[idx].field_257 % 128 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_1267 + 32] = _1281
            else:
                if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                    revert with 0, 34
                _1283 = mem[64]
                mem[64] = mem[64] + ceil32(stor6[idx].field_257 % 128) + 32
                mem[_1283] = stor6[idx].field_257 % 128
                if bool(stor6[idx].field_256):
                    if bool(stor6[idx].field_256) == uint255(stor6[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor6[idx].field_256):
                        if 31 >= uint255(stor6[idx].field_256) * 0.5:
                            mem[_1283 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_1283 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _1283 + 32
                            t = sha3(mem[0])
                            while _1283 + (uint255(stor6[idx].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor6[idx].field_256) == stor6[idx].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor6[idx].field_257 % 128:
                        if 31 >= stor6[idx].field_257 % 128:
                            mem[_1283 + 32] = 256 * Mask(248, 0, stor6[idx].field_264)
                        else:
                            mem[0] = (4 * idx) + sha3(6) + 1
                            mem[_1283 + 32] = stor[sha3((4 * idx) + ('name', 'stor6', 6) + 1)].field_0
                            s = _1283 + 32
                            t = sha3(mem[0])
                            while _1283 + stor6[idx].field_257 % 128 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_1267 + 32] = _1283
            mem[_1267 + 64] = stor6[idx].field_512
            mem[_1267 + 96] = bool(uint8(stor6[idx].field_768))
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _1267
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1265 = mem[64]
        mem[mem[64]] = 32
        _1268 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _1268:
            mem[u] = t + -_1265 - 64
            _1334 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _1336 = mem[_1334 + 32]
            mem[t + 32] = 128
            _1338 = mem[_1336]
            mem[t + 128] = mem[_1336]
            v = 0
            while v < _1338:
                mem[v + t + 160] = mem[_1336 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1338) > _1338:
                mem[t + _1338 + 160] = 0
            mem[t + 64] = mem[_1334 + 64]
            mem[t + 96] = bool(mem[_1334 + 96])
            idx = idx + 1
            s = s + 32
            t = ceil32(_1338) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
}



}
