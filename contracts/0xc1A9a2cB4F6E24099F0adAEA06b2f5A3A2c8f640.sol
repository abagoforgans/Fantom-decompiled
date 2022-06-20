contract main {




// =====================  Runtime code  =====================


address owner;

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

function sub_6e4bad9f(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x379607f500000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_193c464d(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x9024944800000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_3a091650(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_aa06bc80(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_9] == mem[_9]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_556e2642(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = address(cd[36])
        mem[132] = address(cd[68])
        mem[164] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
        call 0xf41270836df4db1d28f7fd0935270e3a603e78cc.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(cd[36]), address(cd[68]), cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_5855ef5a(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = address(cd[36])
        mem[132] = address(cd[68])
        mem[164] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(cd[36]), address(cd[68]), cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_32f660ba(?) payable {
    require calldata.size - 4 >= 224
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == uint32(cd[36])
    require cd[68] == uint32(cd[68])
    require cd[100] == uint32(cd[100])
    require cd[132] == uint32(cd[132])
    require cd[164] == uint32(cd[164])
    require cd[196] == uint32(cd[196])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        mem[132] = uint32(cd[36])
        mem[164] = uint32(cd[68])
        mem[196] = uint32(cd[100])
        mem[228] = uint32(cd[132])
        mem[260] = uint32(cd[164])
        mem[292] = uint32(cd[196])
        require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
        call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)], cd[36] << 224, cd[68] << 224, cd[100] << 224, cd[132] << 224, cd[164] << 224, uint32(cd[196])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_ab79095f(?) payable {
    mem[64] = 96
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
        require ext_code.size(0x147629f002966c4f2adc1cb4f0aca)
        call 0x00000000000147629f002966c4f2adc1cb4f0aca.claim(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] + 36] = cd[36]
        mem[mem[64] + 68] = 100 * 10^18
        require ext_code.size(0x147629f002966c4f2adc1cb4f0aca)
        call 0x00000000000147629f002966c4f2adc1cb4f0aca.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)], cd[36], 100 * 10^18
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_13] == bool(mem[_13])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_fb09ab3a(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.next_summoner() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _14 = mem[_13]
        require mem[_13] == mem[_13]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = _14
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, _14
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_89706a0b(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 1
    while idx < arg1:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.next_summoner() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _14 = mem[_13]
        require mem[_13] == mem[_13]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
             gas gas_remaining wei
            args s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = _14
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, _14
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        if s + 1 != 12:
            idx = idx + 1
            s = s + 1
            continue 
        idx = idx + 1
        s = 1
        continue 
}

function sub_34412c98(?) payable {
    mem[64] = 96
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
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
        staticcall 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _14 = mem[_13]
        require mem[_13] == mem[_13]
        if mem[_13] > 0:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] + 36] = cd[36]
            mem[mem[64] + 68] = _14
            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)], cd[36], _14
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _17 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_17] == bool(mem[_17])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_7e916848(?) payable {
    mem[64] = 96
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
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.balanceOf(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _14 = mem[_13]
        require mem[_13] == mem[_13]
        if mem[_13] > 0:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] + 36] = cd[36]
            mem[mem[64] + 68] = _14
            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)], cd[36], _14
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _17 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_17] == bool(mem[_17])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_f9c77e05(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 1184
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require 1188 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        s = 0
        t = 36
        u = mem[64] + 36
        while s < 36:
            require cd[t] == uint8(cd[t])
            mem[u] = uint8(cd[t])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(0x51c0b29a1d84611373ba301706c6b4b72283c80f)
        staticcall 0x51c0b29a1d84611373ba301706c6b4b72283c80f.0xe67d77e8 with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)], mem[mem[64] + 36 len 1152]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_13] == bool(mem[_13])
        if not mem[_13]:
            revert with 0, 'Skills not valid!'
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[mem[64]] = 0x54d3652a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        s = 0
        t = 36
        u = mem[64] + 36
        while s < 36:
            require cd[t] == uint8(cd[t])
            mem[u] = uint8(cd[t])
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
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_a06ee7f7(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] + 36] = 1758709
        mem[mem[64] + 68] = 100000000 * 10^18
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.approve(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)], 1758709, 100000000 * 10^18
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_17] == bool(mem[_17])
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] + 36] = 1758709
        mem[mem[64] + 68] = 100000000 * 10^18
        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.approve(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)], 1758709, 100000000 * 10^18
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _21 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_21] == bool(mem[_21])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_1cd18845(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == uint8(cd[36])
    require cd[68] == uint8(cd[68])
    require cd[100] == cd[100]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 100] = cd[100]
        require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
        staticcall 0xf41270836df4db1d28f7fd0935270e3a603e78cc.simulate(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)], cd[36] << 248, cd[68] << 248, cd[100]
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _20 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_20] == bool(mem[_20])
        require mem[_20 + 32] == mem[_20 + 32]
        require mem[_20 + 64] == mem[_20 + 64]
        require mem[_20 + 96] == mem[_20 + 96]
        if mem[_20]:
            require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
            staticcall 0xf41270836df4db1d28f7fd0935270e3a603e78cc.next_item() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _27 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _28 = mem[_27]
            require mem[_27] == mem[_27]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[mem[64] + 100] = cd[100]
            require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
            call 0xf41270836df4db1d28f7fd0935270e3a603e78cc.craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)], cd[36] << 248, cd[68] << 248, cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = _28
            require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
            call 0xf41270836df4db1d28f7fd0935270e3a603e78cc.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, _28
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_c1f242a1(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length and 4 > -1 / ('cd', 4).length:
        revert with 'NH{q', 17
    if 4 * ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = 4 * ('cd', 4).length
    mem[64] = (128 * ('cd', 4).length) + 128
    if not Mask(254, 0, ('cd', 4).length):
        idx = 0
        while idx < ('cd', 4).length:
            require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
            staticcall 0xf41270836df4db1d28f7fd0935270e3a603e78cc.items(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _40 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _44 = mem[_40]
            require mem[_40] == mem[_40 + 31 len 1]
            _48 = mem[_40 + 32]
            require mem[_40 + 32] == mem[_40 + 63 len 1]
            _50 = mem[_40 + 64]
            require mem[_40 + 64] == mem[_40 + 92 len 4]
            require mem[_40 + 96] == mem[_40 + 96]
            if idx and 4 > -1 / idx:
                revert with 'NH{q', 17
            if 4 * idx >= mem[96]:
                revert with 'NH{q', 50
            if idx and 4 > -1 / idx:
                revert with 'NH{q', 17
            if 4 * idx > -2:
                revert with 'NH{q', 17
            if (4 * idx) + 1 >= mem[96]:
                revert with 'NH{q', 50
            if idx and 4 > -1 / idx:
                revert with 'NH{q', 17
            if 4 * idx > -3:
                revert with 'NH{q', 17
            if (4 * idx) + 2 >= mem[96]:
                revert with 'NH{q', 50
            if idx and 4 > -1 / idx:
                revert with 'NH{q', 17
            if 4 * idx > -4:
                revert with 'NH{q', 17
            if (4 * idx) + 3 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * (4 * idx) + 3) + 128] = mem[_40 + 96]
            mem[(32 * (4 * idx) + 2) + 128] = uint32(_50)
            mem[(32 * (4 * idx) + 1) + 128] = uint8(_48)
            mem[(128 * idx) + 128] = uint8(_44)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 128 * ('cd', 4).length] = call.data[calldata.size len 128 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
            staticcall 0xf41270836df4db1d28f7fd0935270e3a603e78cc.items(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _41 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _45 = mem[_41]
            require mem[_41] == mem[_41 + 31 len 1]
            _49 = mem[_41 + 32]
            require mem[_41 + 32] == mem[_41 + 63 len 1]
            _51 = mem[_41 + 64]
            require mem[_41 + 64] == mem[_41 + 92 len 4]
            require mem[_41 + 96] == mem[_41 + 96]
            if idx and 4 > -1 / idx:
                revert with 'NH{q', 17
            if 4 * idx >= mem[96]:
                revert with 'NH{q', 50
            if idx and 4 > -1 / idx:
                revert with 'NH{q', 17
            if 4 * idx > -2:
                revert with 'NH{q', 17
            if (4 * idx) + 1 >= mem[96]:
                revert with 'NH{q', 50
            if idx and 4 > -1 / idx:
                revert with 'NH{q', 17
            if 4 * idx > -3:
                revert with 'NH{q', 17
            if (4 * idx) + 2 >= mem[96]:
                revert with 'NH{q', 50
            if idx and 4 > -1 / idx:
                revert with 'NH{q', 17
            if 4 * idx > -4:
                revert with 'NH{q', 17
            if (4 * idx) + 3 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * (4 * idx) + 3) + 128] = mem[_41 + 96]
            mem[(32 * (4 * idx) + 2) + 128] = uint32(_51)
            mem[(32 * (4 * idx) + 1) + 128] = uint8(_49)
            mem[(128 * idx) + 128] = uint8(_45)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_ad1b8561(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        if not cd[36]:
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _47 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _49 = mem[_47]
            require mem[_47] == mem[_47]
            mem[mem[64] + 4] = mem[_47]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.xp_required(uint256 arg1) with:
                    gas gas_remaining wei
                   args _49
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _54 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _57 = mem[_54]
            require mem[_54] == mem[_54]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.xp(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _63 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_63] == mem[_63]
            if mem[_63] >= _57:
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                mem[mem[64]] = 0x379607f500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _48 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_48] == mem[_48]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _56 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _58 = mem[_56]
            require mem[_56] == mem[_56]
            mem[mem[64] + 4] = mem[_56]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.xp_required(uint256 arg1) with:
                    gas gas_remaining wei
                   args _58
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _64 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _66 = mem[_64]
            require mem[_64] == mem[_64]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.xp(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _71 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_71] == mem[_71]
            if mem[_71] >= _66:
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                mem[mem[64]] = 0x379607f500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_d93cdfdc(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length and 13 > -1 / ('cd', 4).length:
        revert with 'NH{q', 17
    if 13 * ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = 13 * ('cd', 4).length
    mem[64] = (32 * 13 * ('cd', 4).length) + 128
    if not 13 * ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summoner(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _104 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _108 = mem[_104]
            require mem[_104] == mem[_104]
            _112 = mem[_104 + 32]
            require mem[_104 + 32] == mem[_104 + 32]
            _114 = mem[_104 + 64]
            require mem[_104 + 64] == mem[_104 + 64]
            require mem[_104 + 96] == mem[_104 + 96]
            if idx and 13 > -1 / idx:
                revert with 'NH{q', 17
            if 13 * idx >= mem[96]:
                revert with 'NH{q', 50
            if idx and 13 > -1 / idx:
                revert with 'NH{q', 17
            if 13 * idx > -2:
                revert with 'NH{q', 17
            if (13 * idx) + 1 >= mem[96]:
                revert with 'NH{q', 50
            if idx and 13 > -1 / idx:
                revert with 'NH{q', 17
            if 13 * idx > -3:
                revert with 'NH{q', 17
            if (13 * idx) + 2 >= mem[96]:
                revert with 'NH{q', 50
            if idx and 13 > -1 / idx:
                revert with 'NH{q', 17
            if 13 * idx > -4:
                revert with 'NH{q', 17
            if (13 * idx) + 3 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * (13 * idx) + 3) + 128] = mem[_104 + 96]
            mem[(32 * (13 * idx) + 2) + 128] = _114
            mem[(32 * (13 * idx) + 1) + 128] = _112
            mem[(32 * 13 * idx) + 128] = _108
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
            staticcall 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _130 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_130] == mem[_130]
            if idx and 13 > -1 / idx:
                revert with 'NH{q', 17
            if 13 * idx > -5:
                revert with 'NH{q', 17
            if (13 * idx) + 4 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * (13 * idx) + 4) + 128] = mem[_130]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.balanceOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _140 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_140] == mem[_140]
            if idx and 13 > -1 / idx:
                revert with 'NH{q', 17
            if 13 * idx > -6:
                revert with 'NH{q', 17
            if (13 * idx) + 5 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * (13 * idx) + 5) + 128] = mem[_140]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
            staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _150 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _152 = mem[_150]
            require mem[_150] == mem[_150 + 28 len 4]
            _154 = mem[_150 + 32]
            require mem[_150 + 32] == mem[_150 + 60 len 4]
            _156 = mem[_150 + 64]
            require mem[_150 + 64] == mem[_150 + 92 len 4]
            _158 = mem[_150 + 96]
            require mem[_150 + 96] == mem[_150 + 124 len 4]
            _162 = mem[_150 + 128]
            require mem[_150 + 128] == mem[_150 + 156 len 4]
            require mem[_150 + 160] == mem[_150 + 188 len 4]
            if idx and 13 > -1 / idx:
                revert with 'NH{q', 17
            if 13 * idx > -7:
                revert with 'NH{q', 17
            if (13 * idx) + 6 >= mem[96]:
                revert with 'NH{q', 50
            if idx and 13 > -1 / idx:
                revert with 'NH{q', 17
            if 13 * idx > -8:
                revert with 'NH{q', 17
            if (13 * idx) + 7 >= mem[96]:
                revert with 'NH{q', 50
            if idx and 13 > -1 / idx:
                revert with 'NH{q', 17
            if 13 * idx > -9:
                revert with 'NH{q', 17
            if (13 * idx) + 8 >= mem[96]:
                revert with 'NH{q', 50
            if idx and 13 > -1 / idx:
                revert with 'NH{q', 17
            if 13 * idx > -10:
                revert with 'NH{q', 17
            if (13 * idx) + 9 >= mem[96]:
                revert with 'NH{q', 50
            if idx and 13 > -1 / idx:
                revert with 'NH{q', 17
            if 13 * idx > -11:
                revert with 'NH{q', 17
            if (13 * idx) + 10 >= mem[96]:
                revert with 'NH{q', 50
            if idx and 13 > -1 / idx:
                revert with 'NH{q', 17
            if 13 * idx > -12:
                revert with 'NH{q', 17
            if (13 * idx) + 11 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * (13 * idx) + 11) + 128] = mem[_150 + 188 len 4]
            mem[(32 * (13 * idx) + 10) + 128] = uint32(_162)
            mem[(32 * (13 * idx) + 9) + 128] = uint32(_158)
            mem[(32 * (13 * idx) + 8) + 128] = uint32(_156)
            mem[(32 * (13 * idx) + 7) + 128] = uint32(_154)
            mem[(32 * (13 * idx) + 6) + 128] = uint32(_152)
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _184 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_184] == mem[_184]
            if idx and 13 > -1 / idx:
                revert with 'NH{q', 17
            if 13 * idx > -13:
                revert with 'NH{q', 17
            if (13 * idx) + 12 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * (13 * idx) + 12) + 128] = mem[_184]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * 13 * ('cd', 4).length] = call.data[calldata.size len 32 * 13 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summoner(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _105 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _109 = mem[_105]
            require mem[_105] == mem[_105]
            _113 = mem[_105 + 32]
            require mem[_105 + 32] == mem[_105 + 32]
            _115 = mem[_105 + 64]
            require mem[_105 + 64] == mem[_105 + 64]
            require mem[_105 + 96] == mem[_105 + 96]
            if idx and 13 > -1 / idx:
                revert with 'NH{q', 17
            if 13 * idx >= mem[96]:
                revert with 'NH{q', 50
            if idx and 13 > -1 / idx:
                revert with 'NH{q', 17
            if 13 * idx > -2:
                revert with 'NH{q', 17
            if (13 * idx) + 1 >= mem[96]:
                revert with 'NH{q', 50
            if idx and 13 > -1 / idx:
                revert with 'NH{q', 17
            if 13 * idx > -3:
                revert with 'NH{q', 17
            if (13 * idx) + 2 >= mem[96]:
                revert with 'NH{q', 50
            if idx and 13 > -1 / idx:
                revert with 'NH{q', 17
            if 13 * idx > -4:
                revert with 'NH{q', 17
            if (13 * idx) + 3 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * (13 * idx) + 3) + 128] = mem[_105 + 96]
            mem[(32 * (13 * idx) + 2) + 128] = _115
            mem[(32 * (13 * idx) + 1) + 128] = _113
            mem[(32 * 13 * idx) + 128] = _109
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
            staticcall 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _131 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_131] == mem[_131]
            if idx and 13 > -1 / idx:
                revert with 'NH{q', 17
            if 13 * idx > -5:
                revert with 'NH{q', 17
            if (13 * idx) + 4 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * (13 * idx) + 4) + 128] = mem[_131]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.balanceOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _141 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_141] == mem[_141]
            if idx and 13 > -1 / idx:
                revert with 'NH{q', 17
            if 13 * idx > -6:
                revert with 'NH{q', 17
            if (13 * idx) + 5 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * (13 * idx) + 5) + 128] = mem[_141]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
            staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _151 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _153 = mem[_151]
            require mem[_151] == mem[_151 + 28 len 4]
            _155 = mem[_151 + 32]
            require mem[_151 + 32] == mem[_151 + 60 len 4]
            _157 = mem[_151 + 64]
            require mem[_151 + 64] == mem[_151 + 92 len 4]
            _159 = mem[_151 + 96]
            require mem[_151 + 96] == mem[_151 + 124 len 4]
            _163 = mem[_151 + 128]
            require mem[_151 + 128] == mem[_151 + 156 len 4]
            require mem[_151 + 160] == mem[_151 + 188 len 4]
            if idx and 13 > -1 / idx:
                revert with 'NH{q', 17
            if 13 * idx > -7:
                revert with 'NH{q', 17
            if (13 * idx) + 6 >= mem[96]:
                revert with 'NH{q', 50
            if idx and 13 > -1 / idx:
                revert with 'NH{q', 17
            if 13 * idx > -8:
                revert with 'NH{q', 17
            if (13 * idx) + 7 >= mem[96]:
                revert with 'NH{q', 50
            if idx and 13 > -1 / idx:
                revert with 'NH{q', 17
            if 13 * idx > -9:
                revert with 'NH{q', 17
            if (13 * idx) + 8 >= mem[96]:
                revert with 'NH{q', 50
            if idx and 13 > -1 / idx:
                revert with 'NH{q', 17
            if 13 * idx > -10:
                revert with 'NH{q', 17
            if (13 * idx) + 9 >= mem[96]:
                revert with 'NH{q', 50
            if idx and 13 > -1 / idx:
                revert with 'NH{q', 17
            if 13 * idx > -11:
                revert with 'NH{q', 17
            if (13 * idx) + 10 >= mem[96]:
                revert with 'NH{q', 50
            if idx and 13 > -1 / idx:
                revert with 'NH{q', 17
            if 13 * idx > -12:
                revert with 'NH{q', 17
            if (13 * idx) + 11 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * (13 * idx) + 11) + 128] = mem[_151 + 188 len 4]
            mem[(32 * (13 * idx) + 10) + 128] = uint32(_163)
            mem[(32 * (13 * idx) + 9) + 128] = uint32(_159)
            mem[(32 * (13 * idx) + 8) + 128] = uint32(_157)
            mem[(32 * (13 * idx) + 7) + 128] = uint32(_155)
            mem[(32 * (13 * idx) + 6) + 128] = uint32(_153)
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _185 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_185] == mem[_185]
            if idx and 13 > -1 / idx:
                revert with 'NH{q', 17
            if 13 * idx > -13:
                revert with 'NH{q', 17
            if (13 * idx) + 12 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * (13 * idx) + 12) + 128] = mem[_185]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
