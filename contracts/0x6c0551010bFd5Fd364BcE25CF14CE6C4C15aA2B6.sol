contract main {




// =====================  Runtime code  =====================


uint8 paused; offset 160
uint128 stor0; offset 160
address owner;
uint256 stor1;
uint256 price;
uint256 sub_bd42b014;
uint256 discount;
address sub_7419f946Address;
address sub_e64ce988Address;
uint256 stor6;
array of struct stor7;

function sub_0a840d68(?) payable {
    return stor7.length
}

function paused() payable {
    return bool(paused)
}

function discount() payable {
    return discount
}

function sub_7419f946(?) payable {
    return sub_7419f946Address
}

function owner() payable {
    return owner
}

function price() payable {
    return uint256(price)
}

function sub_bd42b014(?) payable {
    return sub_bd42b014
}

function sub_e64ce988(?) payable {
    return sub_e64ce988Address
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

function setDiscount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    discount = arg1
}

function setPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(price) = arg1
}

function sub_4fb90da0(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function sub_fb52fc9a(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function sub_6b1bb63e(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7.length = 0
    idx = 0
    while 2 * stor7.length > idx:
        stor7[idx].field_0 = 0
        stor7[idx].field_256 = 0
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
    if arg1 >= stor7.length:
        revert with 'NH{q', 50
    stor7[arg1].field_0 = arg2
    stor7[arg1].field_256 = arg3
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
    stor7.length++
    stor7[stor7.length].field_0 = arg1
    stor7[stor7.length].field_256 = arg2
    if sub_bd42b014 > -arg2 - 1:
        revert with 'NH{q', 17
    sub_bd42b014 += arg2
}

function withdrawFee(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_7419f946Address)
    call sub_7419f946Address.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_4f505577(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor7.length > test266151307():
        revert with 'NH{q', 65
    if stor7.length:
        mem[128 len 32 * stor7.length] = call.data[calldata.size len 32 * stor7.length]
    if stor7.length > test266151307():
        revert with 'NH{q', 65
    mem[(32 * stor7.length) + 128] = stor7.length
    if stor7.length:
        mem[(32 * stor7.length) + 160 len 32 * stor7.length] = call.data[calldata.size len 32 * stor7.length]
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        if idx >= stor7.length:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = stor7[idx].field_0
        if idx >= mem[(32 * stor7.length) + 128]:
            revert with 'NH{q', 50
        mem[(32 * idx) + (32 * stor7.length) + 160] = stor7[idx].field_256
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(64 * stor7.length) + 160] = 64
    mem[(64 * stor7.length) + 224] = stor7.length
    mem[(64 * stor7.length) + 256 len 32 * stor7.length] = mem[128 len 32 * stor7.length]
    mem[(64 * stor7.length) + 192] = (32 * stor7.length) + 96
    mem[(98 * stor7.length) + 256] = mem[(32 * stor7.length) + 128]
    mem[(98 * stor7.length) + 288 len 32 * mem[(32 * stor7.length) + 128]] = mem[(32 * stor7.length) + 160 len 32 * mem[(32 * stor7.length) + 128]]
    return memory
      from (64 * stor7.length) + 160
       len (161 * stor7.length) + (32 * mem[(32 * stor7.length) + 128]) + 128
}

function sub_778743ee(?) payable {
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'contract not allowed'
    if tx.origin != msg.sender:
        revert with 0, 'proxy contract not allowed'
    if paused:
        revert with 0, 'Pausable: paused'
    if sub_bd42b014 <= 0:
        revert with 0, 'All cards are sold out.'
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = uint256(price)
    require ext_code.size(sub_7419f946Address)
    call sub_7419f946Address.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), uint256(price)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 128] = block.difficulty
    mem[ceil32(return_data.size) + 160] = block.timestamp
    mem[ceil32(return_data.size) + 192] = address(msg.sender)
    mem[ceil32(return_data.size) + 212] = stor6
    mem[ceil32(return_data.size) + 96] = 116
    mem[64] = ceil32(return_data.size) + 244
    stor6 = sha3(block.difficulty, block.timestamp, msg.sender, stor6)
    if not sub_bd42b014:
        revert with 'NH{q', 18
    require var108001 < stor7.length
    mem[0] = 7
    if var108002 > -stor7[var108001].field_256 - 1:
        revert with 'NH{q', 17
    if var108002 > sha3(block.difficulty, block.timestamp, msg.sender, stor6) % sub_bd42b014:
        if var108001 == -1:
            revert with 'NH{q', 17
        var108001 = var108001 + 1
        var108002 = var108002 + stor7[var108001].field_256
        continue 
    if sha3(block.difficulty, block.timestamp, msg.sender, stor6) % sub_bd42b014 >= var108002 + stor7[var108001].field_256:
        if var108002 > -stor7[var108001].field_256 - 1:
            revert with 'NH{q', 17
        if var108001 == -1:
            revert with 'NH{q', 17
        var108001 = var108001 + 1
        var108002 = var108002 + stor7[var108001].field_256
        continue 
    if stor7[var108001].field_256 < 1:
        revert with 'NH{q', 17
    stor7[var108001].field_256--
    if sub_bd42b014 < 1:
        revert with 'NH{q', 17
    sub_bd42b014--
    require ext_code.size(sub_e64ce988Address)
    call sub_e64ce988Address.mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, stor7[var108001].field_0, 1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x35250263: msg.sender, stor7[var108001].field_0
    return stor7[var108001].field_0
}

