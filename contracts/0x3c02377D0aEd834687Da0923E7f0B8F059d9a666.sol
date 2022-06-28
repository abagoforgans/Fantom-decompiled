contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 price;
uint256 sub_0f8fc9df;
uint256 discount;
uint256 stor4;
array of struct stor5;
address stor6;
address stor7;

function sub_0a840d68(?) payable {
    return stor5.length
}

function sub_0f8fc9df(?) payable {
    return sub_0f8fc9df
}

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function discount() payable {
    return discount
}

function owner() payable {
    return owner
}

function price() payable {
    return price
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
    price = arg1
}

function setDiscount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    discount = arg1
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
    sub_0f8fc9df = 0
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
    if sub_0f8fc9df > -arg2 - 1:
        revert with 'NH{q', 17
    sub_0f8fc9df += arg2
}

function withdrawFee(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_4f505577(?) payable {
    if stor5.length > test266151307():
        revert with 'NH{q', 65
    if stor5.length:
        mem[128 len 32 * stor5.length] = call.data[calldata.size len 32 * stor5.length]
    if stor5.length > test266151307():
        revert with 'NH{q', 65
    mem[(32 * stor5.length) + 128] = stor5.length
    if stor5.length:
        mem[(32 * stor5.length) + 160 len 32 * stor5.length] = call.data[calldata.size len 32 * stor5.length]
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        if idx >= stor5.length:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = stor5[idx].field_0
        if idx >= mem[(32 * stor5.length) + 128]:
            revert with 'NH{q', 50
        mem[(32 * idx) + (32 * stor5.length) + 160] = stor5[idx].field_256
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(64 * stor5.length) + 160] = 64
    mem[(64 * stor5.length) + 224] = stor5.length
    mem[(64 * stor5.length) + 256 len 32 * stor5.length] = mem[128 len 32 * stor5.length]
    mem[(64 * stor5.length) + 192] = (32 * stor5.length) + 96
    mem[(98 * stor5.length) + 256] = mem[(32 * stor5.length) + 128]
    mem[(98 * stor5.length) + 288 len 32 * mem[(32 * stor5.length) + 128]] = mem[(32 * stor5.length) + 160 len 32 * mem[(32 * stor5.length) + 128]]
    return memory
      from (64 * stor5.length) + 160
       len (161 * stor5.length) + (32 * mem[(32 * stor5.length) + 128]) + 128
}

function sub_778743ee(?) payable {
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'contract not allowed'
    if tx.origin != msg.sender:
        revert with 0, 'proxy contract not allowed'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    if sub_0f8fc9df <= 0:
        revert with 0, 'All cards are sold out.'
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = price
    require ext_code.size(stor6)
    call stor6.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), price
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 128] = block.difficulty
    mem[ceil32(return_data.size) + 160] = block.timestamp
    mem[ceil32(return_data.size) + 192] = address(msg.sender)
    mem[ceil32(return_data.size) + 212] = stor4
    mem[ceil32(return_data.size) + 96] = 116
    mem[64] = ceil32(return_data.size) + 244
    stor4 = sha3(block.difficulty, block.timestamp, msg.sender, stor4)
    if not sub_0f8fc9df:
        revert with 'NH{q', 18
    require var108001 < stor5.length
    mem[0] = 5
    if var108002 > -stor5[var108001].field_256 - 1:
        revert with 'NH{q', 17
    if var108002 > sha3(block.difficulty, block.timestamp, msg.sender, stor4) % sub_0f8fc9df:
        if var108001 == -1:
            revert with 'NH{q', 17
        var108001 = var108001 + 1
        var108002 = var108002 + stor5[var108001].field_256
        continue 
    if sha3(block.difficulty, block.timestamp, msg.sender, stor4) % sub_0f8fc9df >= var108002 + stor5[var108001].field_256:
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
    if sub_0f8fc9df < 1:
        revert with 'NH{q', 17
    sub_0f8fc9df--
    require ext_code.size(stor7)
    call stor7.mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
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
    if sub_0f8fc9df < 9:
        revert with 0, 'Remaining cards are less than 9'
    if price and 9 > -1 / price:
        revert with 'NH{q', 17
    if 9 * price and discount > -1 / 9 * price:
        revert with 'NH{q', 17
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = 9 * price * discount / 100
    require ext_code.size(stor6)
    call stor6.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 9 * price * discount / 100
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
        mem[mem[64] + 116] = stor4
        _29 = mem[64]
        mem[mem[64]] = 116
        mem[64] = mem[64] + 148
        _31 = sha3(mem[_29 + 32 len mem[_29]])
        stor4 = sha3(mem[_29 + 32 len mem[_29]])
        if not sub_0f8fc9df:
            revert with 'NH{q', 18
        require var135001 < stor5.length
        mem[0] = 5
        if var135002 > -stor5[var135001].field_256 - 1:
            revert with 'NH{q', 17
        if var135002 > _31 % sub_0f8fc9df:
            if var135001 == -1:
                revert with 'NH{q', 17
            var135001 = var135001 + 1
            var135002 = var135002 + stor5[var135001].field_256
            continue 
        if _31 % sub_0f8fc9df >= var135002 + stor5[var135001].field_256:
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
        if sub_0f8fc9df < 1:
            revert with 'NH{q', 17
        sub_0f8fc9df--
        mem[_25 + 184] = stor5[var135001].field_0
        mem[_25 + 216] = 1
        mem[_25 + 248] = 128
        mem[_25 + 280] = 0
        require ext_code.size(stor7)
        call stor7.mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
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
