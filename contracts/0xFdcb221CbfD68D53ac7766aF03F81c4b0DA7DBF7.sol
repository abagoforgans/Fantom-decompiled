contract main {




// =====================  Runtime code  =====================


address owner;
address rarityAddress;
address sub_d486adccAddress;
address sub_9947151fAddress;

function owner() payable {
    return owner
}

function sub_9947151f(?) payable {
    return sub_9947151fAddress
}

function sub_d486adcc(?) payable {
    return sub_d486adccAddress
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

function sub_8b56341c(?) payable {
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
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _26 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args _26
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _29 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_29] == mem[_29]
        if block.timestamp > mem[_29]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _32 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _32
            require ext_code.size(rarityAddress)
            call rarityAddress.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args _32
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_c41e2950(?) payable {
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
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _30 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(sub_9947151fAddress)
        staticcall sub_9947151fAddress.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args _30
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _33 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_33] == mem[_33]
        if block.timestamp > mem[_33]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _36 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(sub_9947151fAddress)
            call sub_9947151fAddress.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args _36
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _39 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_39] == mem[_39]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_090a1f8d(?) payable {
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
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _54 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.level(uint256 arg1) with:
                gas gas_remaining wei
               args _54
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _57 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _58 = mem[_57]
        require mem[_57] == mem[_57]
        mem[mem[64] + 4] = mem[_57]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.xp_required(uint256 arg1) with:
                gas gas_remaining wei
               args _58
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _61 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _62 = mem[_61]
        require mem[_61] == mem[_61]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _64 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.xp(uint256 arg1) with:
                gas gas_remaining wei
               args _64
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _67 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_67] == mem[_67]
        if mem[_67] >= _62:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _70 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _70
            require ext_code.size(rarityAddress)
            call rarityAddress.level_up(uint256 arg1) with:
                 gas gas_remaining wei
                args _70
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _74 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x379607f500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _74
            require ext_code.size(sub_d486adccAddress)
            call sub_d486adccAddress.claim(uint256 arg1) with:
                 gas gas_remaining wei
                args _74
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
