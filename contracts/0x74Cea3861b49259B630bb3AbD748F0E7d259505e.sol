contract main {




// =====================  Runtime code  =====================


address sub_647aba30Address;

function sub_647aba30(?) payable {
    return sub_647aba30Address
}

function _fallback() payable {
    revert
}

function hashAgainstElevationReturnUint(bytes32 arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_647aba30Address != msg.sender:
        revert with 0, 'Only callable by cartographer.'
    return sha3(arg1, arg2)
}

function sub_78b673ae(?) payable {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if sub_647aba30Address != msg.sender:
        revert with 0, 'Only callable by cartographer.'
    mem[ceil32(arg1.length) + 192] = arg2
    mem[ceil32(arg1.length) + 224] = arg3
    mem[ceil32(arg1.length) + 256] = arg4
    mem[ceil32(arg1.length) + 288] = block.timestamp
    mem[ceil32(arg1.length) + 320] = block.number
    mem[ceil32(arg1.length) + 352] = arg5
    mem[ceil32(arg1.length) + 160] = 224
    mem[ceil32(arg1.length) + 384] = arg1.length
    mem[ceil32(arg1.length) + 416 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[ceil32(arg1.length) + 128] = arg1.length + 256
        mem[arg1.length + ceil32(arg1.length) + 416] = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
        return memory
          from arg1.length + ceil32(arg1.length) + 416
           len 32
    mem[floor32(arg1.length) + ceil32(arg1.length) + 416] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 448 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = floor32(arg1.length) + 288
    mem[floor32(arg1.length) + ceil32(arg1.length) + 448] = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    return memory
      from floor32(arg1.length) + ceil32(arg1.length) + 448
       len 32
}



}
