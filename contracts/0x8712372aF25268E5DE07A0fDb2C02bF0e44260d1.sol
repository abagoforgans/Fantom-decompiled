contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 sub_bd42b014;
array of struct stor5;
address stor6;
address stor7;

function sub_0a840d68(?) payable {
    return stor5.length
}

function paused() payable {
    return bool(uint8(stor0.field_160))
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

function setPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
}

function setDiscount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function sub_4fb90da0(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Paused(msg.sender);
}

function sub_fb52fc9a(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor0.field_160):
        revert with 0, 'Pausable: not paused'
    Mask(96, 0, stor0.field_160) = 0
    emit Unpaused(msg.sender);
}

function sub_6b1bb63e(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5.length = 0
    idx = 0
    while 2 * stor5.length > idx:
        stor5[idx].field_0 = 0
        stor5[idx].field_256 = 0
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
    if arg1 >= stor5.length:
        revert with 'NH{q', 50
    stor5[arg1].field_0 = arg2
    stor5[arg1].field_256 = arg3
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
    stor5.length++
    stor5[stor5.length].field_0 = arg1
    stor5[stor5.length].field_256 = arg2
    if sub_bd42b014 > -arg2 - 1:
        revert with 'NH{q', 17
    sub_bd42b014 += arg2
}

function sub_4f505577(?) payable {
    mem[64] = (32 * stor5.length) + 128
    mem[96] = stor5.length
    s = 128
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        _11 = mem[64]
        mem[64] = mem[64] + 64
        mem[_11] = stor5[idx].field_0
        mem[_11 + 32] = stor5[idx].field_256
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

function sub_778743ee(?) payable {
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'contract not allowed'
    if tx.origin != msg.sender:
        revert with 0, 'proxy contract not allowed'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    if sub_bd42b014 <= 0:
        revert with 0, 'All cards are sold out.'
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = stor1
    require ext_code.size(stor6)
    call stor6.0x23b872dd with:
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
    mem[ceil32(return_data.size) + 212] = stor3
    mem[ceil32(return_data.size) + 96] = 116
    mem[64] = ceil32(return_data.size) + 244
    stor3 = sha3(block.difficulty, block.timestamp, msg.sender, stor3)
    if not sub_bd42b014:
        revert with 'NH{q', 18
    require var108001 < stor5.length
    mem[0] = 5
    if var108002 > -stor5[var108001].field_256 - 1:
        revert with 'NH{q', 17
    if var108002 > sha3(block.difficulty, block.timestamp, msg.sender, stor3) % sub_bd42b014:
        if var108001 == -1:
            revert with 'NH{q', 17
        var108001 = var108001 + 1
        var108002 = var108002 + stor5[var108001].field_256
        continue 
    if sha3(block.difficulty, block.timestamp, msg.sender, stor3) % sub_bd42b014 >= var108002 + stor5[var108001].field_256:
        if var108002 > -stor5[var108001].field_256 - 1:
            revert with 'NH{q', 17
        if var108001 == -1:
            revert with 'NH{q', 17
        var108001 = var108001 + 1
        var108002 = var108002 + stor5[var108001].field_256
        continue 
    if stor5[var108001].field_256 < 1:
        revert with 'NH{q', 17
    stor5[var108001].field_256--
    if sub_bd42b014 < 1:
        revert with 'NH{q', 17
    sub_bd42b014--
    require ext_code.size(stor7)
    call stor7.0x731133e9 with:
         gas gas_remaining wei
        args msg.sender, stor5[var108001].field_0, 1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x35250263: msg.sender, stor5[var108001].field_0
    return stor5[var108001].field_0
}

function sub_e9a0986b(?) payable {
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'contract not allowed'
    if tx.origin != msg.sender:
        revert with 0, 'proxy contract not allowed'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    if sub_bd42b014 < 9:
        revert with 0, 'Remaining cards are less than 9'
    if stor1 and 9 > -1 / stor1:
        revert with 'NH{q', 17
    if 9 * stor1 and stor2 > -1 / 9 * stor1:
        revert with 'NH{q', 17
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = 9 * stor1 * stor2 / 100
    require ext_code.size(stor6)
    call stor6.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 9 * stor1 * stor2 / 100
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 9
    mem[64] = ceil32(return_data.size) + 416
    mem[ceil32(return_data.size) + 128 len 288] = call.data[calldata.size len 288]
    idx = 0
    while idx < 9:
        _25 = mem[64]
        mem[mem[64] + 32] = block.difficulty
        mem[mem[64] + 64] = block.timestamp
        mem[mem[64] + 96] = address(msg.sender)
        mem[mem[64] + 116] = stor3
        _29 = mem[64]
        mem[mem[64]] = 116
        mem[64] = mem[64] + 148
        _31 = sha3(mem[_29 + 32 len mem[_29]])
        stor3 = sha3(mem[_29 + 32 len mem[_29]])
        if not sub_bd42b014:
            revert with 'NH{q', 18
        require var135001 < stor5.length
        mem[0] = 5
        if var135002 > -stor5[var135001].field_256 - 1:
            revert with 'NH{q', 17
        if var135002 > _31 % sub_bd42b014:
            if var135001 == -1:
                revert with 'NH{q', 17
            var135001 = var135001 + 1
            var135002 = var135002 + stor5[var135001].field_256
            continue 
        if _31 % sub_bd42b014 >= var135002 + stor5[var135001].field_256:
            if var135002 > -stor5[var135001].field_256 - 1:
                revert with 'NH{q', 17
            if var135001 == -1:
                revert with 'NH{q', 17
            var135001 = var135001 + 1
            var135002 = var135002 + stor5[var135001].field_256
            continue 
        if stor5[var135001].field_256 < 1:
            revert with 'NH{q', 17
        stor5[var135001].field_256--
        if sub_bd42b014 < 1:
            revert with 'NH{q', 17
        sub_bd42b014--
        mem[_25 + 184] = stor5[var135001].field_0
        mem[_25 + 216] = 1
        mem[_25 + 248] = 128
        mem[_25 + 280] = 0
        require ext_code.size(stor7)
        call stor7.0x731133e9 with:
             gas gas_remaining wei
            args msg.sender, stor5[var135001].field_0, 1, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_25 + 148] = msg.sender
        mem[_25 + 180] = stor5[var135001].field_0
        emit 0x35250263: msg.sender, stor5[var135001].field_0
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = stor5[var135001].field_0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _26 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64 len 32 * _26] = mem[ceil32(return_data.size) + 128 len 32 * _26]
    return 32, mem[mem[64] + 32 len (32 * _26) + 32]
}



}
