contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_79275ba6(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg3.length) + 128 > test266151307() or ceil32(arg3.length) + 128 < 96:
        revert with 'NH{q', 65
    require calldata.size >= arg3.length + arg3 + 36
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg3.length) + ceil32(arg4.length) + 160 > test266151307() or ceil32(arg4.length) + 160 < 128:
        revert with 'NH{q', 65
    mem[ceil32(arg3.length) + 128] = arg4.length
    require calldata.size >= arg4.length + arg4 + 36
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len 5958] = code.data[1817 len 5958]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 6118] = address(arg1)
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 6150] = address(arg2)
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 6182] = 128
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 6246] = arg3.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 6278 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 6278] = 0
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 6214] = ceil32(arg3.length) + 160
    mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 6278] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 6310 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    if ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) > Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]:
        mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 6310] = 0
    create contract with 0 wei
                    code: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + 6150]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = address(create.new_address)
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = block.timestamp
    emit NewVault(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length) + 32]);
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = address(create.new_address)
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), 
           mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
}



}
