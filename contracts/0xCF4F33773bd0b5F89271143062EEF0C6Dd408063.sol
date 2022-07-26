contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct sub_4a141b29;
array of struct stor3;

function sub_4a141b29(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return sub_4a141b29[address(arg1)][arg2].field_768
}

function sub_4d0eb9a6(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    if arg2 >= sub_4d0eb9a6[address(arg1)][3][address(arg3)].field_0:
        revert with 'NH{q', 50
    return sub_4d0eb9a6[address(arg1)][3][address(arg3)][arg2].field_0
}

function owner() payable {
    return owner
}

function sub_cfa4f860(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if arg2 >= sub_4d0eb9a6[address(arg1)].field_512:
        revert with 'NH{q', 50
    return stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_4d0eb9a6', 2))) + arg2].field_0
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

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function addContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_4d0eb9a6[address(arg1)].field_0:
        revert with 0, 'Contract already active'
    sub_4d0eb9a6[address(arg1)].field_256 = stor3.length
    sub_4d0eb9a6[address(arg1)].field_0 = 1
    stor3.length++
    stor3[stor3.length].field_0 = arg1
    emit ContractAdded(arg1);
}

function sub_ef7bb870(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_4d0eb9a6[address(arg1)].field_512:
        mem[128] = sub_4d0eb9a6[address(arg1)][2].field_0
        idx = 128
        s = 0
        while (32 * sub_4d0eb9a6[address(arg1)].field_512) + 96 > idx:
            mem[idx + 32] = sub_4d0eb9a6[address(arg1)][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_4d0eb9a6[address(arg1)].field_512, data=mem[128 len 32 * sub_4d0eb9a6[address(arg1)].field_512])
    mem[(32 * sub_4d0eb9a6[address(arg1)].field_512) + 128] = 32
    mem[(32 * sub_4d0eb9a6[address(arg1)].field_512) + 160] = sub_4d0eb9a6[address(arg1)].field_512
    mem[(32 * sub_4d0eb9a6[address(arg1)].field_512) + 192 len 32 * sub_4d0eb9a6[address(arg1)].field_512] = mem[128 len 32 * sub_4d0eb9a6[address(arg1)].field_512]
    return memory
      from (32 * sub_4d0eb9a6[address(arg1)].field_512) + 128
       len (96 * sub_4d0eb9a6[address(arg1)].field_512) + 64
}

function sub_2c0a62c0(?) payable {
    mem[64] = (32 * stor3.length) + 128
    mem[96] = stor3.length
    if not stor3.length:
        mem[(32 * stor3.length) + 128] = 32
        mem[(32 * stor3.length) + 160] = stor3.length
        idx = 0
        s = 128
        t = (32 * stor3.length) + 192
        while idx < stor3.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor3.length) + 128
           len (96 * stor3.length) + 64
    mem[128] = address(stor3.field_0)
    idx = 128
    s = 0
    while (32 * stor3.length) + 96 > idx:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor3.length) + 128] = 32
    mem[(32 * stor3.length) + 160] = stor3.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor3.length) + -mem[64] + 192
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    sub_4d0eb9a6[address(arg1)].field_512++
    stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_4d0eb9a6', 2))) + sub_4d0eb9a6[address(arg1)].field_512].field_0 = arg2
    sub_4d0eb9a6[address(arg1)][3][address(msg.sender)].field_0++
    sub_4d0eb9a6[address(arg1)][3][address(msg.sender)][sub_4d0eb9a6[address(arg1)][3][address(msg.sender)].field_0].field_0 = arg2
    sub_4a141b29[address(arg1)][arg2].field_0 = block.number
    sub_4a141b29[address(arg1)][arg2].field_256 = sub_4d0eb9a6[address(arg1)].field_512
    sub_4a141b29[address(arg1)][arg2].field_512 = sub_4d0eb9a6[address(arg1)][3][address(msg.sender)].field_0
    sub_4a141b29[address(arg1)][arg2].field_768 = msg.sender
    require ext_code.size(arg1)
    call arg1.0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x643c092d: address(arg1), arg2, msg.sender
}

function sub_3cf322ec(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if sub_4d0eb9a6[address(arg1)][3][address(arg2)].field_0:
        mem[128] = sub_4d0eb9a6[address(arg1)][3][address(arg2)].field_0
        idx = 128
        s = 0
        while (32 * sub_4d0eb9a6[address(arg1)][3][address(arg2)].field_0) + 96 > idx:
            mem[idx + 32] = sub_4d0eb9a6[address(arg1)][3][address(arg2)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_4d0eb9a6[address(arg1)][3][address(arg2)].field_0, data=mem[128 len 32 * sub_4d0eb9a6[address(arg1)][3][address(arg2)].field_0]), 
    mem[(32 * sub_4d0eb9a6[address(arg1)][3][address(arg2)].field_0) + 128] = 32
    mem[(32 * sub_4d0eb9a6[address(arg1)][3][address(arg2)].field_0) + 160] = sub_4d0eb9a6[address(arg1)][3][address(arg2)].field_0
    mem[(32 * sub_4d0eb9a6[address(arg1)][3][address(arg2)].field_0) + 192 len 32 * sub_4d0eb9a6[address(arg1)][3][address(arg2)].field_0] = mem[128 len 32 * sub_4d0eb9a6[address(arg1)][3][address(arg2)].field_0]
    return memory
      from (32 * sub_4d0eb9a6[address(arg1)][3][address(arg2)].field_0) + 128
       len (96 * sub_4d0eb9a6[address(arg1)][3][address(arg2)].field_0) + 64
}

function removeContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(sub_4d0eb9a6[address(arg1)].field_0) != 1:
        revert with 0, 'Contract is not currently active'
    if sub_4d0eb9a6[address(arg1)].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There are still tokens custodied for this contract'
    if stor3.length < 1:
        revert with 'NH{q', 17
    if sub_4d0eb9a6[address(arg1)].field_256 != stor3.length - 1:
        if stor3.length < 1:
            revert with 'NH{q', 17
        if stor3.length - 1 >= stor3.length:
            revert with 'NH{q', 50
        if sub_4d0eb9a6[address(arg1)].field_256 >= stor3.length:
            revert with 'NH{q', 50
        stor3[stor2[address(arg1)].field_256].field_0 = stor3[stor3.length].field_0
        sub_4d0eb9a6[stor3[stor3.length].field_0].field_256 = sub_4d0eb9a6[address(arg1)].field_256
    if not stor3.length:
        revert with 'NH{q', 49
    stor3[stor3.length].field_0 = 0
    stor3.length--
    sub_4d0eb9a6[address(arg1)].field_0 = 0
    sub_4d0eb9a6[address(arg1)].field_256 = 0
    sub_4d0eb9a6[address(arg1)].field_512 = 0
    idx = 0
    while sub_4d0eb9a6[address(arg1)].field_512 > idx:
        sub_4d0eb9a6[address(arg1)][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    emit ContractRemoved(arg1);
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if sub_4a141b29[address(arg1)][arg2].field_768 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Requestor does not own this token'
    if sub_4d0eb9a6[address(arg1)].field_512 < 1:
        revert with 'NH{q', 17
    if sub_4d0eb9a6[address(arg1)].field_512 - 1 >= sub_4d0eb9a6[address(arg1)].field_512:
        revert with 'NH{q', 50
    if sub_4d0eb9a6[address(arg1)].field_512 < 1:
        revert with 'NH{q', 17
    if sub_4a141b29[address(arg1)][arg2].field_256 != sub_4d0eb9a6[address(arg1)].field_512 - 1:
        if sub_4a141b29[address(arg1)][arg2].field_256 >= sub_4d0eb9a6[address(arg1)].field_512:
            revert with 'NH{q', 50
        stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_4d0eb9a6', 2))) + stor1[address(arg1)][arg2].field_256].field_0 = stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_4d0eb9a6', 2))) + sub_4d0eb9a6[address(arg1)].field_512].field_0
    if not sub_4d0eb9a6[address(arg1)].field_512:
        revert with 'NH{q', 49
    stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_4d0eb9a6', 2))) + sub_4d0eb9a6[address(arg1)].field_512].field_0 = 0
    sub_4d0eb9a6[address(arg1)].field_512--
    sub_4a141b29[address(arg1)][stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor2', 2))) + stor2[address(arg1)].field_512].field_0].field_256 = sub_4a141b29[address(arg1)][arg2].field_256
    if sub_4d0eb9a6[address(arg1)][3][address(msg.sender)].field_0 < 1:
        revert with 'NH{q', 17
    if sub_4d0eb9a6[address(arg1)][3][address(msg.sender)].field_0 - 1 >= sub_4d0eb9a6[address(arg1)][3][address(msg.sender)].field_0:
        revert with 'NH{q', 50
    if sub_4d0eb9a6[address(arg1)][3][address(msg.sender)].field_0 < 1:
        revert with 'NH{q', 17
    if sub_4a141b29[address(arg1)][arg2].field_512 != sub_4d0eb9a6[address(arg1)][3][address(msg.sender)].field_0 - 1:
        if sub_4a141b29[address(arg1)][arg2].field_512 >= sub_4d0eb9a6[address(arg1)][3][address(msg.sender)].field_0:
            revert with 'NH{q', 50
        sub_4d0eb9a6[address(arg1)][3][address(msg.sender)][stor1[address(arg1)][arg2].field_512].field_0 = sub_4d0eb9a6[address(arg1)][3][address(msg.sender)][sub_4d0eb9a6[address(arg1)][3][address(msg.sender)].field_0].field_0
    if not sub_4d0eb9a6[address(arg1)][3][address(msg.sender)].field_0:
        revert with 'NH{q', 49
    sub_4d0eb9a6[address(arg1)][3][address(msg.sender)][sub_4d0eb9a6[address(arg1)][3][address(msg.sender)].field_0].field_0 = 0
    sub_4d0eb9a6[address(arg1)][3][address(msg.sender)].field_0--
    sub_4a141b29[address(arg1)][stor2[address(arg1)][3][address(msg.sender)][stor2[address(arg1)][3][address(msg.sender)].field_0].field_0].field_512 = sub_4a141b29[address(arg1)][arg2].field_512
    sub_4a141b29[address(arg1)][arg2].field_0 = 0
    sub_4a141b29[address(arg1)][arg2].field_256 = 0
    sub_4a141b29[address(arg1)][arg2].field_512 = 0
    sub_4a141b29[address(arg1)][arg2].field_768 = 0
    require ext_code.size(arg1)
    call arg1.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xd0bb5421: address(arg1), arg2, msg.sender
}



}
