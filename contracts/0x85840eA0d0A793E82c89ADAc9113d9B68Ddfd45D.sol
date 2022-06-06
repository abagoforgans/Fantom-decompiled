contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 stor2;
uint256 sub_bd42b014;
array of struct stor4;
address stor5;
address stor6;

function sub_0a840d68(?) payable {
    return stor4.length
}

function owner() payable {
    return owner
}

function sub_bd42b014(?) payable {
    return sub_bd42b014
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

function setCardPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
}

function sub_6b1bb63e(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4.length = 0
    idx = 0
    while 2 * stor4.length > idx:
        stor4[idx].field_0 = 0
        stor4[idx].field_256 = 0
        idx = idx + 2
        continue 
    sub_bd42b014 = 0
}

function sub_e926aab3(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    stor4[arg1].field_0 = arg2
    stor4[arg1].field_256 = arg3
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

function addCard(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4.length++
    stor4[stor4.length].field_0 = arg1
    stor4[stor4.length].field_256 = arg2
    if sub_bd42b014 > -arg2 - 1:
        revert with 'NH{q', 17
    sub_bd42b014 += arg2
}

function sub_4f505577(?) payable {
    mem[64] = (32 * stor4.length) + 128
    mem[96] = stor4.length
    s = 128
    idx = 0
    while idx < stor4.length:
        mem[0] = 4
        _11 = mem[64]
        mem[64] = mem[64] + 64
        mem[_11] = stor4[idx].field_0
        mem[_11 + 32] = stor4[idx].field_256
        mem[s] = _11
        s = s + 32
        idx = idx + 1
        continue 
    _12 = mem[64]
    mem[mem[64]] = 32
    _13 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _13:
        _18 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_18 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _12 + (64 * _13) + -mem[64] + 64
}

function buyBlackBox() payable {
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'contract not allowed'
    if tx.origin != msg.sender:
        revert with 0, 'proxy contract not allowed'
    if sub_bd42b014 <= 0:
        revert with 0, 'All cards are sold out.'
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = stor1
    require ext_code.size(stor5)
    call stor5.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), stor1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 128] = block.difficulty
    mem[ceil32(return_data.size) + 160] = block.timestamp
    mem[ceil32(return_data.size) + 192] = address(msg.sender)
    mem[ceil32(return_data.size) + 212] = stor2
    mem[ceil32(return_data.size) + 96] = 116
    mem[64] = ceil32(return_data.size) + 244
    stor2 = sha3(block.difficulty, block.timestamp, msg.sender, stor2)
    if not sub_bd42b014:
        revert with 'NH{q', 18
    require var104001 < stor4.length
    mem[0] = 4
    if var104002 > -stor4[var104001].field_256 - 1:
        revert with 'NH{q', 17
    if var104002 > sha3(block.difficulty, block.timestamp, msg.sender, stor2) % sub_bd42b014:
        if var104001 == -1:
            revert with 'NH{q', 17
        var104001 = var104001 + 1
        var104002 = var104002 + stor4[var104001].field_256
        continue 
    if sha3(block.difficulty, block.timestamp, msg.sender, stor2) % sub_bd42b014 >= var104002 + stor4[var104001].field_256:
        if var104002 > -stor4[var104001].field_256 - 1:
            revert with 'NH{q', 17
        if var104001 == -1:
            revert with 'NH{q', 17
        var104001 = var104001 + 1
        var104002 = var104002 + stor4[var104001].field_256
        continue 
    if stor4[var104001].field_256 < 1:
        revert with 'NH{q', 17
    stor4[var104001].field_256--
    if sub_bd42b014 < 1:
        revert with 'NH{q', 17
    sub_bd42b014--
    require ext_code.size(stor6)
    call stor6.0x731133e9 with:
         gas gas_remaining wei
        args msg.sender, stor4[var104001].field_0, 1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x35250263: msg.sender, stor4[var104001].field_0
}



}
