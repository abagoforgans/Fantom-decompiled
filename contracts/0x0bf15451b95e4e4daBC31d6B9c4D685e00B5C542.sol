contract main {




// =====================  Runtime code  =====================


#
#  - sub_172c18b1(?)
#  - sub_21edf2eb(?)
#  - sub_491adeee(?)
#  - sub_69921506(?)
#  - sub_6b2ad7d8(?)
#
const version = 0001

const sub_5df17077(?) = 10

const sub_8a444bd7(?) = 50 * 10^18

const sub_aea2ddbd(?) = 10 * 10^18

const sub_c25c2f26(?) = (72 * 24 * 3600)

const proposalFee = 100 * 10^18

const sub_e3a4d709(?) = 40 * 10^18


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint256 stor51;
address stor102;
address stor103;
uint256 sub_a1d373d7;
array of struct task;
mapping of struct stor106;
mapping of uint256 sub_2177d6fc;
array of struct stor108;
array of uint8 stor57762096780731528330405058414938765910932439953606620384872163540286326260488;
array of uint256 stor57762096780731528330405058414938765910932439953606620384872163540286326260489;
array of uint256 stor57762096780731528330405058414938765910932439953606620384872163540286326260490;

function getTask(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < task.length
    return bool(task[arg1].field_0), task[arg1].field_256, task[arg1].field_512
}

function sub_2177d6fc(?) {
    require calldata.size - 4 >= 64
    return sub_2177d6fc[arg1][arg2]
}

function sub_a1d373d7(?) {
    return sub_a1d373d7
}

function tasksCount() {
    return task.length
}

function _fallback() payable {
    revert
}

function sub_1191e270(?) {
    require calldata.size - 4 >= 64
    return (arg1 * arg2 / 10^18)
}

function bytes32ToString(bytes32 arg1) {
    require calldata.size - 4 >= 32
    mem[128] = code.data[16028 len 32]
    idx = 0
    while idx < 32:
        require idx < 32
        mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    return 32, 32, mem[128]
}

function proposalState(uint256 arg1) {
    require calldata.size - 4 >= 32
    require stor106[arg1].field_256 <= 2
    if stor106[arg1].field_1024:
        idx = 992
        s = 0
        while (32 * stor106[arg1].field_1024) + 960 > idx:
            mem[idx + 32] = stor106[arg1][s + 4].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if stor106[arg1].field_1536:
        idx = (32 * stor106[arg1].field_1024) + 1024
        s = 0
        while (32 * stor106[arg1].field_1024) + (32 * stor106[arg1].field_1536) + 992 > idx:
            mem[idx + 32] = stor106[arg1][s + 6].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return stor106[arg1].field_2816, stor106[arg1].field_3072, stor106[arg1].field_3328
}

function cancelProposal(uint256 arg1) {
    require calldata.size - 4 >= 32
    stor51++
    if not stor106[arg1].field_1280:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6470726f706f73616c2077697468206120676976656e20494420646f65736e742065786973,
                    mem[201 len 27]
    if stor106[arg1].field_3328:
        revert with 0, 'proposal isn't active'
    if stor106[arg1].field_3072:
        revert with 0, 'voting has already begun'
    if stor106[arg1].field_1280 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x6e6d7573742062652073656e742066726f6d207468652070726f706f73616c20636f6e74726163,
                    mem[203 len 25]
    stor106[arg1].field_3328 = 4
    emit ProposalCanceled(arg1);
    if stor51 + 1 != stor51:
        revert with 0, 'ReentrancyGuard: reentrant call'
}

function sub_5f89801e(?) {
    require calldata.size - 4 >= 64
    if not stor106[arg1][10][arg2].field_0:
        return stor106[arg1][10][arg2].field_0, 0, stor106[arg1][10][arg2].field_256
    if not stor106[arg1][10][arg2].field_256:
        if not stor106[arg1][10][arg2].field_0:
            revert with 0, 'SafeMath: division by zero'
        return stor106[arg1][10][arg2].field_0, 0 / stor106[arg1][10][arg2].field_0, stor106[arg1][10][arg2].field_256
    if 10^18 * stor106[arg1][10][arg2].field_256 / stor106[arg1][10][arg2].field_256 != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not stor106[arg1][10][arg2].field_0:
        revert with 0, 'SafeMath: division by zero'
    return stor106[arg1][10][arg2].field_0, 
           10^18 * stor106[arg1][10][arg2].field_256 / stor106[arg1][10][arg2].field_0,
           stor106[arg1][10][arg2].field_256
}

function sub_b9e6842b(?) {
    require calldata.size - 4 >= 96
    if stor108[address(arg1)][address(arg2)][arg3].field_256:
        mem[256] = stor108[address(arg1)][address(arg2)][arg3][1].field_0
        idx = 256
        s = 0
        while (32 * stor108[address(arg1)][address(arg2)][arg3].field_256) + 224 > idx:
            mem[idx + 32] = stor108[address(arg1)][address(arg2)][arg3][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor108[address(arg1)][address(arg2)][arg3].field_256) + 352 len floor32(stor108[address(arg1)][address(arg2)][arg3].field_256)] = mem[256 len floor32(stor108[address(arg1)][address(arg2)][arg3].field_256)]
    return stor108[address(arg1)][address(arg2)][arg3].field_0, 
           Array(len=stor108[address(arg1)][address(arg2)][arg3].field_256, data=mem[256 len floor32(stor108[address(arg1)][address(arg2)][arg3].field_256)], mem[(32 * stor108[address(arg1)][address(arg2)][arg3].field_256) + floor32(stor108[address(arg1)][address(arg2)][arg3].field_256) + 352 len (32 * stor108[address(arg1)][address(arg2)][arg3].field_256) - floor32(stor108[address(arg1)][address(arg2)][arg3].field_256)])
}

