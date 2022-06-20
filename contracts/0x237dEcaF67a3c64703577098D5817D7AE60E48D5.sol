contract main {




// =====================  Runtime code  =====================


#
#  - sub_cf9277a8(?)
#
address owner;
mapping of struct stor1;
uint256 stor2;
uint256 fee;

function owner() {
    return owner
}

function fee() {
    return fee
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    fee = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
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
    if fee >= 100:
        revert with 0, 'Fee higher than 100%.'
    if 100 < fee:
        revert with 'NH{q', 17
    if msg.value and -fee + 100 > -1 / msg.value:
        revert with 'NH{q', 17
    call address(arg1) with:
       value (100 * msg.value) - (fee * msg.value) / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to pay'
    if msg.value and fee > -1 / msg.value:
        revert with 'NH{q', 17
    call owner with:
       value msg.value * fee / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to pay'
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
