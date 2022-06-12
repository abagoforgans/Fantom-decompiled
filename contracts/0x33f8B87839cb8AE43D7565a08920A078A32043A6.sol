contract main {




// =====================  Runtime code  =====================


const sub_3690875a(?) = 0x3bc1558a6ad95d74963e8a566e2b2ccb65a820b2d6fcb884721c9137aedeaf1e

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
address owner;
address rmAddress;
address slAddress;
array of struct stor4;
array of struct stor5;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function rm() payable {
    return rmAddress
}

function sl() payable {
    return slAddress
}

function owner() payable {
    return owner
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
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

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
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

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function withDraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor4[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 4)
        if arg1 != stor4[address(msg.sender)][idx].field_0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= stor4[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        stor4[address(msg.sender)][idx].field_0 = 0
        require ext_code.size(rmAddress)
        call rmAddress.0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_23420f6f(?) payable {
    if stor5[address(msg.sender)].field_0:
        mem[128] = stor5[address(msg.sender)].field_0
        idx = 128
        s = 0
        while (32 * stor5[address(msg.sender)].field_0) + 96 > idx:
            mem[idx + 32] = stor5[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor5[address(msg.sender)].field_0, data=mem[128 len 32 * stor5[address(msg.sender)].field_0])
    mem[(32 * stor5[address(msg.sender)].field_0) + 128] = 32
    mem[(32 * stor5[address(msg.sender)].field_0) + 160] = stor5[address(msg.sender)].field_0
    mem[(32 * stor5[address(msg.sender)].field_0) + 192 len 32 * stor5[address(msg.sender)].field_0] = mem[128 len 32 * stor5[address(msg.sender)].field_0]
    return memory
      from (32 * stor5[address(msg.sender)].field_0) + 128
       len (96 * stor5[address(msg.sender)].field_0) + 64
}

function sub_2d825b73(?) payable {
    if stor4[address(msg.sender)].field_0:
        mem[128] = stor4[address(msg.sender)].field_0
        idx = 128
        s = 0
        while (32 * stor4[address(msg.sender)].field_0) + 96 > idx:
            mem[idx + 32] = stor4[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor4[address(msg.sender)].field_0, data=mem[128 len 32 * stor4[address(msg.sender)].field_0])
    mem[(32 * stor4[address(msg.sender)].field_0) + 128] = 32
    mem[(32 * stor4[address(msg.sender)].field_0) + 160] = stor4[address(msg.sender)].field_0
    mem[(32 * stor4[address(msg.sender)].field_0) + 192 len 32 * stor4[address(msg.sender)].field_0] = mem[128 len 32 * stor4[address(msg.sender)].field_0]
    return memory
      from (32 * stor4[address(msg.sender)].field_0) + 128
       len (96 * stor4[address(msg.sender)].field_0) + 64
}

function sub_991671e2(?) payable {
    idx = 0
    while idx < stor4[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 4)
        if stor4[address(msg.sender)][idx].field_0:
            if idx >= stor4[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(msg.sender), 4)
            stor4[address(msg.sender)][idx].field_0 = 0
            mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[100] = this.address
            mem[132] = msg.sender
            mem[164] = stor4[address(msg.sender)][idx].field_0
            require ext_code.size(rmAddress)
            call rmAddress.0x42842e0e with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, stor4[address(msg.sender)][idx].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_ef524948(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
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
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if mem[(32 * idx) + 128]:
            stor5[address(msg.sender)].field_0++
            mem[0] = sha3(address(msg.sender), 5)
            stor5[address(msg.sender)][stor5[address(msg.sender)].field_0].field_0 = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function adventure(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x3bc1558a6ad95d74963e8a566e2b2ccb65a820b2d6fcb884721c9137aedeaf1e][address(msg.sender)].field_0:
        require ext_code.size(slAddress)
        staticcall slAddress.0xe00fd543 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(slAddress)
        staticcall slAddress.0xc5572d65 with:
                gas gas_remaining wei
               args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'You are not eligible!'
    require ext_code.size(rmAddress)
    call rmAddress.0xb00b52f1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function whitelist(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(0x3bc1558a6ad95d74963e8a566e2b2ccb65a820b2d6fcb884721c9137aedeaf1e, 0)
        if not roleAdmin[0x3bc1558a6ad95d74963e8a566e2b2ccb65a820b2d6fcb884721c9137aedeaf1e][address(mem[(32 * idx) + 128])].field_0:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(0x3bc1558a6ad95d74963e8a566e2b2ccb65a820b2d6fcb884721c9137aedeaf1e, 0)
            roleAdmin[0x3bc1558a6ad95d74963e8a566e2b2ccb65a820b2d6fcb884721c9137aedeaf1e][address(mem[(32 * idx) + 128])].field_0 = 1
            emit RoleGranted(0x3bc1558a6ad95d74963e8a566e2b2ccb65a820b2d6fcb884721c9137aedeaf1e, mem[(32 * idx) + 140 len 20], msg.sender);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function summon(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x3bc1558a6ad95d74963e8a566e2b2ccb65a820b2d6fcb884721c9137aedeaf1e][address(msg.sender)].field_0:
        require ext_code.size(slAddress)
        staticcall slAddress.0xe00fd543 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(slAddress)
        staticcall slAddress.0xc5572d65 with:
                gas gas_remaining wei
               args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'You are not eligible!'
    require ext_code.size(rmAddress)
    staticcall rmAddress.next_summoner() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    stor4[address(msg.sender)].field_0++
    stor4[address(msg.sender)][stor4[address(msg.sender)].field_0].field_0 = ext_call.return_data[0]
    require ext_code.size(rmAddress)
    call rmAddress.summon(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function sub_7573d2c7(?) payable {
    if roleAdmin[0x3bc1558a6ad95d74963e8a566e2b2ccb65a820b2d6fcb884721c9137aedeaf1e][address(msg.sender)].field_0:
        idx = 0
        while idx < stor4[address(msg.sender)].field_0:
            mem[0] = sha3(address(msg.sender), 4)
            if stor4[address(msg.sender)][idx].field_0:
                mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                mem[100] = stor4[address(msg.sender)][idx].field_0
                require ext_code.size(rmAddress)
                call rmAddress.0xb00b52f1 with:
                     gas gas_remaining wei
                    args stor4[address(msg.sender)][idx].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        require ext_code.size(slAddress)
        staticcall slAddress.0xe00fd543 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(slAddress)
        staticcall slAddress.0xc5572d65 with:
                gas gas_remaining wei
               args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'You are not eligible!'
        idx = 0
        while idx < stor4[address(msg.sender)].field_0:
            mem[0] = sha3(address(msg.sender), 4)
            if stor4[address(msg.sender)][idx].field_0:
                mem[(2 * ceil32(return_data.size)) + 96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = stor4[address(msg.sender)][idx].field_0
                require ext_code.size(rmAddress)
                call rmAddress.0xb00b52f1 with:
                     gas gas_remaining wei
                    args stor4[address(msg.sender)][idx].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function sub_25024e15(?) payable {
    mem[64] = 96
    if roleAdmin[0x3bc1558a6ad95d74963e8a566e2b2ccb65a820b2d6fcb884721c9137aedeaf1e][address(msg.sender)].field_0:
        mem[0] = msg.sender
        mem[32] = 4
        idx = 1
        while idx <= 11:
            require ext_code.size(rmAddress)
            staticcall rmAddress.next_summoner() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _33 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _35 = mem[_33]
            require mem[_33] == mem[_33]
            stor4[address(msg.sender)].field_0++
            mem[0] = sha3(address(msg.sender), 4)
            stor4[address(msg.sender)][stor4[address(msg.sender)].field_0].field_0 = _35
            mem[mem[64]] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = idx
            require ext_code.size(rmAddress)
            call rmAddress.summon(uint256 arg1) with:
                 gas gas_remaining wei
                args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        require ext_code.size(slAddress)
        staticcall slAddress.0xe00fd543 with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(return_data.size) + 100] = msg.sender
        mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
        require ext_code.size(slAddress)
        staticcall slAddress.0xc5572d65 with:
                gas gas_remaining wei
               args msg.sender, ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'You are not eligible!'
        mem[0] = msg.sender
        mem[32] = 4
        idx = 1
        while idx <= 11:
            require ext_code.size(rmAddress)
            staticcall rmAddress.next_summoner() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _34 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _36 = mem[_34]
            require mem[_34] == mem[_34]
            stor4[address(msg.sender)].field_0++
            mem[0] = sha3(address(msg.sender), 4)
            stor4[address(msg.sender)][stor4[address(msg.sender)].field_0].field_0 = _36
            mem[mem[64]] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = idx
            require ext_code.size(rmAddress)
            call rmAddress.summon(uint256 arg1) with:
                 gas gas_remaining wei
                args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function sub_757aa3d1(?) payable {
    if roleAdmin[0x3bc1558a6ad95d74963e8a566e2b2ccb65a820b2d6fcb884721c9137aedeaf1e][address(msg.sender)].field_0:
        if not stor5[address(msg.sender)].field_0:
            idx = 0
            while idx < stor5[address(msg.sender)].field_0:
                if idx >= stor5[address(msg.sender)].field_0:
                    revert with 'NH{q', 50
                _33 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 128]:
                    mem[(32 * stor5[address(msg.sender)].field_0) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor5[address(msg.sender)].field_0) + 132] = _33
                    require ext_code.size(rmAddress)
                    call rmAddress.0xb00b52f1 with:
                         gas gas_remaining wei
                        args _33
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            mem[128] = stor5[address(msg.sender)].field_0
            idx = 128
            s = 0
            while (32 * stor5[address(msg.sender)].field_0) + 96 > idx:
                mem[idx + 32] = stor5[address(msg.sender)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            idx = 0
            while idx < stor5[address(msg.sender)].field_0:
                if idx >= stor5[address(msg.sender)].field_0:
                    revert with 'NH{q', 50
                _53 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 128]:
                    mem[(32 * stor5[address(msg.sender)].field_0) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor5[address(msg.sender)].field_0) + 132] = _53
                    require ext_code.size(rmAddress)
                    call rmAddress.0xb00b52f1 with:
                         gas gas_remaining wei
                        args _53
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    else:
        require ext_code.size(slAddress)
        staticcall slAddress.0xe00fd543 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(return_data.size) + 100] = msg.sender
        mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
        require ext_code.size(slAddress)
        staticcall slAddress.0xc5572d65 with:
                gas gas_remaining wei
               args msg.sender, ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'You are not eligible!'
        if not stor5[address(msg.sender)].field_0:
            idx = 0
            while idx < stor5[address(msg.sender)].field_0:
                if idx >= stor5[address(msg.sender)].field_0:
                    revert with 'NH{q', 50
                _34 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]:
                    mem[(2 * ceil32(return_data.size)) + (32 * stor5[address(msg.sender)].field_0) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + (32 * stor5[address(msg.sender)].field_0) + 132] = _34
                    require ext_code.size(rmAddress)
                    call rmAddress.0xb00b52f1 with:
                         gas gas_remaining wei
                        args _34
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            mem[(2 * ceil32(return_data.size)) + 128] = stor5[address(msg.sender)].field_0
            idx = (2 * ceil32(return_data.size)) + 128
            s = 0
            while (2 * ceil32(return_data.size)) + (32 * stor5[address(msg.sender)].field_0) + 96 > idx:
                mem[idx + 32] = stor5[address(msg.sender)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            idx = 0
            while idx < stor5[address(msg.sender)].field_0:
                if idx >= stor5[address(msg.sender)].field_0:
                    revert with 'NH{q', 50
                _54 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]:
                    mem[(2 * ceil32(return_data.size)) + (32 * stor5[address(msg.sender)].field_0) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + (32 * stor5[address(msg.sender)].field_0) + 132] = _54
                    require ext_code.size(rmAddress)
                    call rmAddress.0xb00b52f1 with:
                         gas gas_remaining wei
                        args _54
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
}



}