function initialize(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_8):
        stor51 = 1
        stor102 = arg1
        stor103 = arg2
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            stor51 = 1
            stor102 = arg1
            stor103 = arg2
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                stor51 = 1
                stor102 = arg1
                stor103 = arg2
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                stor51 = 1
                uint8(stor0.field_8) = 0
                stor102 = arg1
                stor103 = arg2
                uint8(stor0.field_8) = 0
}

function sub_14262d79(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 106
    require ext_code.size(stor102)
    staticcall stor102.getTotalWeight() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] * stor106[arg1].field_512 / 10^18 > stor106[arg1].field_3072:
        return 0, stor106[arg1].field_1536, stor106[arg1].field_3072
    idx = 0
    while idx < stor106[arg1].field_1536:
        mem[0] = idx
        mem[32] = sha3(arg1, 106) + 10
        if not stor106[arg1][10][idx].field_0:
            idx = idx + 1
            continue 
        if not stor106[arg1][10][idx].field_256:
            _34 = mem[64]
            mem[64] = mem[64] + 64
            mem[_34] = 26
            mem[_34 + 32] = 'SafeMath: division by zero'
            if stor106[arg1][10][idx].field_0:
                idx = idx + 1
                continue 
            _36 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _36 + 68] = mem[idx + _34 + 32]
                idx = idx + 32
                continue 
            mem[_36 + 68] = mem[_36 + 74 len 26]
            revert with memory
              from mem[64]
               len _36 + -mem[64] + 100
        if 10^18 * stor106[arg1][10][idx].field_256 / stor106[arg1][10][idx].field_256 != 10^18:
            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _35 = mem[64]
        mem[64] = mem[64] + 64
        mem[_35] = 26
        mem[_35 + 32] = 'SafeMath: division by zero'
        if stor106[arg1][10][idx].field_0:
            idx = idx + 1
            continue 
        _39 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _39 + 68] = mem[idx + _35 + 32]
            idx = idx + 32
            continue 
        mem[_39 + 68] = mem[_39 + 74 len 26]
        revert with memory
          from mem[64]
           len _39 + -mem[64] + 100
    return stor106[arg1].field_1536 != stor106[arg1].field_1536, stor106[arg1].field_1536, stor106[arg1].field_3072
}

