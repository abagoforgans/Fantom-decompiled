contract main {




// =====================  Runtime code  =====================


const sub_4b266407(?) = sha3(mem[320 len 15], 123456)


mapping of uint8 stor0;

function voted(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function _fallback() payable {
    revert
}

function commit(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    stor0[arg1] = 1
}

function sub_858d02ab(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128] = 0
    mem[ceil32(arg2.length) + 160] = 96
    mem[ceil32(arg2.length) + 288] = address(arg1)
    mem[ceil32(arg2.length) + 308 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 340 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    return sha3(arg1, call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 308 len arg2.length % 32])
}

function sub_4b7f7b03(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128] = 0
    mem[ceil32(arg2.length) + 160] = 96
    mem[ceil32(arg2.length) + 288] = address(arg1)
    mem[ceil32(arg2.length) + 308 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 340 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    if not stor0[arg1][call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 308 len arg2.length % 32]]:
        revert with 0, 'Voter has not voted'
    if sha3(arg1, call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 308 len arg2.length % 32]) != arg3:
        revert with 0, 'Invalid commitment hash'
    return 1
}



}