function sub_e9a0986b(?) payable {
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'contract not allowed'
    if tx.origin != msg.sender:
        revert with 0, 'proxy contract not allowed'
    if paused:
        revert with 0, 'Pausable: paused'
    if sub_bd42b014 < 8:
        revert with 0, 'Remaining cards are less than 8'
    if uint256(price) and 8 > -1 / uint256(price):
        revert with 'NH{q', 17
    if Mask(253, 0, stor1) and discount > -1 / 8 * uint256(price):
        revert with 'NH{q', 17
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = 8 * uint256(price) * discount / 100
    require ext_code.size(sub_7419f946Address)
    call sub_7419f946Address.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 8 * uint256(price) * discount / 100
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 8
    mem[64] = ceil32(return_data.size) + 384
    mem[ceil32(return_data.size) + 128 len 256] = call.data[calldata.size len 256]
    idx = 0
    while idx < 8:
        _25 = mem[64]
        mem[mem[64] + 32] = block.difficulty
        mem[mem[64] + 64] = block.timestamp
        mem[mem[64] + 96] = address(msg.sender)
        mem[mem[64] + 116] = stor6
        _29 = mem[64]
        mem[mem[64]] = 116
        mem[64] = mem[64] + 148
        _31 = sha3(mem[_29 + 32 len mem[_29]])
        stor6 = sha3(mem[_29 + 32 len mem[_29]])
        if not sub_bd42b014:
            revert with 'NH{q', 18
        require var135001 < stor7.length
        mem[0] = 7
        if var135002 > -stor7[var135001].field_256 - 1:
            revert with 'NH{q', 17
        if var135002 > _31 % sub_bd42b014:
            if var135001 == -1:
                revert with 'NH{q', 17
            var135001 = var135001 + 1
            var135002 = var135002 + stor7[var135001].field_256
            continue 
        if _31 % sub_bd42b014 >= var135002 + stor7[var135001].field_256:
            if var135002 > -stor7[var135001].field_256 - 1:
                revert with 'NH{q', 17
            if var135001 == -1:
                revert with 'NH{q', 17
            var135001 = var135001 + 1
            var135002 = var135002 + stor7[var135001].field_256
            continue 
        if stor7[var135001].field_256 < 1:
            revert with 'NH{q', 17
        stor7[var135001].field_256--
        if sub_bd42b014 < 1:
            revert with 'NH{q', 17
        sub_bd42b014--
        mem[_25 + 184] = stor7[var135001].field_0
        mem[_25 + 216] = 1
        mem[_25 + 248] = 128
        mem[_25 + 280] = 0
        require ext_code.size(sub_e64ce988Address)
        call sub_e64ce988Address.mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, stor7[var135001].field_0, 1, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_25 + 148] = msg.sender
        mem[_25 + 180] = stor7[var135001].field_0
        emit 0x35250263: msg.sender, stor7[var135001].field_0
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = stor7[var135001].field_0
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
