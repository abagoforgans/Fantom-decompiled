contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    owner = arg1
    emit OwnerSet(arg1, arg1);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_2957ea1c(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require arg1 <= arg2
    if arg2 < arg1:
        revert with 0, 17
    if var28002 > arg2 - arg1:
    if var32001 > !arg1:
        revert with 0, 17
    mem[96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
    mem[100] = this.address
    mem[132] = var36001
    require ext_code.size(var36004)
    call var38002.mem[var38004 len 4] with:
         gas gas_remaining wei
        args mem[var38004 + 4 len var38005 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if var42001 == -1:
        revert with 0, 17
    if arg2 < arg1:
        revert with 0, 17
    if var54002 > arg2 - arg1:
    if var58001 > !arg1:
        revert with 0, 17
    # nil
}

function sub_394a2e07(?) {
    require calldata.size - 4 >= 64
    require arg1 <= arg2
    if arg2 < arg1:
        revert with 0, 17
    if var28002 > arg2 - arg1:
    if var32001 > !arg1:
        revert with 0, 17
    require ext_code.size(var34006)
    call var34006.adventure(uint256 arg1) with:
         gas gas_remaining wei
        args (var34002 + arg1)
    s = var34002 + arg1
    s = var34006
    s = var34007
    while ext_call.success:
        if s == -1:
            revert with 0, 17
        if arg2 < arg1:
            revert with 0, 17
        if s + 1 > arg2 - arg1:
        if s + 1 > !arg1:
            revert with 0, 17
        mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[100] = s + arg1 + 2
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        call ????????????????????????????????????????.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args (s + arg1 + 2)
        s = s + arg1 + 1
        s = 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25
        s = s + 1
        continue 
    revert with ext_call.return_data[0 len return_data.size]
}

function sub_7467b99c(?) {
    require calldata.size - 4 >= 256
    require 99 < calldata.size
    mem[64] = 288
    require calldata.size >= 260
    idx = 0
    s = 68
    t = 96
    while idx < 6:
        require cd[s] == uint32(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[4] <= cd[36]
    if cd[36] < cd[4]:
        revert with 0, 17
    if var37002 > cd[36] - cd[4]:
    if var41001 > !cd[4]:
        revert with 0, 17
    mem[288] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
    mem[var47001] = var47008
    mem[var47001 + 32] = uint32(var47007)
    mem[var47001 + 64] = uint32(var47006)
    mem[var47001 + 96] = uint32(var47005)
    mem[var47001 + 128] = uint32(var47004)
    mem[var47001 + 160] = uint32(var47003)
    mem[var47001 + 192] = uint32(var47002)
    require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
    call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.mem[var51004 len 4] with:
         gas gas_remaining wei
        args mem[var51004 + 4 len var51005 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if var55001 == -1:
        revert with 0, 17
    if cd[36] < cd[4]:
        revert with 0, 17
    # nil
}

function sub_9c2e2929(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 <= arg2
    if arg2 < arg1:
        revert with 0, 17
    if var31002 > arg2 - arg1:
    if var35001 > !arg1:
        revert with 0, 17
    mem[100] = var37002 + arg1
    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
         gas gas_remaining wei
        args (var37002 + arg1)
    mem[96] = ext_call.return_data[0]
    s = var37002 + arg1
    s = var37007
    while ext_call.success:
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s == -1:
            revert with 0, 17
        if arg2 < arg1:
            revert with 0, 17
        if s + 1 > arg2 - arg1:
        if s + 1 > !arg1:
            revert with 0, 17
        mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[100] = s + arg1 + 2
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len -mem[64] + 128]
        mem[mem[64]] = ext_call.return_data[0]
        s = s + arg1 + 1
        s = s + 1
        continue 
    revert with ext_call.return_data[0 len return_data.size]
}

function sub_bb219c5d(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    idx = 0
    s = 0
    while idx < arg1:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25.next_summoner() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _20 = mem[_19]
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        call ????????????????????????????????????????.summon(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = _20
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        call ????????????????????????????????????????.0x23b872dd with:
             gas gas_remaining wei
            args this.address, msg.sender, _20
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _20
        continue 
}

function sub_b0e11e62(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if arg2 < arg1:
        revert with 0, 17
    if var40002 > arg2 - arg1:
    if var44001 > !arg1:
        revert with 0, 17
    mem[100] = var46002 + arg1
    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.balanceOf(uint256 arg1) with:
         gas gas_remaining wei
        args (var46002 + arg1)
    mem[96] = ext_call.return_data[0]
    s = var46002 + arg1
    s = var46008
    while ext_call.success:
        _69 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _70 = mem[_69]
        if s > !arg1:
            revert with 0, 17
        mem[mem[64] + 4] = s + arg1
        mem[mem[64] + 36] = arg3
        mem[mem[64] + 68] = _70
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args s + arg1, arg3, _70
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _73 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_73] == bool(mem[_73])
        if s == -1:
            revert with 0, 17
        if arg2 < arg1:
            revert with 0, 17
        if s + 1 > arg2 - arg1:
        if s + 1 > !arg1:
            revert with 0, 17
        mem[mem[64]] = 0x9cc7f70800000000000000000000000000000000000000000000000000000000
        mem[100] = s + arg1 + 2
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.balanceOf(uint256 arg1) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len -mem[64] + 128]
        mem[mem[64]] = ext_call.return_data[0]
        s = s + arg1 + 1
        s = s + 1
        continue 
    revert with ext_call.return_data[0 len return_data.size]
}

function sub_7766731a(?) {
    require calldata.size - 4 >= 1376
    require 67 < calldata.size
    require calldata.size >= 228
    idx = 0
    s = 36
    t = 96
    while idx < 6:
        require cd[s] == uint32(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 259 < calldata.size
    require 1380 <= calldata.size
    idx = 0
    s = 228
    t = 288
    while idx < 36:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25.next_summoner() with:
            gas gas_remaining wei
    mem[1440] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
    call ????????????????????????????????????????.summon(uint256 arg1) with:
         gas gas_remaining wei
        args cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
    call ????????????????????????????????????????.0x23b872dd with:
         gas gas_remaining wei
        args this.address, msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 1440] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
    require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
    call ????????????????????????????????????????.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 1444] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 1476] = mem[124 len 4]
    mem[ceil32(return_data.size) + 1508] = mem[156 len 4]
    mem[ceil32(return_data.size) + 1540] = mem[188 len 4]
    mem[ceil32(return_data.size) + 1572] = mem[220 len 4]
    mem[ceil32(return_data.size) + 1604] = mem[252 len 4]
    mem[ceil32(return_data.size) + 1636] = mem[284 len 4]
    require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
    call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
         gas gas_remaining wei
        args ext_call.return_data[0], mem[96] << 224, mem[128] << 224, mem[160] << 224, mem[192] << 224, mem[224] << 224, mem[284 len 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
    call ????????????????????????????????????????.adventure(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 1440] = 0x54d3652a00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 1444] = ext_call.return_data[0]
    idx = 0
    s = 288
    t = (2 * ceil32(return_data.size)) + 1476
    while idx < 36:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x51c0b29a1d84611373ba301706c6b4b72283c80f)
    call 0x51c0b29a1d84611373ba301706c6b4b72283c80f.0x54d3652a with:
         gas gas_remaining wei
        args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 1476 len 1152]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d6437da7(?) {
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25.next_summoner() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
    call ????????????????????????????????????????.summon(uint256 arg1) with:
         gas gas_remaining wei
        args 11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
    call ????????????????????????????????????????.0x23b872dd with:
         gas gas_remaining wei
        args this.address, msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
    call ????????????????????????????????????????.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 132] = 8
    mem[ceil32(return_data.size) + 164] = 15
    mem[ceil32(return_data.size) + 196] = 10
    mem[ceil32(return_data.size) + 228] = 18
    mem[ceil32(return_data.size) + 260] = 11
    mem[ceil32(return_data.size) + 292] = 11
    require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
    call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 8, 15, 10, 18, 11, 11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
    call ????????????????????????????????????????.adventure(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96] = 0
    mem[(2 * ceil32(return_data.size)) + 128] = 0
    mem[(2 * ceil32(return_data.size)) + 160] = 0
    mem[(2 * ceil32(return_data.size)) + 192] = 0
    mem[(2 * ceil32(return_data.size)) + 224] = 0
    mem[(2 * ceil32(return_data.size)) + 256] = 0
    mem[(2 * ceil32(return_data.size)) + 288] = 1
    mem[(2 * ceil32(return_data.size)) + 320] = 0
    mem[(2 * ceil32(return_data.size)) + 352] = 1
    mem[(2 * ceil32(return_data.size)) + 384] = 0
    mem[(2 * ceil32(return_data.size)) + 416] = 1
    mem[(2 * ceil32(return_data.size)) + 448] = 2
    mem[(2 * ceil32(return_data.size)) + 480] = 0
    mem[(2 * ceil32(return_data.size)) + 512] = 0
    mem[(2 * ceil32(return_data.size)) + 544] = 0
    mem[(2 * ceil32(return_data.size)) + 576] = 2
    mem[(2 * ceil32(return_data.size)) + 608] = 1
    mem[(2 * ceil32(return_data.size)) + 640] = 1
    mem[(2 * ceil32(return_data.size)) + 672] = 1
    mem[(2 * ceil32(return_data.size)) + 704] = 0
    mem[(2 * ceil32(return_data.size)) + 736] = 0
    mem[(2 * ceil32(return_data.size)) + 768] = 0
    mem[(2 * ceil32(return_data.size)) + 800] = 0
    mem[(2 * ceil32(return_data.size)) + 832] = 0
    mem[(2 * ceil32(return_data.size)) + 864] = 0
    mem[(2 * ceil32(return_data.size)) + 896] = 2
    mem[(2 * ceil32(return_data.size)) + 928] = 0
    mem[(2 * ceil32(return_data.size)) + 960] = 0
    mem[(2 * ceil32(return_data.size)) + 992] = 0
    mem[(2 * ceil32(return_data.size)) + 1024] = 2
    mem[(2 * ceil32(return_data.size)) + 1056] = 0
    mem[(2 * ceil32(return_data.size)) + 1088] = 0
    mem[(2 * ceil32(return_data.size)) + 1120] = 0
    mem[(2 * ceil32(return_data.size)) + 1152] = 0
    mem[(2 * ceil32(return_data.size)) + 1184] = 0
    mem[(2 * ceil32(return_data.size)) + 1216] = 0
    mem[(2 * ceil32(return_data.size)) + 1248] = 0x54d3652a00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 1252] = ext_call.return_data[0]
    idx = 0
    s = (2 * ceil32(return_data.size)) + 96
    t = (2 * ceil32(return_data.size)) + 1284
    while idx < 36:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x51c0b29a1d84611373ba301706c6b4b72283c80f)
    call 0x51c0b29a1d84611373ba301706c6b4b72283c80f.0x54d3652a with:
         gas gas_remaining wei
        args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 1284 len 1152]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x8da5cb5b(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x150b7a02(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 128
            require cd[4] == address(cd[4])
            require cd[36] == address(cd[36])
            require cd[100] <= test266151307()
            require cd[100] + 35 < calldata.size
            if ('cd', 100).length > test266151307():
                revert with 0, 65
            if ceil32(ceil32(('cd', 100).length)) + 129 < 128 or ceil32(ceil32(('cd', 100).length)) + 129 > test266151307():
                revert with 0, 65
            require cd[100] + ('cd', 100).length + 36 <= calldata.size
            return 0x150b7a0200000000000000000000000000000000000000000000000000000000
        if unknown_0x2957ea1c(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            if owner != msg.sender:
                revert with 0, 'Caller is not owner'
            require cd[4] <= cd[36]
            if cd[36] < cd[4]:
                revert with 0, 17
            if var32002 > cd[36] - cd[4]:
            if var36001 > !cd[4]:
                revert with 0, 17
            mem[128] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
            mem[132] = this.address
            mem[164] = var40001
            require ext_code.size(var40004)
            call var42002.mem[var42004 len 4] with:
                 gas gas_remaining wei
                args mem[var42004 + 4 len var42005 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if var46001 == -1:
                revert with 0, 17
            if cd[36] < cd[4]:
                revert with 0, 17
            if var58002 > cd[36] - cd[4]:
            if var62001 > !cd[4]:
                revert with 0, 17
            # nil
        else:
            if unknown_0x394a2e07(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] <= cd[36]
                if cd[36] < cd[4]:
                    revert with 0, 17
                if var33002 > cd[36] - cd[4]:
                if var37001 > !cd[4]:
                    revert with 0, 17
                require ext_code.size(var39006)
                call var39006.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args (var39002 + cd[4])
                s = var39002 + cd[4]
                s = var39006
                s = var39007
                while ext_call.success:
                    if s == -1:
                        revert with 0, 17
                    if cd[36] < cd[4]:
                        revert with 0, 17
                    if s + 1 > cd[36] - cd[4]:
                    if s + 1 > !cd[4]:
                        revert with 0, 17
                    mem[128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                    mem[132] = s + cd[4] + 2
                    require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
                    call ????????????????????????????????????????.adventure(uint256 arg1) with:
                         gas gas_remaining wei
                        args (s + cd[4] + 2)
                    s = s + cd[4] + 1
                    s = 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25
                    s = s + 1
                    continue 
                revert with ext_call.return_data[0 len return_data.size]
            if unknown_0x7467b99c(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 256
                require 99 < calldata.size
                mem[64] = 320
                require calldata.size >= 260
                idx = 0
                s = 68
                t = 128
                while idx < 6:
                    require cd[s] == uint32(cd[s])
                    mem[t] = cd[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require cd[4] <= cd[36]
                if cd[36] < cd[4]:
                    revert with 0, 17
                if var43002 > cd[36] - cd[4]:
                if var47001 > !cd[4]:
                    revert with 0, 17
                mem[320] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                mem[var53001] = var53008
                mem[var53001 + 32] = uint32(var53007)
                mem[var53001 + 64] = uint32(var53006)
                mem[var53001 + 96] = uint32(var53005)
                mem[var53001 + 128] = uint32(var53004)
                mem[var53001 + 160] = uint32(var53003)
                mem[var53001 + 192] = uint32(var53002)
                require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.mem[var57004 len 4] with:
                     gas gas_remaining wei
                    args mem[var57004 + 4 len var57005 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if var61001 == -1:
                    revert with 0, 17
                if cd[36] < cd[4]:
                    revert with 0, 17
                # nil
            else:
                require unknown_0x7766731a(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 1376
                require 67 < calldata.size
                require calldata.size >= 228
                idx = 0
                s = 36
                t = 128
                while idx < 6:
                    require cd[s] == uint32(cd[s])
                    mem[t] = cd[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require 259 < calldata.size
                require 1380 <= calldata.size
                idx = 0
                s = 228
                t = 320
                while idx < 36:
                    require cd[s] == uint8(cd[s])
                    mem[t] = cd[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25.next_summoner() with:
                        gas gas_remaining wei
                mem[1472] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
                call ????????????????????????????????????????.summon(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
                call ????????????????????????????????????????.0x23b872dd with:
                     gas gas_remaining wei
                    args this.address, msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 1472] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
                call ????????????????????????????????????????.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 1476] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 1508] = mem[156 len 4]
                mem[ceil32(return_data.size) + 1540] = mem[188 len 4]
                mem[ceil32(return_data.size) + 1572] = mem[220 len 4]
                mem[ceil32(return_data.size) + 1604] = mem[252 len 4]
                mem[ceil32(return_data.size) + 1636] = mem[284 len 4]
                mem[ceil32(return_data.size) + 1668] = mem[316 len 4]
                require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[128] << 224, mem[160] << 224, mem[192] << 224, mem[224] << 224, mem[256] << 224, mem[316 len 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
                call ????????????????????????????????????????.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 1472] = 0x54d3652a00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 1476] = ext_call.return_data[0]
                idx = 0
                s = 320
                t = (2 * ceil32(return_data.size)) + 1508
                while idx < 36:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0x51c0b29a1d84611373ba301706c6b4b72283c80f)
                call 0x51c0b29a1d84611373ba301706c6b4b72283c80f.0x54d3652a with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 1508 len 1152]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return owner
        if unknown_0x9c2e2929(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] <= cd[36]
            if cd[36] < cd[4]:
                revert with 0, 17
            if var35002 > cd[36] - cd[4]:
            if var39001 > !cd[4]:
                revert with 0, 17
            mem[132] = var41002 + cd[4]
            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args (var41002 + cd[4])
            mem[128] = ext_call.return_data[0]
            s = var41002 + cd[4]
            s = var41007
            while ext_call.success:
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s == -1:
                    revert with 0, 17
                if cd[36] < cd[4]:
                    revert with 0, 17
                if s + 1 > cd[36] - cd[4]:
                if s + 1 > !cd[4]:
                    revert with 0, 17
                mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                mem[132] = s + cd[4] + 2
                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len -mem[64] + 160]
                mem[mem[64]] = ext_call.return_data[0]
                s = s + cd[4] + 1
                s = s + 1
                continue 
            revert with ext_call.return_data[0 len return_data.size]
        if unknown_0xa6f9dae1(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            if owner != msg.sender:
                revert with 0, 'Caller is not owner'
            owner = address(cd[4])
            emit OwnerSet(address(cd[4]), address(cd[4]));
        else:
            if unknown_0xb0e11e62(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 96
                if owner != msg.sender:
                    revert with 0, 'Caller is not owner'
                if cd[36] < cd[4]:
                    revert with 0, 17
                if var46002 > cd[36] - cd[4]:
                if var50001 > !cd[4]:
                    revert with 0, 17
                mem[132] = var52002 + cd[4]
                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.balanceOf(uint256 arg1) with:
                     gas gas_remaining wei
                    args (var52002 + cd[4])
                mem[128] = ext_call.return_data[0]
                s = var52002 + cd[4]
                s = var52008
                while ext_call.success:
                    _352 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _354 = mem[_352]
                    if s > !cd[4]:
                        revert with 0, 17
                    mem[mem[64] + 4] = s + cd[4]
                    mem[mem[64] + 36] = cd[68]
                    mem[mem[64] + 68] = _354
                    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args s + cd[4], cd[68], _354
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _361 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_361] == bool(mem[_361])
                    if s == -1:
                        revert with 0, 17
                    if cd[36] < cd[4]:
                        revert with 0, 17
                    if s + 1 > cd[36] - cd[4]:
                    if s + 1 > !cd[4]:
                        revert with 0, 17
                    mem[mem[64]] = 0x9cc7f70800000000000000000000000000000000000000000000000000000000
                    mem[132] = s + cd[4] + 2
                    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.balanceOf(uint256 arg1) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len -mem[64] + 160]
                    mem[mem[64]] = ext_call.return_data[0]
                    s = s + cd[4] + 1
                    s = s + 1
                    continue 
                revert with ext_call.return_data[0 len return_data.size]
            if unknown_0xbb219c5d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                idx = 0
                s = 0
                while idx < cd[4]:
                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25)
                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25.next_summoner() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _86 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _92 = mem[_86]
                    require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
                    call ????????????????????????????????????????.summon(uint256 arg1) with:
                         gas gas_remaining wei
                        args cd[36]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _92
                    require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
                    call ????????????????????????????????????????.0x23b872dd with:
                         gas gas_remaining wei
                        args this.address, msg.sender, _92
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _92
                    continue 
            else:
                require unknown_0xd6437da7(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25.next_summoner() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
                call ????????????????????????????????????????.summon(uint256 arg1) with:
                     gas gas_remaining wei
                    args 11
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
                call ????????????????????????????????????????.0x23b872dd with:
                     gas gas_remaining wei
                    args this.address, msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
                call ????????????????????????????????????????.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 164] = 8
                mem[ceil32(return_data.size) + 196] = 15
                mem[ceil32(return_data.size) + 228] = 10
                mem[ceil32(return_data.size) + 260] = 18
                mem[ceil32(return_data.size) + 292] = 11
                mem[ceil32(return_data.size) + 324] = 11
                require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 8, 15, 10, 18, 11, 11
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
                call ????????????????????????????????????????.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 128] = 0
                mem[(2 * ceil32(return_data.size)) + 160] = 0
                mem[(2 * ceil32(return_data.size)) + 192] = 0
                mem[(2 * ceil32(return_data.size)) + 224] = 0
                mem[(2 * ceil32(return_data.size)) + 256] = 0
                mem[(2 * ceil32(return_data.size)) + 288] = 0
                mem[(2 * ceil32(return_data.size)) + 320] = 1
                mem[(2 * ceil32(return_data.size)) + 352] = 0
                mem[(2 * ceil32(return_data.size)) + 384] = 1
                mem[(2 * ceil32(return_data.size)) + 416] = 0
                mem[(2 * ceil32(return_data.size)) + 448] = 1
                mem[(2 * ceil32(return_data.size)) + 480] = 2
                mem[(2 * ceil32(return_data.size)) + 512] = 0
                mem[(2 * ceil32(return_data.size)) + 544] = 0
                mem[(2 * ceil32(return_data.size)) + 576] = 0
                mem[(2 * ceil32(return_data.size)) + 608] = 2
                mem[(2 * ceil32(return_data.size)) + 640] = 1
                mem[(2 * ceil32(return_data.size)) + 672] = 1
                mem[(2 * ceil32(return_data.size)) + 704] = 1
                mem[(2 * ceil32(return_data.size)) + 736] = 0
                mem[(2 * ceil32(return_data.size)) + 768] = 0
                mem[(2 * ceil32(return_data.size)) + 800] = 0
                mem[(2 * ceil32(return_data.size)) + 832] = 0
                mem[(2 * ceil32(return_data.size)) + 864] = 0
                mem[(2 * ceil32(return_data.size)) + 896] = 0
                mem[(2 * ceil32(return_data.size)) + 928] = 2
                mem[(2 * ceil32(return_data.size)) + 960] = 0
                mem[(2 * ceil32(return_data.size)) + 992] = 0
                mem[(2 * ceil32(return_data.size)) + 1024] = 0
                mem[(2 * ceil32(return_data.size)) + 1056] = 2
                mem[(2 * ceil32(return_data.size)) + 1088] = 0
                mem[(2 * ceil32(return_data.size)) + 1120] = 0
                mem[(2 * ceil32(return_data.size)) + 1152] = 0
                mem[(2 * ceil32(return_data.size)) + 1184] = 0
                mem[(2 * ceil32(return_data.size)) + 1216] = 0
                mem[(2 * ceil32(return_data.size)) + 1248] = 0
                mem[(2 * ceil32(return_data.size)) + 1280] = 0x54d3652a00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 1284] = ext_call.return_data[0]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (2 * ceil32(return_data.size)) + 1316
                while idx < 36:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0x51c0b29a1d84611373ba301706c6b4b72283c80f)
                call 0x51c0b29a1d84611373ba301706c6b4b72283c80f.0x54d3652a with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 1316 len 1152]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
