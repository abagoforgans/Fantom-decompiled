contract main {




// =====================  Runtime code  =====================


array of struct sub_d38b576d;
address stor1;

function sub_d38b576d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_d38b576d.length
    return sub_d38b576d[arg1].field_0
}

function _fallback() payable {
    revert
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

function sub_d08d913b(?) payable {
    require calldata.size - 4 >= 96
    require msg.sender == stor1
    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.0x90dd2627 with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_fa8a9bac(?) payable {
    require calldata.size - 4 >= 96
    require msg.sender == stor1
    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0x90dd2627 with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function level_up() payable {
    require msg.sender == stor1
    idx = 0
    while idx < sub_d38b576d.length:
        mem[0] = 0
        mem[96] = 0x9024944800000000000000000000000000000000000000000000000000000000
        mem[100] = sub_d38b576d[idx].field_0
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
             gas gas_remaining wei
            args sub_d38b576d[idx].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_fb55d1c4(?) payable {
    require msg.sender == stor1
    idx = 0
    while idx < sub_d38b576d.length:
        mem[0] = 0
        mem[96] = 0x379607f500000000000000000000000000000000000000000000000000000000
        mem[100] = sub_d38b576d[idx].field_0
        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
             gas gas_remaining wei
            args sub_d38b576d[idx].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_b9afe57d(?) payable {
    require msg.sender == stor1
    idx = 0
    while idx < sub_d38b576d.length:
        mem[0] = 0
        mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[100] = sub_d38b576d[idx].field_0
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args sub_d38b576d[idx].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_f607426b(?) payable {
    require msg.sender == stor1
    idx = 0
    while idx < sub_d38b576d.length:
        mem[0] = 0
        mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[100] = sub_d38b576d[idx].field_0
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args sub_d38b576d[idx].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_b959f57f(?) payable {
    if sub_d38b576d.length:
        mem[128] = uint256(sub_d38b576d.field_0)
        idx = 128
        s = 0
        while (32 * sub_d38b576d.length) + 96 > idx:
            mem[idx + 32] = sub_d38b576d[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_d38b576d.length, data=mem[128 len 32 * sub_d38b576d.length])
    mem[(32 * sub_d38b576d.length) + 128] = 32
    mem[(32 * sub_d38b576d.length) + 160] = sub_d38b576d.length
    mem[(32 * sub_d38b576d.length) + 192 len 32 * sub_d38b576d.length] = mem[128 len 32 * sub_d38b576d.length]
    return memory
      from (32 * sub_d38b576d.length) + 128
       len (96 * sub_d38b576d.length) + 64
}

function sub_4746869e(?) payable {
    require msg.sender == stor1
    idx = 0
    while idx < sub_d38b576d.length:
        mem[0] = 0
        mem[96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
        mem[100] = 0x3fc0539d1a0737fca3e4556a990aae1c38425f14
        mem[132] = sub_d38b576d[idx].field_0
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x3fc0539d1a0737fca3e4556a990aae1c38425f14, sub_d38b576d[idx].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_d68bda8c(?) payable {
    mem[64] = 96
    require msg.sender == stor1
    idx = 0
    while idx < sub_d38b576d.length:
        mem[0] = 0
        mem[mem[64] + 4] = sub_d38b576d[idx].field_0
        mem[mem[64] + 36] = 1546631
        mem[mem[64] + 68] = -1
        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.0xb866c8a4 with:
             gas gas_remaining wei
            args sub_d38b576d[idx].field_0, 1546631, -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_9] == bool(mem[_9])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_2986b7fe(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require msg.sender == stor1
    if 0 >= sub_d38b576d.length:
        revert with 0, 50
    mem[0] = 0
    idx = 0
    while idx < sub_d38b576d.length:
        mem[0] = 0
        mem[mem[64] + 4] = uint256(sub_d38b576d.field_0)
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = sub_d38b576d[idx].field_0
        mem[mem[64] + 100] = arg2
        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.0x8856f779 with:
             gas gas_remaining wei
            args uint256(sub_d38b576d.field_0), arg1, sub_d38b576d[idx].field_0, arg2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _10 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_10] == bool(mem[_10])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function summon(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require msg.sender == stor1
    idx = 0
    while idx < arg1:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.next_summoner() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _10 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _11 = mem[_10]
        sub_d38b576d.length++
        mem[0] = 0
        sub_d38b576d[sub_d38b576d.length].field_0 = _11
        mem[mem[64]] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 11
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
             gas gas_remaining wei
            args 11
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_066630af(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require msg.sender == stor1
    idx = 0
    while idx < sub_d38b576d.length:
        mem[0] = 0
        mem[mem[64] + 4] = sub_d38b576d[idx].field_0
        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
        staticcall 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.0x9cc7f708 with:
                gas gas_remaining wei
               args sub_d38b576d[idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _14 = mem[_13]
        require msg.sender == stor1
        mem[mem[64] + 4] = sub_d38b576d[idx].field_0
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = _14
        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.0x90dd2627 with:
             gas gas_remaining wei
            args sub_d38b576d[idx].field_0, arg1, _14
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_17] == bool(mem[_17])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_bdfcec94(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require msg.sender == stor1
    idx = 0
    while idx < sub_d38b576d.length:
        mem[0] = 0
        mem[mem[64] + 4] = sub_d38b576d[idx].field_0
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0x9cc7f708 with:
                gas gas_remaining wei
               args sub_d38b576d[idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _14 = mem[_13]
        require msg.sender == stor1
        mem[mem[64] + 4] = sub_d38b576d[idx].field_0
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = _14
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0x90dd2627 with:
             gas gas_remaining wei
            args sub_d38b576d[idx].field_0, arg1, _14
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_17] == bool(mem[_17])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_873e38f0(?) payable {
    mem[64] = 96
    require msg.sender == stor1
    idx = 0
    while idx < sub_d38b576d.length:
        mem[0] = 0
        mem[mem[64] + 4] = sub_d38b576d[idx].field_0
        require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
        staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.character_created(uint256 arg1) with:
                gas gas_remaining wei
               args sub_d38b576d[idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_11] == bool(mem[_11])
        if not mem[_11]:
            mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_d38b576d[idx].field_0
            mem[mem[64] + 36] = 8
            mem[mem[64] + 68] = 8
            mem[mem[64] + 100] = 8
            mem[mem[64] + 132] = 22
            mem[mem[64] + 164] = 8
            mem[mem[64] + 196] = 8
            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
            call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                 gas gas_remaining wei
                args sub_d38b576d[idx].field_0, 8, 8, 8, 22, 8, 8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_837c9cc1(?) payable {
    mem[64] = 96
    require msg.sender == stor1
    idx = 0
    while idx < sub_d38b576d.length:
        mem[0] = 0
        _8 = mem[64]
        mem[64] = mem[64] + 1152
        mem[_8] = 0
        mem[_8 + 32] = 0
        mem[_8 + 64] = 0
        mem[_8 + 96] = 0
        mem[_8 + 128] = 0
        mem[_8 + 160] = 4
        mem[_8 + 192] = 0
        mem[_8 + 224] = 0
        mem[_8 + 256] = 0
        mem[_8 + 288] = 0
        mem[_8 + 320] = 0
        mem[_8 + 352] = 0
        mem[_8 + 384] = 0
        mem[_8 + 416] = 0
        mem[_8 + 448] = 0
        mem[_8 + 480] = 0
        mem[_8 + 512] = 0
        mem[_8 + 544] = 0
        mem[_8 + 576] = 0
        mem[_8 + 608] = 0
        mem[_8 + 640] = 0
        mem[_8 + 672] = 0
        mem[_8 + 704] = 0
        mem[_8 + 736] = 0
        mem[_8 + 768] = 0
        mem[_8 + 800] = 0
        mem[_8 + 832] = 0
        mem[_8 + 864] = 0
        mem[_8 + 896] = 0
        mem[_8 + 928] = 0
        mem[_8 + 960] = 0
        mem[_8 + 992] = 0
        mem[_8 + 1024] = 0
        mem[_8 + 1056] = 0
        mem[_8 + 1088] = 0
        mem[_8 + 1120] = 0
        mem[mem[64]] = 0x54d3652a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = sub_d38b576d[idx].field_0
        s = 0
        t = _8
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
            args sub_d38b576d[idx].field_0, mem[mem[64] + 36 len 1152]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function craft(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require msg.sender == stor1
    idx = 0
    while idx < sub_d38b576d.length:
        mem[0] = 0
        mem[mem[64] + 100] = 0
        require ext_code.size(0x3fc0539d1a0737fca3e4556a990aae1c38425f14)
        staticcall 0x3fc0539d1a0737fca3e4556a990aae1c38425f14.simulate(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
                gas gas_remaining wei
               args sub_d38b576d[idx].field_0, arg1, arg2, 0
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _24 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _25 = mem[_24]
        require mem[_24] == bool(mem[_24])
        mem[mem[64] + 4] = sub_d38b576d[idx].field_0
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.xp(uint256 arg1) with:
                gas gas_remaining wei
               args sub_d38b576d[idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if _25:
            if mem[_31] >= 250 * 10^18:
                require ext_code.size(0x3fc0539d1a0737fca3e4556a990aae1c38425f14)
                staticcall 0x3fc0539d1a0737fca3e4556a990aae1c38425f14.next_item() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _35 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _36 = mem[_35]
                mem[mem[64] + 100] = 0
                require ext_code.size(0x3fc0539d1a0737fca3e4556a990aae1c38425f14)
                call 0x3fc0539d1a0737fca3e4556a990aae1c38425f14.craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args sub_d38b576d[idx].field_0, arg1 << 248, arg2 << 248, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor1
                mem[mem[64] + 68] = _36
                require ext_code.size(0x3fc0539d1a0737fca3e4556a990aae1c38425f14)
                call 0x3fc0539d1a0737fca3e4556a990aae1c38425f14.0x42842e0e with:
                     gas gas_remaining wei
                    args this.address, stor1, _36
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_52ae0d1c(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    idx = 0
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307() or ceil32(32 * ('cd', 36).length) + 98 < 97:
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    idx = 0
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99 > test266151307() or ceil32(32 * ('cd', 68).length) + 99 < 98:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    s = cd[68] + 36
    idx = 0
    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require msg.sender == stor1
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        _55 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
            revert with 0, 50
        _57 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
        require msg.sender == stor1
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        mem[mem[64] + 36] = _55
        mem[mem[64] + 68] = _57
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0x90dd2627 with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _55, _57
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _60 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_60] == bool(mem[_60])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_ca8ce099(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    idx = 0
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307() or ceil32(32 * ('cd', 36).length) + 98 < 97:
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    idx = 0
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99 > test266151307() or ceil32(32 * ('cd', 68).length) + 99 < 98:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    s = cd[68] + 36
    idx = 0
    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require msg.sender == stor1
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        _55 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
            revert with 0, 50
        _57 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
        require msg.sender == stor1
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        mem[mem[64] + 36] = _55
        mem[mem[64] + 68] = _57
        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.0x90dd2627 with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _55, _57
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _60 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_60] == bool(mem[_60])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
