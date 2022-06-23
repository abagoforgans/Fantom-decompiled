contract main {




// =====================  Runtime code  =====================


#
#  - sub_03b8438d(?)
#
function _fallback() payable {
    revert
}

function sub_54ace776(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return arg1
}

function sub_2f0572a4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return sha3(arg1, arg2)
}

function sub_88e9f429(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    if arg1.length < arg2 + 21:
        revert with 0, 'slicing out of range'
    mem[ceil32(arg1.length) + 128] = mem[arg2 + 128]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_a71fa015(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    mem[ceil32(arg1.length) + 160 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(arg1.length) + arg1.length + 160] = arg2
    mem[ceil32(arg1.length) + 128] = arg1.length + 32
    mem[ceil32(arg1.length) + arg1.length + 224] = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    require arg4 + -arg3 + 1
    return ((mem[ceil32(arg1.length) + arg1.length + 224] % arg4 + -arg3 + 1) + arg3)
}



}
