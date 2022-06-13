contract main {




// =====================  Runtime code  =====================


address owner;
address rarityAddress;
address sub_d486adccAddress;

function owner() payable {
    return owner
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

function sub_e9b23714(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = msg.sender
        mem[164] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(rarityAddress)
        call rarityAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_5ec897aa(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_9] == mem[_9]
        if block.timestamp > mem[_9]:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(rarityAddress)
            call rarityAddress.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_05270e60(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.level(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _18 = mem[_17]
        require mem[_17] == mem[_17]
        mem[mem[64] + 4] = mem[_17]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.xp_required(uint256 arg1) with:
                gas gas_remaining wei
               args _18
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _21 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _22 = mem[_21]
        require mem[_21] == mem[_21]
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.xp(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_25] == mem[_25]
        if mem[_25] >= _22:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(rarityAddress)
            call rarityAddress.level_up(uint256 arg1) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_4fdc71df(?) payable {
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
        _41 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(sub_d486adccAddress)
        staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                gas gas_remaining wei
               args _41
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _44 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_44] == mem[_44]
        if mem[_44] >= 1:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _47 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _47
            require ext_code.size(rarityAddress)
            call rarityAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), _47
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _51 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x379607f500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _51
            require ext_code.size(sub_d486adccAddress)
            call sub_d486adccAddress.claim(uint256 arg1) with:
                 gas gas_remaining wei
                args _51
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _55 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = _55
            require ext_code.size(rarityAddress)
            call rarityAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, _55
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
