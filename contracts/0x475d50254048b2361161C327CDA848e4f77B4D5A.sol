contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_d720f9da(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[132 len arg1.length] = arg1[all]
    mem[192 len 0] = None
    mem[192 len 28] = uint32('\x19Ethereum Signed Message:\n32'), mem[196 len 24]
    return sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, mem[192 len 4])
}

function recover(bytes32 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg2.length != 65:
        mem[ceil32(arg2.length) + 128] = 1
    else:
        if mem[160] <= 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            mem[ceil32(arg2.length) + 128] = 3
        else:
            mem[ceil32(arg2.length) + 128] = 2
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}



}
