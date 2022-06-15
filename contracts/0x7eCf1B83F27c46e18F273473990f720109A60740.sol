contract main {




// =====================  Runtime code  =====================


address owner;
address rarityAddress;
address sub_d486adccAddress;
address stor3;
address stor4;
address stor5;
array of uint256 sub_4a2fc9e8;
mapping of uint256 stor7;
array of uint256 stor8;

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

function transfer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if var64002 >= sub_4a2fc9e8.length:
    if var70001 >= sub_4a2fc9e8.length:
        revert with 'NH{q', 50
    # nil
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

function sub_2fc7a385(?) payable {
    mem[64] = 96
    if var70002 >= sub_4a2fc9e8.length:
    if var76001 >= sub_4a2fc9e8.length:
        revert with 'NH{q', 50
    mem[0] = 6
    mem[96] = 0xeed2502800000000000000000000000000000000000000000000000000000000
    mem[var90003] = var90001
    require ext_code.size(stor3)
    staticcall stor3.mem[var96003 len 4] with:
            gas gas_remaining wei
           args mem[var96003 + 4 len var96004 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
}

function sub_3d81b8fa(?) payable {
    mem[64] = 96
    if var60002 >= sub_4a2fc9e8.length:
    if var66001 >= sub_4a2fc9e8.length:
        revert with 'NH{q', 50
    mem[0] = 6
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
    mem[0] = 6
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

function sub_54f4a44d(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg2:
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.next_summoner() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _20 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _21 = mem[_20]
        require mem[_20] == mem[_20]
        mem[0] = mem[_20]
        if not stor7[mem[0]]:
            sub_4a2fc9e8.length++
            sub_4a2fc9e8[sub_4a2fc9e8.length] = _21
            stor7[_21] = sub_4a2fc9e8.length
        mem[mem[64]] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        require ext_code.size(rarityAddress)
        call rarityAddress.summon(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[32] = 8
        stor8[arg1]++
        mem[0] = sha3(arg1, 8)
        stor8[arg1][stor8[arg1]] = _21
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
        staticcall rarityAddress.0x6352211e with:
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
            mem[32] = 7
            if not stor7[mem[(32 * idx) + 128]]:
                sub_4a2fc9e8.length++
                sub_4a2fc9e8[sub_4a2fc9e8.length] = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 7
                stor7[mem[(32 * idx) + 128]] = sub_4a2fc9e8.length
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    mem[100] = arg2
    mem[132] = arg3
    mem[164] = arg4
    mem[196] = arg5
    mem[228] = arg6
    mem[260] = arg7
    require ext_code.size(stor4)
    staticcall stor4.calculate_point_buy(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) with:
            gas gas_remaining wei
           args 0, 0, arg3 << 224, arg4 << 224, arg5, arg6 << 224, arg7
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] != 32:
        revert with 0, 'point error'
    mem[0] = arg1
    mem[32] = 8
    idx = 0
    while idx < stor8[arg1]:
        mem[32] = 8
        if idx >= stor8[arg1]:
            revert with 'NH{q', 50
        mem[0] = sha3(arg1, 8)
        mem[mem[64] + 4] = stor8[arg1][idx]
        require ext_code.size(stor4)
        staticcall stor4.character_created(uint256 arg1) with:
                gas gas_remaining wei
               args stor8[arg1][idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _20 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_20] == bool(mem[_20])
        if not mem[_20]:
            mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = stor8[arg1][idx]
            mem[mem[64] + 36] = arg2
            mem[mem[64] + 68] = arg3
            mem[mem[64] + 100] = arg4
            mem[mem[64] + 132] = arg5
            mem[mem[64] + 164] = arg6
            mem[mem[64] + 196] = arg7
            require ext_code.size(stor4)
            call stor4.0xc3c2407c with:
                 gas gas_remaining wei
                args stor8[arg1][idx], arg2 << 224, arg3 << 224, arg4 << 224, arg5 << 224, arg6 << 224, arg7
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
        staticcall rarityAddress.0x6352211e with:
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
            mem[32] = 7
            if stor7[mem[(32 * idx) + 128]]:
                if stor7[mem[(32 * idx) + 128]] < 1:
                    revert with 'NH{q', 17
                if sub_4a2fc9e8.length < 1:
                    revert with 'NH{q', 17
                if sub_4a2fc9e8.length - 1 != stor7[mem[(32 * idx) + 128]] - 1:
                    if sub_4a2fc9e8.length - 1 >= sub_4a2fc9e8.length:
                        revert with 'NH{q', 50
                    if stor7[mem[(32 * idx) + 128]] - 1 >= sub_4a2fc9e8.length:
                        revert with 'NH{q', 50
                    sub_4a2fc9e8[stor7[mem[(32 * idx) + 128]]] = sub_4a2fc9e8[sub_4a2fc9e8.length]
                    stor7[stor6[stor6.length]] = stor7[mem[(32 * idx) + 128]]
                if not sub_4a2fc9e8.length:
                    revert with 'NH{q', 49
                sub_4a2fc9e8[sub_4a2fc9e8.length] = 0
                sub_4a2fc9e8.length--
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 7
                stor7[mem[(32 * idx) + 128]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_54d3652a(?) payable {
    require calldata.size - 4 >= 1184
    require cd[4] == cd[4]
    require 67 < calldata.size
    mem[64] = 1248
    require 1188 <= calldata.size
    idx = 0
    s = 36
    t = 96
    while idx < 36:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = cd[4]
    mem[32] = 8
    idx = 0
    while idx < stor8[cd[4]]:
        mem[32] = 8
        if idx >= stor8[cd[4]]:
            revert with 'NH{q', 50
        mem[0] = sha3(cd[4], 8)
        mem[mem[64] + 4] = stor8[cd[4]][idx]
        require ext_code.size(stor4)
        staticcall stor4.character_created(uint256 arg1) with:
                gas gas_remaining wei
               args stor8[cd[4]][idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_15] == bool(mem[_15])
        if not mem[_15]:
            mem[mem[64]] = 0xe67d77e800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = stor8[cd[4]][idx]
            s = 0
            t = 96
            u = mem[64] + 36
            while s < 36:
                mem[u] = mem[t + 31 len 1]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(stor5)
            staticcall stor5.0xe67d77e8 with:
                    gas gas_remaining wei
                   args stor8[cd[4]][idx], mem[mem[64] + 36 len 1152]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _21 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_21] == bool(mem[_21])
            if mem[_21]:
                mem[mem[64]] = 0x54d3652a00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor8[cd[4]][idx]
                s = 0
                t = 96
                u = mem[64] + 36
                while s < 36:
                    mem[u] = mem[t + 31 len 1]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor5)
                call stor5.0x54d3652a with:
                     gas gas_remaining wei
                    args stor8[cd[4]][idx], mem[mem[64] + 36 len 1152]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
