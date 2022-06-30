contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_1a20fd84;

function sub_1a20fd84(?) payable {
    return sub_1a20fd84
}

function owner() payable {
    return owner
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

function sub_5dd13853(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == cd[36]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        s = 1
        while s < cd[36]:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[96] = 0x289137a100000000000000000000000000000000000000000000000000000000
            mem[100] = cd[((32 * idx) + cd[4] + 36)]
            mem[132] = 500
            require ext_code.size(0x3aad295e2570a321c12ee930e62d081cb5c2cd8)
            call 0x03aad295e2570a321c12ee930e62d081cb5c2cd8.craft(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)], 500
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_79058720(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 36] = 500
        require ext_code.size(0x3aad295e2570a321c12ee930e62d081cb5c2cd8)
        staticcall 0x3aad295e2570a321c12ee930e62d081cb5c2cd8.0xcc0db0b7 with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)], 500
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _18 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_18] == bool(mem[_18])
        _20 = mem[_18 + 32]
        require mem[_18 + 32] == mem[_18 + 32]
        if mem[_18 + 32] < 510:
            if sub_1a20fd84 < mem[_18 + 32]:
                sub_1a20fd84 = mem[_18 + 32]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        require ext_code.size(0x3aad295e2570a321c12ee930e62d081cb5c2cd8)
        staticcall 0x3aad295e2570a321c12ee930e62d081cb5c2cd8.next_item() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _23 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _24 = mem[_23]
        require mem[_23] == mem[_23]
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require ext_code.size(0x3aad295e2570a321c12ee930e62d081cb5c2cd8)
        call 0x03aad295e2570a321c12ee930e62d081cb5c2cd8.craft(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)], 500
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = _24
        require ext_code.size(0x3aad295e2570a321c12ee930e62d081cb5c2cd8)
        call 0x03aad295e2570a321c12ee930e62d081cb5c2cd8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, _24
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_1a20fd84 < _20:
            sub_1a20fd84 = _20
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _24
        continue 
}

function sub_271a5382(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == cd[36]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[64] = 1248
    mem[96 len 1152] = call.data[calldata.size len 1152]
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = 0x3aad295e2570a321c12ee930e62d081cb5c2cd8
        mem[mem[64] + 36] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x3aad295e2570a321c12ee930e62d081cb5c2cd8, cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require ext_code.size(0x3aad295e2570a321c12ee930e62d081cb5c2cd8)
        staticcall 0x3aad295e2570a321c12ee930e62d081cb5c2cd8.SUMMMONER_ID() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _40 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _41 = mem[_40]
        require mem[_40] == mem[_40]
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] + 36] = _41
        mem[mem[64] + 68] = 100000000 * 10^18
        require ext_code.size(0x147629f002966c4f2adc1cb4f0aca)
        call 0x00000000000147629f002966c4f2adc1cb4f0aca.approve(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)], _41, 100000000 * 10^18
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _44 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_44] == bool(mem[_44])
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require ext_code.size(0x3aad295e2570a321c12ee930e62d081cb5c2cd8)
        staticcall 0x3aad295e2570a321c12ee930e62d081cb5c2cd8.SUMMMONER_ID() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _48 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _49 = mem[_48]
        require mem[_48] == mem[_48]
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] + 36] = _49
        mem[mem[64] + 68] = 100000000 * 10^18
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.approve(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)], _49, 100000000 * 10^18
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _52 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_52] == bool(mem[_52])
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[mem[64] + 36] = 8
        mem[mem[64] + 68] = 8
        mem[mem[64] + 100] = 8
        mem[mem[64] + 132] = 22
        mem[mem[64] + 164] = 8
        mem[mem[64] + 196] = 8
        require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
        call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)], 8, 8, 8, 22, 8, 8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[256] = 5
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[mem[64]] = 0x54d3652a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        s = 0
        t = 96
        u = mem[64] + 36
        while s < 36:
            mem[u] = mem[t + 31 len 1]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(0x51c0b29a1d84611373ba301706c6b4b72283c80f)
        call 0x51c0b29a1d84611373ba301706c6b4b72283c80f.0x54d3652a with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)], mem[mem[64] + 36 len 1152]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if cd[36] > 0x83126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4f:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = 682124
        mem[mem[64] + 36] = cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] + 68] = 500 * cd[36]
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args 682124, cd[((32 * idx) + cd[4] + 36)], 500 * cd[36]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _62 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_62] == bool(mem[_62])
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = 682124
        mem[mem[64] + 36] = cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] + 68] = 1000 * 10^18
        require ext_code.size(0x147629f002966c4f2adc1cb4f0aca)
        call 0x00000000000147629f002966c4f2adc1cb4f0aca.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args 682124, cd[((32 * idx) + cd[4] + 36)], 1000 * 10^18
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _66 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_66] == bool(mem[_66])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
