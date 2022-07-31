contract main {




// =====================  Runtime code  =====================


const isOwner = (msg.sender == ext_call.return_data[12 len 20])

const DEFAULT_ADMIN_ROLE = 0


address owner;
mapping of struct roleAdmin;

function sub_0650ffde(?) payable {
    return bool(roleAdmin[0x5620a1113a72b02a617976b3f6b15600dd7a8b3a916a9ca01e23119d989a0543][address(msg.sender)].field_0)
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
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

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'EP: HAS_NO_TOKEN'
    require ext_code.size(this.address)
    staticcall this.address.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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

function removeStaff(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[roleAdmin[0x5620a1113a72b02a617976b3f6b15600dd7a8b3a916a9ca01e23119d989a0543].field_256][address(msg.sender)].field_0:
        if roleAdmin[0x5620a1113a72b02a617976b3f6b15600dd7a8b3a916a9ca01e23119d989a0543][address(arg1)].field_0:
            roleAdmin[0x5620a1113a72b02a617976b3f6b15600dd7a8b3a916a9ca01e23119d989a0543][address(arg1)].field_0 = 0
            emit RoleRevoked(0x5620a1113a72b02a617976b3f6b15600dd7a8b3a916a9ca01e23119d989a0543, arg1, msg.sender);
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
    s = roleAdmin[0x5620a1113a72b02a617976b3f6b15600dd7a8b3a916a9ca01e23119d989a0543].field_256
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
    if roleAdmin[0x5620a1113a72b02a617976b3f6b15600dd7a8b3a916a9ca01e23119d989a0543].field_256 + 16384:
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

function addStaff(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[roleAdmin[0x5620a1113a72b02a617976b3f6b15600dd7a8b3a916a9ca01e23119d989a0543].field_256][address(msg.sender)].field_0:
        if not roleAdmin[0x5620a1113a72b02a617976b3f6b15600dd7a8b3a916a9ca01e23119d989a0543][address(arg1)].field_0:
            roleAdmin[0x5620a1113a72b02a617976b3f6b15600dd7a8b3a916a9ca01e23119d989a0543][address(arg1)].field_0 = 1
            emit RoleGranted(0x5620a1113a72b02a617976b3f6b15600dd7a8b3a916a9ca01e23119d989a0543, arg1, msg.sender);
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
    s = roleAdmin[0x5620a1113a72b02a617976b3f6b15600dd7a8b3a916a9ca01e23119d989a0543].field_256
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
    if roleAdmin[0x5620a1113a72b02a617976b3f6b15600dd7a8b3a916a9ca01e23119d989a0543].field_256 + 16384:
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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
    if not roleAdmin[roleAdmin[0].field_256][address(msg.sender)].field_0:
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
        s = roleAdmin[0].field_256
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
    else:
        if not roleAdmin[0][address(arg1)].field_0:
            roleAdmin[0][address(arg1)].field_0 = 1
            emit RoleGranted(0, arg1, msg.sender);
        if roleAdmin[roleAdmin[0].field_256][address(msg.sender)].field_0:
            if roleAdmin[0][address(msg.sender)].field_0:
                roleAdmin[0][address(msg.sender)].field_0 = 0
                emit RoleRevoked(0, msg.sender, msg.sender);
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
        s = roleAdmin[0].field_256
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
    if roleAdmin[0].field_256 + 16384:
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

function sub_f448a616(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if arg6 < block.timestamp:
        revert with 0, 'EP: EXPIRED'
    if not roleAdmin[0x5620a1113a72b02a617976b3f6b15600dd7a8b3a916a9ca01e23119d989a0543][address(msg.sender)].field_0:
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
        if not msg.sender + 10240:
            idx = 65
            s = 0x5620a1113a72b02a617976b3f6b15600dd7a8b3a916a9ca01e23119d989a0543
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
        revert with 0, 'Strings: hex length insufficient'
    if address(arg2) == address(arg3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if address(arg2) < address(arg3):
        if not address(arg2):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(address(arg1))
        staticcall address(arg1).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg4 <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
        if address(arg2) == address(arg2):
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if arg4 and 997 > -1 / arg4:
                revert with 'NH{q', 17
            if 997 * arg4 / 997 != arg4:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[50 len 14]:
                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] > (-997 * arg4) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg4):
                    revert with 'NH{q', 18
                if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) < arg5:
                    revert with 0, 'EP: INSUFFICIENT_OUTPUT_AMOUNT'
                mem[ceil32(return_data.size) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(arg1), arg4, mem[ceil32(return_data.size) + 228 len 28]
                mem[ceil32(return_data.size) + 328] = 0
                call address(arg2).mem[ceil32(return_data.size) + 228 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 232 len 96]
                if address(arg2) == address(arg2):
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                        mem[ceil32(return_data.size) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 264] = 0
                        mem[ceil32(return_data.size) + 296] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                        mem[ceil32(return_data.size) + 328] = msg.sender
                        mem[ceil32(return_data.size) + 360] = 128
                        mem[ceil32(return_data.size) + 392] = mem[ceil32(return_data.size) + 228]
                        mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])] = mem[ceil32(return_data.size) + 260 len ceil32(mem[ceil32(return_data.size) + 228])]
                        if ceil32(mem[ceil32(return_data.size) + 228]) > mem[ceil32(return_data.size) + 228]:
                            mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 228] + 424] = 0
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), msg.sender, 128, mem[ceil32(return_data.size) + 228], mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])]
                    else:
                        mem[ceil32(return_data.size) + 228] = return_data.size
                        mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
                            if not mem[ceil32(return_data.size) + 260]:
                                revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 0
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = msg.sender
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 128
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
                        if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]:
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 229] + 425] = 0
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), msg.sender, 128, mem[ceil32(return_data.size) + ceil32(return_data.size) + 229], mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
                else:
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                        mem[ceil32(return_data.size) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 264] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                        mem[ceil32(return_data.size) + 296] = 0
                        mem[ceil32(return_data.size) + 328] = msg.sender
                        mem[ceil32(return_data.size) + 360] = 128
                        mem[ceil32(return_data.size) + 392] = mem[ceil32(return_data.size) + 228]
                        mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])] = mem[ceil32(return_data.size) + 260 len ceil32(mem[ceil32(return_data.size) + 228])]
                        if ceil32(mem[ceil32(return_data.size) + 228]) > mem[ceil32(return_data.size) + 228]:
                            mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 228] + 424] = 0
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), 0, msg.sender, 128, mem[ceil32(return_data.size) + 228], mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])]
                    else:
                        mem[ceil32(return_data.size) + 228] = return_data.size
                        mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
                            if not mem[ceil32(return_data.size) + 260]:
                                revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = 0
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = msg.sender
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 128
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
                        if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]:
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 229] + 425] = 0
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), 0, msg.sender, 128, mem[ceil32(return_data.size) + ceil32(return_data.size) + 229], mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Swap(arg4, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), msg.sender, address(arg1), address(arg2));
                return (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4))
            if 997 * arg4 and ext_call.return_data[50 len 14] > -1 / 997 * arg4:
                revert with 'NH{q', 17
            if not ext_call.return_data[50 len 14]:
                revert with 'NH{q', 18
            if 997 * arg4 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * arg4:
                revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * ext_call.return_data[18 len 14] > (-997 * arg4) - 1:
                revert with 'NH{q', 17
            if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[18 len 14]:
                revert with 0, 'ds-math-add-overflow'
            if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg4):
                revert with 'NH{q', 18
            if 997 * arg4 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) < arg5:
                revert with 0, 'EP: INSUFFICIENT_OUTPUT_AMOUNT'
            mem[ceil32(return_data.size) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(arg1), arg4, mem[ceil32(return_data.size) + 228 len 28]
            mem[ceil32(return_data.size) + 328] = 0
            call address(arg2).mem[ceil32(return_data.size) + 228 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 232 len 96]
            if address(arg2) == address(arg2):
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    mem[ceil32(return_data.size) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 264] = 0
                    mem[ceil32(return_data.size) + 296] = 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                    mem[ceil32(return_data.size) + 328] = msg.sender
                    mem[ceil32(return_data.size) + 360] = 128
                    mem[ceil32(return_data.size) + 392] = mem[ceil32(return_data.size) + 228]
                    mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])] = mem[ceil32(return_data.size) + 260 len ceil32(mem[ceil32(return_data.size) + 228])]
                    if ceil32(mem[ceil32(return_data.size) + 228]) > mem[ceil32(return_data.size) + 228]:
                        mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 228] + 424] = 0
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), msg.sender, 128, mem[ceil32(return_data.size) + 228], mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])]
                else:
                    mem[ceil32(return_data.size) + 228] = return_data.size
                    mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
                        if not mem[ceil32(return_data.size) + 260]:
                            revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 0
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = msg.sender
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 128
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
                    if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 229] + 425] = 0
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), msg.sender, 128, mem[ceil32(return_data.size) + ceil32(return_data.size) + 229], mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
            else:
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    mem[ceil32(return_data.size) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 264] = 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                    mem[ceil32(return_data.size) + 296] = 0
                    mem[ceil32(return_data.size) + 328] = msg.sender
                    mem[ceil32(return_data.size) + 360] = 128
                    mem[ceil32(return_data.size) + 392] = mem[ceil32(return_data.size) + 228]
                    mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])] = mem[ceil32(return_data.size) + 260 len ceil32(mem[ceil32(return_data.size) + 228])]
                    if ceil32(mem[ceil32(return_data.size) + 228]) > mem[ceil32(return_data.size) + 228]:
                        mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 228] + 424] = 0
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), 0, msg.sender, 128, mem[ceil32(return_data.size) + 228], mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])]
                else:
                    mem[ceil32(return_data.size) + 228] = return_data.size
                    mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
                        if not mem[ceil32(return_data.size) + 260]:
                            revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = 0
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = msg.sender
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 128
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
                    if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 229] + 425] = 0
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), 0, msg.sender, 128, mem[ceil32(return_data.size) + ceil32(return_data.size) + 229], mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Swap(arg4, 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), msg.sender, address(arg1), address(arg2));
            return (997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4))
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if arg4 and 997 > -1 / arg4:
            revert with 'NH{q', 17
        if 997 * arg4 / 997 != arg4:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[18 len 14]:
            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * ext_call.return_data[50 len 14] > (-997 * arg4) - 1:
                revert with 'NH{q', 17
            if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-add-overflow'
            if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg4):
                revert with 'NH{q', 18
            if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) < arg5:
                revert with 0, 'EP: INSUFFICIENT_OUTPUT_AMOUNT'
            mem[ceil32(return_data.size) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(arg1), arg4, mem[ceil32(return_data.size) + 228 len 28]
            mem[ceil32(return_data.size) + 328] = 0
            call address(arg2).mem[ceil32(return_data.size) + 228 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 232 len 96]
            if address(arg2) == address(arg2):
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    mem[ceil32(return_data.size) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 264] = 0
                    mem[ceil32(return_data.size) + 296] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                    mem[ceil32(return_data.size) + 328] = msg.sender
                    mem[ceil32(return_data.size) + 360] = 128
                    mem[ceil32(return_data.size) + 392] = mem[ceil32(return_data.size) + 228]
                    mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])] = mem[ceil32(return_data.size) + 260 len ceil32(mem[ceil32(return_data.size) + 228])]
                    if ceil32(mem[ceil32(return_data.size) + 228]) > mem[ceil32(return_data.size) + 228]:
                        mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 228] + 424] = 0
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), msg.sender, 128, mem[ceil32(return_data.size) + 228], mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])]
                else:
                    mem[ceil32(return_data.size) + 228] = return_data.size
                    mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
                        if not mem[ceil32(return_data.size) + 260]:
                            revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 0
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = msg.sender
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 128
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
                    if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 229] + 425] = 0
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), msg.sender, 128, mem[ceil32(return_data.size) + ceil32(return_data.size) + 229], mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
            else:
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    mem[ceil32(return_data.size) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 264] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                    mem[ceil32(return_data.size) + 296] = 0
                    mem[ceil32(return_data.size) + 328] = msg.sender
                    mem[ceil32(return_data.size) + 360] = 128
                    mem[ceil32(return_data.size) + 392] = mem[ceil32(return_data.size) + 228]
                    mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])] = mem[ceil32(return_data.size) + 260 len ceil32(mem[ceil32(return_data.size) + 228])]
                    if ceil32(mem[ceil32(return_data.size) + 228]) > mem[ceil32(return_data.size) + 228]:
                        mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 228] + 424] = 0
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), 0, msg.sender, 128, mem[ceil32(return_data.size) + 228], mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])]
                else:
                    mem[ceil32(return_data.size) + 228] = return_data.size
                    mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
                        if not mem[ceil32(return_data.size) + 260]:
                            revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = 0
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = msg.sender
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 128
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
                    if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 229] + 425] = 0
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), 0, msg.sender, 128, mem[ceil32(return_data.size) + ceil32(return_data.size) + 229], mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Swap(arg4, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), msg.sender, address(arg1), address(arg2));
            return (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4))
        if 997 * arg4 and ext_call.return_data[18 len 14] > -1 / 997 * arg4:
            revert with 'NH{q', 17
        if not ext_call.return_data[18 len 14]:
            revert with 'NH{q', 18
        if 997 * arg4 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * arg4:
            revert with 0, 'ds-math-mul-overflow'
        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
            revert with 0, 'ds-math-mul-overflow'
        if 1000 * ext_call.return_data[50 len 14] > (-997 * arg4) - 1:
            revert with 'NH{q', 17
        if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[50 len 14]:
            revert with 0, 'ds-math-add-overflow'
        if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg4):
            revert with 'NH{q', 18
        if 997 * arg4 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) < arg5:
            revert with 0, 'EP: INSUFFICIENT_OUTPUT_AMOUNT'
        mem[ceil32(return_data.size) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(arg1), arg4, mem[ceil32(return_data.size) + 228 len 28]
        mem[ceil32(return_data.size) + 328] = 0
        call address(arg2).mem[ceil32(return_data.size) + 228 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 232 len 96]
        if address(arg2) == address(arg2):
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                mem[ceil32(return_data.size) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 264] = 0
                mem[ceil32(return_data.size) + 296] = 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                mem[ceil32(return_data.size) + 328] = msg.sender
                mem[ceil32(return_data.size) + 360] = 128
                mem[ceil32(return_data.size) + 392] = mem[ceil32(return_data.size) + 228]
                mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])] = mem[ceil32(return_data.size) + 260 len ceil32(mem[ceil32(return_data.size) + 228])]
                if ceil32(mem[ceil32(return_data.size) + 228]) > mem[ceil32(return_data.size) + 228]:
                    mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 228] + 424] = 0
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), msg.sender, 128, mem[ceil32(return_data.size) + 228], mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])]
            else:
                mem[ceil32(return_data.size) + 228] = return_data.size
                mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
                    if not mem[ceil32(return_data.size) + 260]:
                        revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 0
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = msg.sender
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 128
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
                if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]:
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 229] + 425] = 0
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), msg.sender, 128, mem[ceil32(return_data.size) + ceil32(return_data.size) + 229], mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
        else:
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                mem[ceil32(return_data.size) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 264] = 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                mem[ceil32(return_data.size) + 296] = 0
                mem[ceil32(return_data.size) + 328] = msg.sender
                mem[ceil32(return_data.size) + 360] = 128
                mem[ceil32(return_data.size) + 392] = mem[ceil32(return_data.size) + 228]
                mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])] = mem[ceil32(return_data.size) + 260 len ceil32(mem[ceil32(return_data.size) + 228])]
                if ceil32(mem[ceil32(return_data.size) + 228]) > mem[ceil32(return_data.size) + 228]:
                    mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 228] + 424] = 0
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), 0, msg.sender, 128, mem[ceil32(return_data.size) + 228], mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])]
            else:
                mem[ceil32(return_data.size) + 228] = return_data.size
                mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
                    if not mem[ceil32(return_data.size) + 260]:
                        revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = 0
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = msg.sender
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 128
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
                if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]:
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 229] + 425] = 0
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), 0, msg.sender, 128, mem[ceil32(return_data.size) + ceil32(return_data.size) + 229], mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
    else:
        if not address(arg3):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(address(arg1))
        staticcall address(arg1).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg4 <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
        if address(arg2) == address(arg3):
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if arg4 and 997 > -1 / arg4:
                revert with 'NH{q', 17
            if 997 * arg4 / 997 != arg4:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[50 len 14]:
                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] > (-997 * arg4) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg4):
                    revert with 'NH{q', 18
                if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) < arg5:
                    revert with 0, 'EP: INSUFFICIENT_OUTPUT_AMOUNT'
                mem[ceil32(return_data.size) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(arg1), arg4, mem[ceil32(return_data.size) + 228 len 28]
                mem[ceil32(return_data.size) + 328] = 0
                call address(arg2).mem[ceil32(return_data.size) + 228 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 232 len 96]
                if address(arg2) == address(arg3):
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                        mem[ceil32(return_data.size) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 264] = 0
                        mem[ceil32(return_data.size) + 296] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                        mem[ceil32(return_data.size) + 328] = msg.sender
                        mem[ceil32(return_data.size) + 360] = 128
                        mem[ceil32(return_data.size) + 392] = mem[ceil32(return_data.size) + 228]
                        mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])] = mem[ceil32(return_data.size) + 260 len ceil32(mem[ceil32(return_data.size) + 228])]
                        if ceil32(mem[ceil32(return_data.size) + 228]) > mem[ceil32(return_data.size) + 228]:
                            mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 228] + 424] = 0
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), msg.sender, 128, mem[ceil32(return_data.size) + 228], mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])]
                    else:
                        mem[ceil32(return_data.size) + 228] = return_data.size
                        mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
                            if not mem[ceil32(return_data.size) + 260]:
                                revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 0
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = msg.sender
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 128
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
                        if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]:
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 229] + 425] = 0
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), msg.sender, 128, mem[ceil32(return_data.size) + ceil32(return_data.size) + 229], mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
                else:
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                        mem[ceil32(return_data.size) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 264] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                        mem[ceil32(return_data.size) + 296] = 0
                        mem[ceil32(return_data.size) + 328] = msg.sender
                        mem[ceil32(return_data.size) + 360] = 128
                        mem[ceil32(return_data.size) + 392] = mem[ceil32(return_data.size) + 228]
                        mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])] = mem[ceil32(return_data.size) + 260 len ceil32(mem[ceil32(return_data.size) + 228])]
                        if ceil32(mem[ceil32(return_data.size) + 228]) > mem[ceil32(return_data.size) + 228]:
                            mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 228] + 424] = 0
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), 0, msg.sender, 128, mem[ceil32(return_data.size) + 228], mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])]
                    else:
                        mem[ceil32(return_data.size) + 228] = return_data.size
                        mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
                            if not mem[ceil32(return_data.size) + 260]:
                                revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = 0
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = msg.sender
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 128
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
                        if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]:
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 229] + 425] = 0
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), 0, msg.sender, 128, mem[ceil32(return_data.size) + ceil32(return_data.size) + 229], mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Swap(arg4, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), msg.sender, address(arg1), address(arg2));
                return (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4))
            if 997 * arg4 and ext_call.return_data[50 len 14] > -1 / 997 * arg4:
                revert with 'NH{q', 17
            if not ext_call.return_data[50 len 14]:
                revert with 'NH{q', 18
            if 997 * arg4 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * arg4:
                revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * ext_call.return_data[18 len 14] > (-997 * arg4) - 1:
                revert with 'NH{q', 17
            if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[18 len 14]:
                revert with 0, 'ds-math-add-overflow'
            if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg4):
                revert with 'NH{q', 18
            if 997 * arg4 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) < arg5:
                revert with 0, 'EP: INSUFFICIENT_OUTPUT_AMOUNT'
            mem[ceil32(return_data.size) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(arg1), arg4, mem[ceil32(return_data.size) + 228 len 28]
            mem[ceil32(return_data.size) + 328] = 0
            call address(arg2).mem[ceil32(return_data.size) + 228 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 232 len 96]
            if address(arg2) == address(arg3):
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    mem[ceil32(return_data.size) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 264] = 0
                    mem[ceil32(return_data.size) + 296] = 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                    mem[ceil32(return_data.size) + 328] = msg.sender
                    mem[ceil32(return_data.size) + 360] = 128
                    mem[ceil32(return_data.size) + 392] = mem[ceil32(return_data.size) + 228]
                    mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])] = mem[ceil32(return_data.size) + 260 len ceil32(mem[ceil32(return_data.size) + 228])]
                    if ceil32(mem[ceil32(return_data.size) + 228]) > mem[ceil32(return_data.size) + 228]:
                        mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 228] + 424] = 0
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), msg.sender, 128, mem[ceil32(return_data.size) + 228], mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])]
                else:
                    mem[ceil32(return_data.size) + 228] = return_data.size
                    mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
                        if not mem[ceil32(return_data.size) + 260]:
                            revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 0
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = msg.sender
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 128
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
                    if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 229] + 425] = 0
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), msg.sender, 128, mem[ceil32(return_data.size) + ceil32(return_data.size) + 229], mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
            else:
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    mem[ceil32(return_data.size) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 264] = 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                    mem[ceil32(return_data.size) + 296] = 0
                    mem[ceil32(return_data.size) + 328] = msg.sender
                    mem[ceil32(return_data.size) + 360] = 128
                    mem[ceil32(return_data.size) + 392] = mem[ceil32(return_data.size) + 228]
                    mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])] = mem[ceil32(return_data.size) + 260 len ceil32(mem[ceil32(return_data.size) + 228])]
                    if ceil32(mem[ceil32(return_data.size) + 228]) > mem[ceil32(return_data.size) + 228]:
                        mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 228] + 424] = 0
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), 0, msg.sender, 128, mem[ceil32(return_data.size) + 228], mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])]
                else:
                    mem[ceil32(return_data.size) + 228] = return_data.size
                    mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
                        if not mem[ceil32(return_data.size) + 260]:
                            revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4)
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = 0
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = msg.sender
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 128
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
                    if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 229] + 425] = 0
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), 0, msg.sender, 128, mem[ceil32(return_data.size) + ceil32(return_data.size) + 229], mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Swap(arg4, 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), msg.sender, address(arg1), address(arg2));
            return (997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4))
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if arg4 and 997 > -1 / arg4:
            revert with 'NH{q', 17
        if 997 * arg4 / 997 != arg4:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[18 len 14]:
            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * ext_call.return_data[50 len 14] > (-997 * arg4) - 1:
                revert with 'NH{q', 17
            if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-add-overflow'
            if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg4):
                revert with 'NH{q', 18
            if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) < arg5:
                revert with 0, 'EP: INSUFFICIENT_OUTPUT_AMOUNT'
            mem[ceil32(return_data.size) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(arg1), arg4, mem[ceil32(return_data.size) + 228 len 28]
            mem[ceil32(return_data.size) + 328] = 0
            call address(arg2).mem[ceil32(return_data.size) + 228 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 232 len 96]
            if address(arg2) == address(arg3):
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    mem[ceil32(return_data.size) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 264] = 0
                    mem[ceil32(return_data.size) + 296] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                    mem[ceil32(return_data.size) + 328] = msg.sender
                    mem[ceil32(return_data.size) + 360] = 128
                    mem[ceil32(return_data.size) + 392] = mem[ceil32(return_data.size) + 228]
                    mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])] = mem[ceil32(return_data.size) + 260 len ceil32(mem[ceil32(return_data.size) + 228])]
                    if ceil32(mem[ceil32(return_data.size) + 228]) > mem[ceil32(return_data.size) + 228]:
                        mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 228] + 424] = 0
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), msg.sender, 128, mem[ceil32(return_data.size) + 228], mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])]
                else:
                    mem[ceil32(return_data.size) + 228] = return_data.size
                    mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
                        if not mem[ceil32(return_data.size) + 260]:
                            revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 0
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = msg.sender
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 128
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
                    if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 229] + 425] = 0
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), msg.sender, 128, mem[ceil32(return_data.size) + ceil32(return_data.size) + 229], mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
            else:
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    mem[ceil32(return_data.size) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 264] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                    mem[ceil32(return_data.size) + 296] = 0
                    mem[ceil32(return_data.size) + 328] = msg.sender
                    mem[ceil32(return_data.size) + 360] = 128
                    mem[ceil32(return_data.size) + 392] = mem[ceil32(return_data.size) + 228]
                    mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])] = mem[ceil32(return_data.size) + 260 len ceil32(mem[ceil32(return_data.size) + 228])]
                    if ceil32(mem[ceil32(return_data.size) + 228]) > mem[ceil32(return_data.size) + 228]:
                        mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 228] + 424] = 0
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), 0, msg.sender, 128, mem[ceil32(return_data.size) + 228], mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])]
                else:
                    mem[ceil32(return_data.size) + 228] = return_data.size
                    mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
                        if not mem[ceil32(return_data.size) + 260]:
                            revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = 0
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = msg.sender
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 128
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
                    if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 229] + 425] = 0
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), 0, msg.sender, 128, mem[ceil32(return_data.size) + ceil32(return_data.size) + 229], mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Swap(arg4, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), msg.sender, address(arg1), address(arg2));
            return (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4))
        if 997 * arg4 and ext_call.return_data[18 len 14] > -1 / 997 * arg4:
            revert with 'NH{q', 17
        if not ext_call.return_data[18 len 14]:
            revert with 'NH{q', 18
        if 997 * arg4 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * arg4:
            revert with 0, 'ds-math-mul-overflow'
        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
            revert with 0, 'ds-math-mul-overflow'
        if 1000 * ext_call.return_data[50 len 14] > (-997 * arg4) - 1:
            revert with 'NH{q', 17
        if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[50 len 14]:
            revert with 0, 'ds-math-add-overflow'
        if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg4):
            revert with 'NH{q', 18
        if 997 * arg4 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) < arg5:
            revert with 0, 'EP: INSUFFICIENT_OUTPUT_AMOUNT'
        mem[ceil32(return_data.size) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(arg1), arg4, mem[ceil32(return_data.size) + 228 len 28]
        mem[ceil32(return_data.size) + 328] = 0
        call address(arg2).mem[ceil32(return_data.size) + 228 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 232 len 96]
        if address(arg2) == address(arg3):
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                mem[ceil32(return_data.size) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 264] = 0
                mem[ceil32(return_data.size) + 296] = 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                mem[ceil32(return_data.size) + 328] = msg.sender
                mem[ceil32(return_data.size) + 360] = 128
                mem[ceil32(return_data.size) + 392] = mem[ceil32(return_data.size) + 228]
                mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])] = mem[ceil32(return_data.size) + 260 len ceil32(mem[ceil32(return_data.size) + 228])]
                if ceil32(mem[ceil32(return_data.size) + 228]) > mem[ceil32(return_data.size) + 228]:
                    mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 228] + 424] = 0
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), msg.sender, 128, mem[ceil32(return_data.size) + 228], mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])]
            else:
                mem[ceil32(return_data.size) + 228] = return_data.size
                mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
                    if not mem[ceil32(return_data.size) + 260]:
                        revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 0
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = msg.sender
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 128
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
                if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]:
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 229] + 425] = 0
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), msg.sender, 128, mem[ceil32(return_data.size) + ceil32(return_data.size) + 229], mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
        else:
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                mem[ceil32(return_data.size) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 264] = 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                mem[ceil32(return_data.size) + 296] = 0
                mem[ceil32(return_data.size) + 328] = msg.sender
                mem[ceil32(return_data.size) + 360] = 128
                mem[ceil32(return_data.size) + 392] = mem[ceil32(return_data.size) + 228]
                mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])] = mem[ceil32(return_data.size) + 260 len ceil32(mem[ceil32(return_data.size) + 228])]
                if ceil32(mem[ceil32(return_data.size) + 228]) > mem[ceil32(return_data.size) + 228]:
                    mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 228] + 424] = 0
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), 0, msg.sender, 128, mem[ceil32(return_data.size) + 228], mem[ceil32(return_data.size) + 424 len ceil32(mem[ceil32(return_data.size) + 228])]
            else:
                mem[ceil32(return_data.size) + 228] = return_data.size
                mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
                    if not mem[ceil32(return_data.size) + 260]:
                        revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4)
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = 0
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = msg.sender
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 128
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
                if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 229]:
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 229] + 425] = 0
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), 0, msg.sender, 128, mem[ceil32(return_data.size) + ceil32(return_data.size) + 229], mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 229])]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Swap(arg4, 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), msg.sender, address(arg1), address(arg2));
    return (997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4))
}



}
