contract main {




// =====================  Runtime code  =====================


address owner;
uint8 sub_fbdcd7c8; offset 160
uint8 stor1; offset 168
address sub_9e3b6486Address;
array of address sub_8c3b8688;
array of address sub_6ad1177d;
mapping of uint8 stor4;

function sub_6ad1177d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_6ad1177d.length
    return sub_6ad1177d[arg1]
}

function sub_8c3b8688(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_8c3b8688.length
    return sub_8c3b8688[arg1]
}

function owner() payable {
    return owner
}

function sub_9e3b6486(?) payable {
    return sub_9e3b6486Address
}

function sub_ae108b5b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return bool(stor4[arg1])
}

function sub_fbdcd7c8(?) payable {
    return bool(sub_fbdcd7c8)
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

function draw() payable {
    mem[64] = 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_fbdcd7c8:
        revert with 0, 'already archived'
    idx = 0
    while uint8(idx) < 5:
        mem[mem[64] + 32] = block.difficulty
        mem[mem[64] + 64] = block.timestamp
        _14 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        _16 = sha3(mem[_14 + 32 len mem[_14]])
        if not sub_6ad1177d.length:
            revert with 0, 18
        mem[0] = uint8(sha3(mem[_14 + 32 len mem[_14]]) % sub_6ad1177d.length)
        mem[32] = 4
        if stor4[mem[0]]:
            idx = idx
            continue 
        mem[32] = 4
        stor4[_16 % stor3.length << 248] = 1
        if uint8(_16 % sub_6ad1177d.length) >= sub_6ad1177d.length:
            revert with 0, 50
        sub_8c3b8688.length++
        mem[0] = 2
        sub_8c3b8688[sub_8c3b8688.length] = sub_6ad1177d[uint8(_16 % sub_6ad1177d.length)]
        if 1 > -uint8(idx) + 255:
            revert with 0, 17
        idx = uint8(idx) + 1
        continue 
    sub_fbdcd7c8 = 1
}

function distributeRewards() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(sub_fbdcd7c8) != 1:
        revert with 0, 'not archived'
    if sub_8c3b8688.length != 5:
        revert with 0, 'not 5 winners'
    if stor1:
        revert with 0, 'already distributed'
    mem[100] = this.address
    require ext_code.size(sub_9e3b6486Address)
    staticcall sub_9e3b6486Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if ext_call.return_data[0] < 70000000 * 10^18:
        revert with 0, 'rewards are not enough'
    idx = 0
    while idx < 5:
        if idx >= sub_8c3b8688.length:
            revert with 0, 50
        mem[0] = 2
        mem[mem[64] + 4] = sub_8c3b8688[idx]
        mem[mem[64] + 36] = 70000000 * 10^18
        require ext_code.size(sub_9e3b6486Address)
        call sub_9e3b6486Address.0xa9059cbb with:
             gas gas_remaining wei
            args sub_8c3b8688[idx], 70000000 * 10^18
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _23 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_23] == bool(mem[_23])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor1 = 1
}



}
