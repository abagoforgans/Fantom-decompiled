contract main {




// =====================  Runtime code  =====================


#
#  - viewInfo(uint256 arg1)
#
array of struct stor0;

function gameStatus(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor0[msg.sender].field_0
    return bool(stor0[msg.sender][arg1].field_2064)
}

function _fallback() payable {
    revert
}

function sub_db71dcdc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor0[address(msg.sender)].field_0
    require arg1 < stor0[address(msg.sender)].field_0
    require arg1 < stor0[address(msg.sender)].field_0
    require arg1 < stor0[address(msg.sender)].field_0
    require arg1 < stor0[address(msg.sender)].field_0
    require arg1 < stor0[msg.sender].field_0
    require stor0[address(msg.sender)][arg1].field_2048 <= 3
    require stor0[msg.sender][arg1].field_2056 <= 3
    return stor0[address(msg.sender)][arg1].field_1024, 
           stor0[address(msg.sender)][arg1].field_1280,
           stor0[address(msg.sender)][arg1].field_1536,
           stor0[address(msg.sender)][arg1].field_1792,
           stor0[address(msg.sender)][arg1].field_2048,
           stor0[msg.sender][arg1].field_2048
}

function sub_be1482e6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    stor0[msg.sender].field_0++
    if arg1.length:
        stor0[msg.sender][stor0[msg.sender].field_0][].field_0 = Array(len=arg1.length, data=arg1[all])
    else:
        stor0[msg.sender][stor0[msg.sender].field_0].field_0 = 0
        idx = 0
        while stor0[msg.sender][stor0[msg.sender].field_0].length + 31 / 32 > idx:
            stor0[msg.sender][(9 * stor0[msg.sender].field_0) + idx].field_0 = 0
            idx = idx + 1
            continue 
    stor0[msg.sender][stor0[msg.sender].field_0].field_256 = 0
    idx = 0
    while stor[('map', 'msg.sender', ('name', 'stor0', 0)) + (9 * stor0[msg.sender].field_0) + 1].length + 31 / 32 > idx:
        stor[idx + sha3(('map', 'msg.sender', ('name', 'stor0', 0)) + (9 * stor0[msg.sender].field_0) + 1)].field_0 = 0
        idx = idx + 1
        continue 
    stor0[msg.sender][stor0[msg.sender].field_0].field_512 = 0
    idx = 0
    while stor[('map', 'msg.sender', ('name', 'stor0', 0)) + (9 * stor0[msg.sender].field_0) + 2].length + 31 / 32 > idx:
        stor[idx + sha3(('map', 'msg.sender', ('name', 'stor0', 0)) + (9 * stor0[msg.sender].field_0) + 2)].field_0 = 0
        idx = idx + 1
        continue 
    stor0[msg.sender][stor0[msg.sender].field_0].field_768 = block.timestamp
    stor0[msg.sender][stor0[msg.sender].field_0].field_1024 = 100
    stor0[msg.sender][stor0[msg.sender].field_0].field_1280 = 5
    stor0[msg.sender][stor0[msg.sender].field_0].field_1536 = 5
    stor0[msg.sender][stor0[msg.sender].field_0].field_1792 = 5
    stor0[msg.sender][stor0[msg.sender].field_0].field_2048 = 0
    stor0[msg.sender][stor0[msg.sender].field_0].field_2304 = 0
    stor0[msg.sender][stor0[msg.sender].field_0].field_2056 = 0
    stor0[msg.sender][stor0[msg.sender].field_0].field_2304 = 0
    stor0[msg.sender][stor0[msg.sender].field_0].field_2064 = 0
    emit 0xf17b2211: Array(len=arg1.length, data=arg1[all]), stor0[msg.sender].field_0 - 1
}

