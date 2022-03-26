contract main {




// =====================  Runtime code  =====================


array of struct stor0;
uint256 sub_8147985a;

function sub_8147985a(?) payable {
    return sub_8147985a
}

function _fallback() payable {
    revert
}

function sub_5d02b98a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    if not stor0[msg.sender].field_768:
        revert with 0, 'You are already a user!'
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = block.timestamp
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = 1
    if arg1.length:
        stor0[msg.sender][].field_0 = Array(len=arg1.length, data=arg1[all])
    else:
        stor0[msg.sender].field_0 = 0
        idx = 0
        while stor0[msg.sender].length + 31 / 32 > idx:
            stor0[msg.sender][idx].field_0 = 0
            idx = idx + 1
            continue 
    if Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        stor0[msg.sender][1][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    else:
        stor0[msg.sender].field_256 = 0
        idx = 0
        while stor0[msg.sender][1].length + 31 / 32 > idx:
            stor0[msg.sender][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor0[msg.sender].field_512 = block.timestamp
    stor0[msg.sender].field_768 = 1
    sub_8147985a++
}

function account(address arg1) payable {
    require calldata.size - 4 >= 32
    mem[32] = 0
    mem[96] = stor0[arg1].length
    mem[0] = sha3(arg1, 0)
    mem[128] = stor0[arg1].field_0
    idx = 128
    s = 0
    while stor0[arg1].length + 96 > idx:
        mem[idx + 32] = stor0[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor0[arg1].length) + ceil32(stor0[arg1][1].length) + 160
    mem[ceil32(stor0[arg1].length) + 128] = stor0[arg1][1].length
    mem[ceil32(stor0[arg1].length) + 160] = stor0[arg1][1].field_0
    idx = ceil32(stor0[arg1].length) + 160
    s = 0
    while ceil32(stor0[arg1].length) + stor0[arg1][1].length + 128 > idx:
        mem[idx + 32] = stor0[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor0[arg1].length) + ceil32(stor0[arg1][1].length) + 224] = stor0[arg1].field_512
    mem[ceil32(stor0[arg1].length) + ceil32(stor0[arg1][1].length) + 256] = bool(stor0[arg1].field_768)
    mem[ceil32(stor0[arg1].length) + ceil32(stor0[arg1][1].length) + 160] = 128
    mem[ceil32(stor0[arg1].length) + ceil32(stor0[arg1][1].length) + 288] = stor0[arg1].length
    mem[ceil32(stor0[arg1].length) + ceil32(stor0[arg1][1].length) + 320 len ceil32(stor0[arg1].length)] = mem[128 len ceil32(stor0[arg1].length)]
    mem[ceil32(stor0[arg1].length) + ceil32(stor0[arg1][1].length) + 192] = stor0[arg1].length + 160
    mem[stor0[arg1].length + ceil32(stor0[arg1].length) + ceil32(stor0[arg1][1].length) + 320] = stor0[arg1][1].length
    mem[stor0[arg1].length + ceil32(stor0[arg1].length) + ceil32(stor0[arg1][1].length) + 352 len ceil32(stor0[arg1][1].length)] = mem[ceil32(stor0[arg1].length) + 160 len ceil32(stor0[arg1][1].length)]
    if not stor0[arg1][1].length % 32:
        return Array(len=stor0[arg1].length, data=mem[128 len ceil32(stor0[arg1].length)], mem[(2 * ceil32(stor0[arg1].length)) + ceil32(stor0[arg1][1].length) + 320 len stor0[arg1][1].length + stor0[arg1].length + -ceil32(stor0[arg1].length) + 32]), 
               stor0[arg1].length + 160,
               stor0[arg1].field_512,
               bool(stor0[arg1].field_768)
    mem[floor32(stor0[arg1][1].length) + stor0[arg1].length + ceil32(stor0[arg1].length) + ceil32(stor0[arg1][1].length) + 352] = mem[floor32(stor0[arg1][1].length) + stor0[arg1].length + ceil32(stor0[arg1].length) + ceil32(stor0[arg1][1].length) + -stor0[arg1][1].length % 32 + 384 len stor0[arg1][1].length % 32]
    return Array(len=stor0[arg1].length, data=mem[128 len ceil32(stor0[arg1].length)], mem[(2 * ceil32(stor0[arg1].length)) + ceil32(stor0[arg1][1].length) + 320 len floor32(stor0[arg1][1].length) + stor0[arg1].length + -ceil32(stor0[arg1].length) + 64]), 
           stor0[arg1].length + 160,
           stor0[arg1].field_512,
           bool(stor0[arg1].field_768)
}

function sub_be4e27fb(?) payable {
    if not stor0[msg.sender].field_768:
        revert with 0, 'Make an account first!'
    mem[32] = 0
    mem[96] = stor0[msg.sender].length
    mem[128] = stor0[msg.sender].field_0
    idx = 128
    s = 0
    while stor0[msg.sender].length + 96 > idx:
        mem[idx + 32] = stor0[msg.sender][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor0[msg.sender].length) + ceil32(stor0[msg.sender][1].length) + 160
    mem[ceil32(stor0[msg.sender].length) + 128] = stor0[msg.sender][1].length
    mem[0] = sha3(msg.sender, 0) + 1
    mem[ceil32(stor0[msg.sender].length) + 160] = stor0[msg.sender][1].field_0
    idx = ceil32(stor0[msg.sender].length) + 160
    s = 0
    while ceil32(stor0[msg.sender].length) + stor0[msg.sender][1].length + 128 > idx:
        mem[idx + 32] = stor0[msg.sender][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor0[msg.sender].length) + ceil32(stor0[msg.sender][1].length) + 224] = block.timestamp - stor0[msg.sender].field_512 / 60 / 60
    mem[ceil32(stor0[msg.sender].length) + ceil32(stor0[msg.sender][1].length) + 160] = 96
    mem[ceil32(stor0[msg.sender].length) + ceil32(stor0[msg.sender][1].length) + 256] = stor0[msg.sender].length
    mem[ceil32(stor0[msg.sender].length) + ceil32(stor0[msg.sender][1].length) + 288 len ceil32(stor0[msg.sender].length)] = mem[128 len ceil32(stor0[msg.sender].length)]
    mem[ceil32(stor0[msg.sender].length) + ceil32(stor0[msg.sender][1].length) + 192] = stor0[msg.sender].length + 128
    mem[stor0[msg.sender].length + ceil32(stor0[msg.sender].length) + ceil32(stor0[msg.sender][1].length) + 288] = stor0[msg.sender][1].length
    mem[stor0[msg.sender].length + ceil32(stor0[msg.sender].length) + ceil32(stor0[msg.sender][1].length) + 320 len ceil32(stor0[msg.sender][1].length)] = mem[ceil32(stor0[msg.sender].length) + 160 len ceil32(stor0[msg.sender][1].length)]
    if not stor0[msg.sender][1].length % 32:
        return Array(len=stor0[msg.sender].length, data=mem[128 len ceil32(stor0[msg.sender].length)], mem[(2 * ceil32(stor0[msg.sender].length)) + ceil32(stor0[msg.sender][1].length) + 288 len stor0[msg.sender][1].length + stor0[msg.sender].length + -ceil32(stor0[msg.sender].length) + 32]), 
               stor0[msg.sender].length + 128,
               block.timestamp - stor0[msg.sender].field_512 / 60 / 60
    mem[floor32(stor0[msg.sender][1].length) + stor0[msg.sender].length + ceil32(stor0[msg.sender].length) + ceil32(stor0[msg.sender][1].length) + 320] = mem[floor32(stor0[msg.sender][1].length) + stor0[msg.sender].length + ceil32(stor0[msg.sender].length) + ceil32(stor0[msg.sender][1].length) + -stor0[msg.sender][1].length % 32 + 352 len stor0[msg.sender][1].length % 32]
    return Array(len=stor0[msg.sender].length, data=mem[128 len ceil32(stor0[msg.sender].length)], mem[(2 * ceil32(stor0[msg.sender].length)) + ceil32(stor0[msg.sender][1].length) + 288 len floor32(stor0[msg.sender][1].length) + stor0[msg.sender].length + -ceil32(stor0[msg.sender].length) + 64]), 
           stor0[msg.sender].length + 128,
           block.timestamp - stor0[msg.sender].field_512 / 60 / 60
}



}
