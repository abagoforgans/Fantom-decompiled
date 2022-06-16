contract main {




// =====================  Runtime code  =====================


address owner;
address rarityAddress;
address sub_d486adccAddress;
array of uint256 sub_4a2fc9e8;
mapping of uint256 stor4;

function sub_4a2fc9e8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= sub_4a2fc9e8.length:
        revert with 'NH{q', 50
    return sub_4a2fc9e8[arg1]
}

function owner() payable {
    return owner
}

function sub_d486adcc(?) payable {
    return sub_d486adccAddress
}

function sub_dfad1b51(?) payable {
    return sub_4a2fc9e8.length
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
    require arg3 == arg3
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
    call rarityAddress.setApprovalForAll(address arg1, bool arg2) with:
         gas gas_remaining wei
        args address(arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3d81b8fa(?) payable {
    mem[64] = 96
    if var60002 >= sub_4a2fc9e8.length:
    if var66001 >= sub_4a2fc9e8.length:
        revert with 'NH{q', 50
    mem[0] = 3
    mem[96] = 0xeed2502800000000000000000000000000000000000000000000000000000000
    mem[var80003] = var80001
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.mem[var86003 len 4] with:
            gas gas_remaining wei
           args mem[var86003 + 4 len var86004 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
}

function sub_8649fe86(?) payable {
    mem[64] = 96
    if var99002 >= sub_4a2fc9e8.length:
    if var105001 >= sub_4a2fc9e8.length:
        revert with 'NH{q', 50
    mem[0] = 3
    mem[96] = 0x5c58df200000000000000000000000000000000000000000000000000000000
    mem[var119003] = var119001
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.mem[var125003 len 4] with:
            gas gas_remaining wei
           args mem[var125003 + 4 len var125004 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 66
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x4a2fc9e8 with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _18 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _19 = mem[_18]
        require mem[_18] == mem[_18]
        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _19
        require ext_code.size(rarityAddress)
        call rarityAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg1), address(this.address), _19
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = _19
        mem[32] = 4
        if not stor4[_19]:
            sub_4a2fc9e8.length++
            sub_4a2fc9e8[sub_4a2fc9e8.length] = _19
            mem[0] = _19
            mem[32] = 4
            stor4[_19] = sub_4a2fc9e8.length
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_e92526bf(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _32 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args _32
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _35 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_35] == mem[_35 + 12 len 20]
        if mem[_35 + 12 len 20] == this.address:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 4
            if not stor4[mem[(32 * idx) + 128]]:
                sub_4a2fc9e8.length++
                sub_4a2fc9e8[sub_4a2fc9e8.length] = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                stor4[mem[(32 * idx) + 128]] = sub_4a2fc9e8.length
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_4fae4111(?) payable {
    mem[64] = 96
    if msg.sender == owner:
        if var52002 >= sub_4a2fc9e8.length:
            sub_4a2fc9e8.length = 0
            idx = 0
            while sub_4a2fc9e8.length > idx:
                sub_4a2fc9e8[idx] = 0
                idx = idx + 1
                continue 
        if 0 >= sub_4a2fc9e8.length:
            revert with 'NH{q', 50
        mem[0] = 3
        mem[96] = 0x6352211e00000000000000000000000000000000000000000000000000000000
        mem[var72003] = var72001
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.mem[var78003 len 4] with:
                gas gas_remaining wei
               args mem[var78003 + 4 len var78004 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        # nil
    else:
        require ext_code.size(msg.sender)
        staticcall msg.sender.0x8da5cb5b with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != owner:
            revert with 0, 'Only owner or owner party'
        if var69002 >= sub_4a2fc9e8.length:
            sub_4a2fc9e8.length = 0
            idx = 0
            while sub_4a2fc9e8.length > idx:
                sub_4a2fc9e8[idx] = 0
                idx = idx + 1
                continue 
        if 0 >= sub_4a2fc9e8.length:
            revert with 'NH{q', 50
        mem[0] = 3
        mem[ceil32(return_data.size) + 96] = 0x6352211e00000000000000000000000000000000000000000000000000000000
        mem[var89003] = var89001
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.mem[var95003 len 4] with:
                gas gas_remaining wei
               args mem[var95003 + 4 len var95004 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        # nil
}

function sub_40b9033e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
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
        _41 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _42 = mem[_41]
        require mem[_41] == mem[_41]
        mem[0] = mem[_41]
        mem[32] = 4
        if stor4[mem[0]]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _48 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _48
            require ext_code.size(rarityAddress)
            call rarityAddress.summon(uint256 arg1) with:
                 gas gas_remaining wei
                args _48
        else:
            sub_4a2fc9e8.length++
            sub_4a2fc9e8[sub_4a2fc9e8.length] = _42
            mem[0] = _42
            mem[32] = 4
            stor4[_42] = sub_4a2fc9e8.length
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _50 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _50
            require ext_code.size(rarityAddress)
            call rarityAddress.summon(uint256 arg1) with:
                 gas gas_remaining wei
                args _50
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_f3c5d087(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _42 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args _42
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _45 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_45] == mem[_45 + 12 len 20]
        if mem[_45 + 12 len 20] != this.address:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 4
            if stor4[mem[(32 * idx) + 128]]:
                if stor4[mem[(32 * idx) + 128]] < 1:
                    revert with 'NH{q', 17
                if sub_4a2fc9e8.length < 1:
                    revert with 'NH{q', 17
                if sub_4a2fc9e8.length - 1 != stor4[mem[(32 * idx) + 128]] - 1:
                    if sub_4a2fc9e8.length - 1 >= sub_4a2fc9e8.length:
                        revert with 'NH{q', 50
                    if stor4[mem[(32 * idx) + 128]] - 1 >= sub_4a2fc9e8.length:
                        revert with 'NH{q', 50
                    sub_4a2fc9e8[stor4[mem[(32 * idx) + 128]]] = sub_4a2fc9e8[sub_4a2fc9e8.length]
                    stor4[stor3[stor3.length]] = stor4[mem[(32 * idx) + 128]]
                if not sub_4a2fc9e8.length:
                    revert with 'NH{q', 49
                sub_4a2fc9e8[sub_4a2fc9e8.length] = 0
                sub_4a2fc9e8.length--
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                stor4[mem[(32 * idx) + 128]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