function sub_c12cbe86(?) payable {
    require calldata.size - 4 >= 64
    mem[32] = 0
    require arg2 < stor0[arg1].field_0
    mem[96] = stor0[arg1][arg2].length
    mem[128] = stor0[arg1][arg2].field_0
    idx = 128
    s = 0
    while stor0[arg1][arg2].length + 96 > idx:
        mem[idx + 32] = stor0[arg1][(9 * arg2) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor0[arg1][arg2].length) + 128] = stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length
    mem[ceil32(stor0[arg1][arg2].length) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1)].field_0
    idx = ceil32(stor0[arg1][arg2].length) + 160
    s = 0
    while ceil32(stor0[arg1][arg2].length) + stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + 192
    mem[ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + 160] = stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length
    mem[0] = (9 * arg2) + sha3(sha3(arg1, 0)) + 2
    mem[ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + 192] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2)].field_0
    idx = ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + 192
    s = 0
    while ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length + 160 > idx:
        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + 288] = stor0[arg1][arg2].field_768
    mem[ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + 320] = stor0[arg1][arg2].field_1024
    mem[ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + 352] = stor0[arg1][arg2].field_1280
    mem[ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + 384] = stor0[arg1][arg2].field_1536
    mem[ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + 416] = stor0[arg1][arg2].field_1792
    require stor0[arg1][arg2].field_2048 <= 3
    mem[ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + 448] = stor0[arg1][arg2].field_2048
    require stor0[arg1][arg2].field_2056 <= 3
    mem[ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + 480] = stor0[arg1][arg2].field_2056
    mem[ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + 512] = bool(stor0[arg1][arg2].field_2064)
    mem[ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + 192] = 352
    mem[ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + 544] = stor0[arg1][arg2].length
    mem[ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + 576 len ceil32(stor0[arg1][arg2].length)] = mem[128 len ceil32(stor0[arg1][arg2].length)]
    mem[ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + 224] = stor0[arg1][arg2].length + 384
    mem[stor0[arg1][arg2].length + ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + 576] = stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length
    mem[stor0[arg1][arg2].length + ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + 608 len ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length)] = mem[ceil32(stor0[arg1][arg2].length) + 160 len ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length)]
    if not stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length % 32:
        mem[ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + 256] = stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length + stor0[arg1][arg2].length + 416
        mem[stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length + stor0[arg1][arg2].length + ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + 608] = stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length
        mem[stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length + stor0[arg1][arg2].length + ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + 640 len ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length)] = mem[ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + 192 len ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length)]
        if not stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length % 32:
            return Array(len=stor0[arg1][arg2].length, data=mem[128 len ceil32(stor0[arg1][arg2].length)], mem[(2 * ceil32(stor0[arg1][arg2].length)) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + 576 len stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length + stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length + stor0[arg1][arg2].length + -ceil32(stor0[arg1][arg2].length) + 64]), 
                   stor0[arg1][arg2].length + 384,
                   stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length + stor0[arg1][arg2].length + 416,
                   stor0[arg1][arg2].field_768,
                   stor0[arg1][arg2].field_1024,
                   stor0[arg1][arg2].field_1280,
                   stor0[arg1][arg2].field_1536,
                   stor0[arg1][arg2].field_1792,
                   stor0[arg1][arg2].field_2048,
                   stor0[arg1][arg2].field_2048,
                   bool(stor0[arg1][arg2].field_2064)
        mem[floor32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length + stor0[arg1][arg2].length + ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + 640] = mem[floor32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length + stor0[arg1][arg2].length + ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + -stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length % 32 + 672 len stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length % 32]
        return Array(len=stor0[arg1][arg2].length, data=mem[128 len ceil32(stor0[arg1][arg2].length)], mem[(2 * ceil32(stor0[arg1][arg2].length)) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + 576 len floor32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length + stor0[arg1][arg2].length + -ceil32(stor0[arg1][arg2].length) + 96]), 
               stor0[arg1][arg2].length + 384,
               stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length + stor0[arg1][arg2].length + 416,
               stor0[arg1][arg2].field_768,
               stor0[arg1][arg2].field_1024,
               stor0[arg1][arg2].field_1280,
               stor0[arg1][arg2].field_1536,
               stor0[arg1][arg2].field_1792,
               stor0[arg1][arg2].field_2048,
               stor0[arg1][arg2].field_2048,
               bool(stor0[arg1][arg2].field_2064)
    mem[floor32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + stor0[arg1][arg2].length + ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + 608] = mem[floor32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + stor0[arg1][arg2].length + ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + -stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length % 32 + 640 len stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length % 32]
    mem[ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + 256] = floor32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + stor0[arg1][arg2].length + 448
    mem[floor32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + stor0[arg1][arg2].length + ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + 640] = stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length
    mem[floor32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + stor0[arg1][arg2].length + ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + 672 len ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length)] = mem[ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + 192 len ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length)]
    if not stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length % 32:
        return Array(len=stor0[arg1][arg2].length, data=mem[128 len ceil32(stor0[arg1][arg2].length)], mem[(2 * ceil32(stor0[arg1][arg2].length)) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + 576 len stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length + floor32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + stor0[arg1][arg2].length + -ceil32(stor0[arg1][arg2].length) + 96]), 
               stor0[arg1][arg2].length + 384,
               floor32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + stor0[arg1][arg2].length + 448,
               stor0[arg1][arg2].field_768,
               stor0[arg1][arg2].field_1024,
               stor0[arg1][arg2].field_1280,
               stor0[arg1][arg2].field_1536,
               stor0[arg1][arg2].field_1792,
               stor0[arg1][arg2].field_2048,
               stor0[arg1][arg2].field_2048,
               bool(stor0[arg1][arg2].field_2064)
    mem[floor32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + floor32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + stor0[arg1][arg2].length + ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + 672] = mem[floor32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + floor32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + stor0[arg1][arg2].length + ceil32(stor0[arg1][arg2].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + -stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length % 32 + 704 len stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length % 32]
    return Array(len=stor0[arg1][arg2].length, data=mem[128 len ceil32(stor0[arg1][arg2].length)], mem[(2 * ceil32(stor0[arg1][arg2].length)) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + ceil32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + 576 len floor32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 2].length) + floor32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + stor0[arg1][arg2].length + -ceil32(stor0[arg1][arg2].length) + 128]), 
           stor0[arg1][arg2].length + 384,
           floor32(stor[(9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 1].length) + stor0[arg1][arg2].length + 448,
           stor0[arg1][arg2].field_768,
           stor0[arg1][arg2].field_1024,
           stor0[arg1][arg2].field_1280,
           stor0[arg1][arg2].field_1536,
           stor0[arg1][arg2].field_1792,
           stor0[arg1][arg2].field_2048,
           stor0[arg1][arg2].field_2048,
           bool(stor0[arg1][arg2].field_2064)
}



}
