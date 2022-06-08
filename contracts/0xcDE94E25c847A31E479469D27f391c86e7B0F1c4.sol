contract main {




// =====================  Runtime code  =====================


address owner;
address sub_b4f6f509Address;
array of uint256 sub_d38b576d;

function owner() payable {
    return owner
}

function sub_b4f6f509(?) payable {
    return sub_b4f6f509Address
}

function sub_d38b576d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_d38b576d.length
    return sub_d38b576d[arg1]
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

function sub_8649fe86(?) payable {
    idx = 0
    while idx < sub_d38b576d.length:
        mem[0] = 2
        mem[96] = 0x9024944800000000000000000000000000000000000000000000000000000000
        mem[100] = sub_d38b576d[idx]
        require ext_code.size(sub_b4f6f509Address)
        call sub_b4f6f509Address.level_up(uint256 arg1) with:
             gas gas_remaining wei
            args sub_d38b576d[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_3d81b8fa(?) payable {
    idx = 0
    while idx < sub_d38b576d.length:
        mem[0] = 2
        mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[100] = sub_d38b576d[idx]
        require ext_code.size(sub_b4f6f509Address)
        call sub_b4f6f509Address.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args sub_d38b576d[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_4be6e38b(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        sub_d38b576d.length++
        mem[0] = 2
        sub_d38b576d[sub_d38b576d.length] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
