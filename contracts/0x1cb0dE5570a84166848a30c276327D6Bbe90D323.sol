contract main {




// =====================  Runtime code  =====================


#
#  - sub_03b8438d(?)
#  - sub_a71fa015(?)
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

function getKeccak256(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    return sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256)
}

function sub_88e9f429(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    if arg2 > -22:
        revert with 'NH{q', 17
    if arg1.length < arg2 + 21:
        revert with 0, 'slicing out of range'
    mem[ceil32(ceil32(arg1.length)) + 97] = mem[arg2 + 128]
    return memory
      from ceil32(ceil32(arg1.length)) + 97
       len 32
}



}