function sub_cfa1afa3(?) {
    require calldata.size - 4 >= 32
    require stor106[arg1].field_256 <= 2
    if not stor106[arg1].field_1024:
        if stor106[arg1].field_1536:
            mem[(32 * stor106[arg1].field_1024) + 768] = stor106[arg1][6].field_0
            idx = (32 * stor106[arg1].field_1024) + 768
            s = 0
            while (32 * stor106[arg1].field_1024) + (32 * stor106[arg1].field_1536) + 736 > idx:
                mem[idx + 32] = stor106[arg1][s + 6].field_256
                idx = idx + 32
                s = s + 1
                continue 
        require stor106[arg1].field_256 <= 2
        mem[(32 * stor106[arg1].field_1024) + (32 * stor106[arg1].field_1536) + 1216 len floor32(stor106[arg1].field_1024)] = mem[736 len floor32(stor106[arg1].field_1024)]
        mem[(64 * stor106[arg1].field_1024) + (32 * stor106[arg1].field_1536) + 1216] = stor106[arg1].field_1536
        mem[(64 * stor106[arg1].field_1024) + (32 * stor106[arg1].field_1536) + 1248 len floor32(stor106[arg1].field_1536)] = mem[(32 * stor106[arg1].field_1024) + 768 len floor32(stor106[arg1].field_1536)]
        return stor106[arg1].field_0, 
               stor106[arg1].field_256,
               stor106[arg1].field_512,
               stor106[arg1].field_768,
               Array(len=stor106[arg1].field_1024, data=mem[736 len floor32(stor106[arg1].field_1024)], mem[(32 * stor106[arg1].field_1024) + (32 * stor106[arg1].field_1536) + floor32(stor106[arg1].field_1024) + 1216 len (32 * stor106[arg1].field_1024) + (32 * stor106[arg1].field_1536) + -floor32(stor106[arg1].field_1024) + 32]),
               (32 * stor106[arg1].field_1024) + 352,
               stor106[arg1].field_1280,
               stor106[arg1].field_1792,
               stor106[arg1].field_2048,
               stor106[arg1].field_2304
    mem[736] = stor106[arg1][4].field_0
    idx = 736
    s = 0
    while (32 * stor106[arg1].field_1024) + 704 > idx:
        mem[idx + 32] = stor106[arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not stor106[arg1].field_1536:
        require stor106[arg1].field_256 <= 2
        mem[(32 * stor106[arg1].field_1024) + (32 * stor106[arg1].field_1536) + 1216 len floor32(stor106[arg1].field_1024)] = mem[736 len floor32(stor106[arg1].field_1024)]
        mem[(64 * stor106[arg1].field_1024) + (32 * stor106[arg1].field_1536) + 1216] = stor106[arg1].field_1536
        mem[(64 * stor106[arg1].field_1024) + (32 * stor106[arg1].field_1536) + 1248 len floor32(stor106[arg1].field_1536)] = mem[(32 * stor106[arg1].field_1024) + 768 len floor32(stor106[arg1].field_1536)]
        return stor106[arg1].field_0, 
               stor106[arg1].field_256,
               stor106[arg1].field_512,
               stor106[arg1].field_768,
               Array(len=stor106[arg1].field_1024, data=mem[736 len floor32(stor106[arg1].field_1024)], mem[(32 * stor106[arg1].field_1024) + (32 * stor106[arg1].field_1536) + floor32(stor106[arg1].field_1024) + 1216 len (32 * stor106[arg1].field_1024) + (32 * stor106[arg1].field_1536) + -floor32(stor106[arg1].field_1024) + 32]),
               (32 * stor106[arg1].field_1024) + 352,
               stor106[arg1].field_1280,
               stor106[arg1].field_1792,
               stor106[arg1].field_2048,
               stor106[arg1].field_2304
    mem[(32 * stor106[arg1].field_1024) + 768] = stor106[arg1][6].field_0
    idx = (32 * stor106[arg1].field_1024) + 768
    s = 0
    while (32 * stor106[arg1].field_1024) + (32 * stor106[arg1].field_1536) + 736 > idx:
        mem[idx + 32] = stor106[arg1][s + 6].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require stor106[arg1].field_256 <= 2
    mem[(32 * stor106[arg1].field_1024) + (32 * stor106[arg1].field_1536) + 1216 len floor32(stor106[arg1].field_1024)] = mem[736 len floor32(stor106[arg1].field_1024)]
    mem[(64 * stor106[arg1].field_1024) + (32 * stor106[arg1].field_1536) + 1248 len floor32(stor106[arg1].field_1536)] = mem[(32 * stor106[arg1].field_1024) + 768 len floor32(stor106[arg1].field_1536)]
    return stor106[arg1].field_0, 
           stor106[arg1].field_256,
           stor106[arg1].field_512,
           stor106[arg1].field_768,
           Array(len=stor106[arg1].field_1024, data=mem[736 len floor32(stor106[arg1].field_1024)], mem[(32 * stor106[arg1].field_1024) + (32 * stor106[arg1].field_1536) + floor32(stor106[arg1].field_1024) + 1216 len (32 * stor106[arg1].field_1024) - floor32(stor106[arg1].field_1024)], stor106[arg1].field_1536, mem[(32 * stor106[arg1].field_1024) + 768 len floor32(stor106[arg1].field_1536)], mem[(64 * stor106[arg1].field_1024) + (32 * stor106[arg1].field_1536) + floor32(stor106[arg1].field_1536) + 1248 len (32 * stor106[arg1].field_1536) - floor32(stor106[arg1].field_1536)]),
           (32 * stor106[arg1].field_1024) + 352,
           stor106[arg1].field_1280,
           stor106[arg1].field_1792,
           stor106[arg1].field_2048,
           stor106[arg1].field_2304
}

function createProposal(address arg1) payable {
    require calldata.size - 4 >= 32
    stor51++
    if 100 * 10^18 != msg.value:
        revert with 0, 'paid proposal fee is wrong'
    sub_a1d373d7++
    if not arg1:
        revert with 0, 'empty proposal address'
    require ext_code.size(arg1)
    staticcall arg1.0x216b9116 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x16131a18 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.minVotes() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x6eb067a0 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x6f24f8a100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x6f24f8a1 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _24 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _27 = mem[_24 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_24 + 96])] = mem[_24 + 128 len floor32(mem[_24 + 96])]
    require ext_code.size(arg1)
    staticcall arg1.0x2019a608 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x9b3a8a07 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0xa61e393a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _27) + ceil32(return_data.size) + 128] = 0x1069143a00000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.options() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _27) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _27) + (2 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    _132 = mem[(32 * _27) + ceil32(return_data.size) + 128]
    require mem[(32 * _27) + ceil32(return_data.size) + 128] <= 4294967296
    require mem[(32 * _27) + ceil32(return_data.size) + 128] + 32 <= return_data.size
    require mem[(32 * _27) + ceil32(return_data.size) + mem[(32 * _27) + ceil32(return_data.size) + 128] + 128] <= 4294967296 and mem[(32 * _27) + ceil32(return_data.size) + 128] + (32 * mem[(32 * _27) + ceil32(return_data.size) + mem[(32 * _27) + ceil32(return_data.size) + 128] + 128]) + 32 <= return_data.size
    mem[(32 * _27) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _27) + ceil32(return_data.size) + mem[(32 * _27) + ceil32(return_data.size) + 128] + 128]
    _135 = mem[(32 * _27) + ceil32(return_data.size) + _132 + 128]
    mem[(32 * _27) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _27) + ceil32(return_data.size) + _132 + 128])] = mem[(32 * _27) + ceil32(return_data.size) + _132 + 160 len floor32(mem[(32 * _27) + ceil32(return_data.size) + _132 + 128])]
    mem[64] = (32 * _135) + (32 * _27) + (2 * ceil32(return_data.size)) + 160
    if 0 == mem[(32 * _27) + (2 * ceil32(return_data.size)) + 128]:
        revert with 0, 
                    32,
                    48,
                    0x7470726f706f73616c206f7074696f6e732061726520656d707479202d206e6f7468696e6720746f20766f746520666f,
                    mem[(32 * _135) + (32 * _27) + (2 * ceil32(return_data.size)) + 276 len 16]
    if mem[(32 * _27) + (2 * ceil32(return_data.size)) + 128] > 10:
        revert with 0, 'too many options'
    mem[(32 * _135) + (32 * _27) + (2 * ceil32(return_data.size)) + 160] = 0xf3f4ef7900000000000000000000000000000000000000000000000000000000
    mem[(32 * _135) + (32 * _27) + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    require ext_call.return_data[0] <= 2
    mem[(32 * _135) + (32 * _27) + (2 * ceil32(return_data.size)) + 196] = uint8(ext_call.return_data[0])
    mem[(32 * _135) + (32 * _27) + (2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
    mem[(32 * _135) + (32 * _27) + (2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
    mem[(32 * _135) + (32 * _27) + (2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
    mem[(32 * _135) + (32 * _27) + (2 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
    mem[(32 * _135) + (32 * _27) + (2 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
    mem[(32 * _135) + (32 * _27) + (2 * ceil32(return_data.size)) + 292] = 256
    mem[(32 * _135) + (32 * _27) + (2 * ceil32(return_data.size)) + 420] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _135) + (32 * _27) + (2 * ceil32(return_data.size)) + 452 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    require ext_code.size(stor103)
    staticcall stor103.0xf3f4ef79 with:
            gas gas_remaining wei
           args ext_call.return_data[0], ext_call.return_data[0] << 248, ext_call.return_data[0], ext_call.return_data[0], 256, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], mem[(32 * _135) + (32 * _27) + (2 * ceil32(return_data.size)) + 420 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 
                    32,
                    39,
                    0xfe70726f706f73616c20706172616d6574657273206661696c656420766572696669636174696f,
                    ext_call.return_data[7 len 25]
    mem[(32 * _135) + (32 * _27) + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(32 * _135) + (32 * _27) + (2 * ceil32(return_data.size)) + 196] = arg1
    require ext_code.size(stor103)
    staticcall stor103.0xd294ed28 with:
            gas gas_remaining wei
           args ext_call.return_data[0], arg1
    mem[(32 * _135) + (32 * _27) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 37, 0x7270726f706f73616c20636f6e7472616374206661696c656420766572696669636174696f, ext_call.return_data[5 len 27]
    mem[32] = 106
    stor106[stor104 + 1].field_0 = ext_call.return_data[0]
    require ext_call.return_data[0] <= 2
    stor106[stor104 + 1].field_256 = ext_call.return_data[0] or Mask(248, 8, stor106[stor104 + 1].field_256)
    stor106[stor104 + 1].field_512 = ext_call.return_data[0]
    stor106[stor104 + 1].field_768 = ext_call.return_data[0]
    stor106[stor104 + 1].field_1024 = mem[ceil32(return_data.size) + 96]
    mem[0] = sha3(sub_a1d373d7 + 1, 106) + 4
    if not mem[ceil32(return_data.size) + 96]:
        idx = 0
        while stor106[stor104 + 1].field_1024 > idx:
            stor106[stor104 + 1][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(return_data.size) + 128
        while ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + 96]) + 128 > idx:
            stor106[stor104 + 1][s + 4].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[ceil32(return_data.size) + 96]) + 31) >> 5
        while stor106[stor104 + 1].field_1024 > idx:
            stor106[stor104 + 1][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
    stor106[stor104 + 1].field_1280 = arg1
    stor106[stor104 + 1].field_1792 = ext_call.return_data[0]
    stor106[stor104 + 1].field_2048 = ext_call.return_data[0]
    stor106[stor104 + 1].field_2304 = ext_call.return_data[0]
    stor106[stor104 + 1].field_1536 = mem[(32 * _27) + (2 * ceil32(return_data.size)) + 128]
    mem[0] = sha3(sub_a1d373d7 + 1, 106) + 6
    if not mem[(32 * _27) + (2 * ceil32(return_data.size)) + 128]:
        idx = 0
        while stor106[stor104 + 1].field_1536 > idx:
            stor106[stor104 + 1][idx + 6].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * _27) + (2 * ceil32(return_data.size)) + 160
        while (32 * _27) + (2 * ceil32(return_data.size)) + (32 * mem[(32 * _27) + (2 * ceil32(return_data.size)) + 128]) + 160 > idx:
            stor106[stor104 + 1][s + 6].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[(32 * _27) + (2 * ceil32(return_data.size)) + 128]) + 31) >> 5
        while stor106[stor104 + 1].field_1536 > idx:
            stor106[stor104 + 1][idx + 6].field_0 = 0
            idx = idx + 1
            continue 
    task.length++
    stor7FB4[stor105.length] = 1
    stor7FB4[stor105.length] = 1
    stor7FB4[stor105.length] = sub_a1d373d7
    call 0x0 with:
       value 50 * 10^18 wei
         gas 0 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ProposalCreated(sub_a1d373d7);
    if stor51 + 1 != stor51:
        revert with 0, 'ReentrancyGuard: reentrant call'
}



}
