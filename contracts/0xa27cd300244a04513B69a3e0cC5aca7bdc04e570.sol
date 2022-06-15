contract main {




// =====================  Runtime code  =====================


#
#  - sub_cf9277a8(?)
#
address stor0;
mapping of struct stor1;
uint256 stor2;

function _fallback() payable {
    revert
}

function compareStrings(string arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307() or ceil32(ceil32(arg2.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg1.length)) + 129 len arg2.length] = arg2[all]
    mem[ceil32(ceil32(arg1.length)) + arg2.length + 129] = 0
    return (sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * arg1.length) - 256) == sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[ceil32(ceil32(arg1.length)) + arg2.length + 129 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256))
}

function sub_429c14d7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if msg.value and 99 > -1 / msg.value:
        revert with 'NH{q', 17
    call address(arg1) with:
       value 99 * msg.value / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send your donation'
    if msg.value and 1 > -1 / msg.value:
        revert with 'NH{q', 17
    call stor0 with:
       value msg.value / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send your donation'
    stor2++
    if stor1[stor2].field_0:
        if stor1[stor2].field_0 == stor1[stor2].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor1[stor2][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor1[stor2].field_0 = 0
            idx = 0
            while stor1[stor2].field_1 + 31 / 32 > idx:
                stor1[stor2][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor1[stor2].field_0 == stor1[stor2].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor1[stor2][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor1[stor2].field_0 = 0
            idx = 0
            while stor1[stor2].field_1 + 31 / 32 > idx:
                stor1[stor2][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor1[stor2].field_256 = msg.sender
    stor1[stor2].field_512 = address(arg1)
    stor1[stor2].field_768 = msg.value
    stor1[stor2].field_1024 = block.timestamp
}



}
