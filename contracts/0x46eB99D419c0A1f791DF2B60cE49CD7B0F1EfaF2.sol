contract main {




// =====================  Runtime code  =====================


#
#  - sub_2fb7100e(?)
#
address owner;
address rarityAddress;
address sub_d486adccAddress;
array of uint256 sub_284b91bd;
uint256 sub_dfad1b51;
mapping of uint8 stor5;
mapping of uint256 stor6;

function sub_284b91bd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_284b91bd.length
    return sub_284b91bd[arg1]
}

function owner() payable {
    return owner
}

function sub_d486adcc(?) payable {
    return sub_d486adccAddress
}

function sub_dc8e7c67(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function sub_dfad1b51(?) payable {
    return sub_dfad1b51
}

function rarity() payable {
    return rarityAddress
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
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_b2d33a78(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(rarityAddress)
    call rarityAddress.0xa22cb465 with:
         gas gas_remaining wei
        args address(arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3d81b8fa(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < sub_dfad1b51:
        if idx >= sub_284b91bd.length:
            revert with 'NH{q', 50
        mem[0] = 3
        mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[100] = sub_284b91bd[idx]
        require ext_code.size(rarityAddress)
        call rarityAddress.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args sub_284b91bd[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_5e38b1f4(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Contract not owner of summoner'
    if stor5[arg1]:
        revert with 0, 'Already in party'
    sub_284b91bd.length++
    sub_284b91bd[sub_284b91bd.length] = arg1
    stor5[arg1] = 1
    stor6[arg1] = sub_dfad1b51
    if sub_dfad1b51 == -1:
        revert with 'NH{q', 17
    sub_dfad1b51++
}

function sub_4fae4111(?) payable {
    if owner != msg.sender:
        require ext_code.size(msg.sender)
        staticcall msg.sender.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != owner:
            revert with 0, 'Only owner or owner party'
    idx = 0
    while idx < sub_dfad1b51:
        if idx >= sub_284b91bd.length:
            revert with 'NH{q', 50
        mem[0] = sub_284b91bd[idx]
        mem[32] = 5
        stor5[stor3[idx]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    sub_284b91bd.length = 0
    s = sha3(3)
    while sha3(3) + sub_284b91bd.length > sub_dfad1b51:
        stor4 = 0
        s = sub_dfad1b51 + 1
        continue 
    sub_dfad1b51 = 0
}

function sub_40b9033e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.next_summoner() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _53 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _54 = mem[_53]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        require ext_code.size(rarityAddress)
        call rarityAddress.summon(uint256 arg1) with:
             gas gas_remaining wei
            args mem[(32 * idx) + 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[mem[64] + 4] = mem[_53]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.0x6352211e with:
                gas gas_remaining wei
               args _54
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _63 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_63] == mem[_63 + 12 len 20]
        if mem[_63 + 12 len 20] != this.address:
            revert with 0, 'Contract not owner of summoner'
        if stor5[_54]:
            revert with 0, 'Already in party'
        sub_284b91bd.length++
        sub_284b91bd[sub_284b91bd.length] = _54
        mem[0] = _54
        stor5[_54] = 1
        mem[32] = 6
        stor6[_54] = sub_dfad1b51
        if sub_dfad1b51 == -1:
            revert with 'NH{q', 17
        sub_dfad1b51++
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_eb572312(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xdfad1b51 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x284b91bd with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _32 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _33 = mem[_32]
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _33
        require ext_code.size(rarityAddress)
        call rarityAddress.0x42842e0e with:
             gas gas_remaining wei
            args address(arg1), this.address, _33
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[mem[64] + 4] = _33
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.0x6352211e with:
                gas gas_remaining wei
               args _33
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _40 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_40] == mem[_40 + 12 len 20]
        if mem[_40 + 12 len 20] != this.address:
            revert with 0, 'Contract not owner of summoner'
        if stor5[_33]:
            revert with 0, 'Already in party'
        sub_284b91bd.length++
        sub_284b91bd[sub_284b91bd.length] = _33
        mem[0] = _33
        stor5[_33] = 1
        mem[32] = 6
        stor6[_33] = sub_dfad1b51
        if sub_dfad1b51 == -1:
            revert with 'NH{q', 17
        sub_dfad1b51++
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0x4fae4111 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8649fe86(?) payable {
    mem[64] = 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < sub_dfad1b51:
        if idx >= sub_284b91bd.length:
            revert with 'NH{q', 50
        mem[0] = 3
        mem[mem[64] + 4] = sub_284b91bd[idx]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.level(uint256 arg1) with:
                gas gas_remaining wei
               args sub_284b91bd[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _26 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _27 = mem[_26]
        mem[mem[64] + 4] = mem[_26]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.xp_required(uint256 arg1) with:
                gas gas_remaining wei
               args _27
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _30 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _31 = mem[_30]
        if idx >= sub_284b91bd.length:
            revert with 'NH{q', 50
        mem[0] = 3
        mem[mem[64] + 4] = sub_284b91bd[idx]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.xp(uint256 arg1) with:
                gas gas_remaining wei
               args sub_284b91bd[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _35 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_35] >= _31:
            if idx >= sub_284b91bd.length:
                revert with 'NH{q', 50
            require ext_code.size(rarityAddress)
            call rarityAddress.level_up(uint256 arg1) with:
                 gas gas_remaining wei
                args sub_284b91bd[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= sub_284b91bd.length:
                revert with 'NH{q', 50
            mem[0] = 3
            mem[mem[64]] = 0x379607f500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_284b91bd[idx]
            require ext_code.size(sub_d486adccAddress)
            call sub_d486adccAddress.claim(uint256 arg1) with:
                 gas gas_remaining wei
                args sub_284b91bd[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
