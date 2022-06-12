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
    call rarityAddress.setApprovalForAll(address arg1, bool arg2) with:
         gas gas_remaining wei
        args address(arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_5e38b1f4(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'Not owner of summoner'
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

function sub_3d81b8fa(?) payable {
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
        staticcall rarityAddress.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args sub_284b91bd[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _14 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.timestamp > mem[_14]:
            if idx >= sub_284b91bd.length:
                revert with 'NH{q', 50
            mem[0] = 3
            mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_284b91bd[idx]
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

function sub_80074088(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < sub_dfad1b51:
        if idx >= sub_284b91bd.length:
            revert with 'NH{q', 50
        mem[0] = 3
        mem[mem[64] + 4] = sub_284b91bd[idx]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args sub_284b91bd[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _14 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_14] == mem[_14 + 12 len 20]
        if mem[_14 + 12 len 20] == this.address:
            if idx >= sub_284b91bd.length:
                revert with 'NH{q', 50
            mem[0] = 3
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(arg1)
            mem[mem[64] + 68] = sub_284b91bd[idx]
            require ext_code.size(rarityAddress)
            call rarityAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(this.address), address(arg1), sub_284b91bd[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
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

function sub_20452b67(?) payable {
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
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 5
        if not stor5[mem[(32 * idx) + 128]]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _67 = mem[(32 * idx) + 128]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args _67
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _72 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_72] == mem[_72 + 12 len 20]
            if mem[_72 + 12 len 20] != this.address:
                mem[mem[64] + 4] = _67
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args _67
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _80 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_80] == mem[_80 + 12 len 20]
                if mem[_80 + 12 len 20] != msg.sender:
                    revert with 0, 'Not owner of summoner'
            if stor5[_67]:
                revert with 0, 'Already in party'
            sub_284b91bd.length++
            sub_284b91bd[sub_284b91bd.length] = _67
            mem[0] = _67
            stor5[_67] = 1
            mem[32] = 6
            stor6[_67] = sub_dfad1b51
            if sub_dfad1b51 == -1:
                revert with 'NH{q', 17
            sub_dfad1b51++
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
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
        _71 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _72 = mem[_71]
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
        mem[mem[64] + 4] = mem[_71]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args _72
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _81 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_81] == mem[_81 + 12 len 20]
        if mem[_81 + 12 len 20] != this.address:
            mem[mem[64] + 4] = _72
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args _72
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _89 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_89] == mem[_89 + 12 len 20]
            if mem[_89 + 12 len 20] != msg.sender:
                revert with 0, 'Not owner of summoner'
        if stor5[_72]:
            revert with 0, 'Already in party'
        sub_284b91bd.length++
        sub_284b91bd[sub_284b91bd.length] = _72
        mem[0] = _72
        stor5[_72] = 1
        mem[32] = 6
        stor6[_72] = sub_dfad1b51
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
        _41 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _42 = mem[_41]
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _42
        require ext_code.size(rarityAddress)
        call rarityAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg1), this.address, _42
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[mem[64] + 4] = _42
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args _42
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _49 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_49] == mem[_49 + 12 len 20]
        if mem[_49 + 12 len 20] != this.address:
            mem[mem[64] + 4] = _42
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args _42
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _57 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_57] == mem[_57 + 12 len 20]
            if mem[_57 + 12 len 20] != msg.sender:
                revert with 0, 'Not owner of summoner'
        if stor5[_42]:
            revert with 0, 'Already in party'
        sub_284b91bd.length++
        sub_284b91bd[sub_284b91bd.length] = _42
        mem[0] = _42
        stor5[_42] = 1
        mem[32] = 6
        stor6[_42] = sub_dfad1b51
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



}
