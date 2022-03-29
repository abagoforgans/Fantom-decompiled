contract main {




// =====================  Runtime code  =====================


array of struct stor0;

function _fallback() payable {
    revert
}

function sub_9e8efbde(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    stor0.length++
    stor0[stor0.length].field_0 = msg.sender
    stor[sha3((3 * stor0.length) + ('name', 'stor0', 0) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor0[stor0.length].field_512 = block.timestamp
}

function sub_67646efa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor0.length
    mem[128] = stor[sha3((3 * arg1) + ('name', 'stor0', 0) + 1)].field_0
    idx = 128
    s = 0
    while stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor0', 0) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor0[arg1].field_0, 
           Array(len=stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length, data=mem[128 len stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length]),
           stor0[arg1].field_512
}



}
