contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
uint256 sub_98bc695d;
uint256 sub_01de2351;
uint256 sub_583d5a83;
address stor4;
address sub_842b047eAddress;
address fsTokenAddress;
mapping of struct sub_4e22d704;
mapping of struct sub_595f0617;
array of struct sub_85913a5b;

function sub_01de2351(?) payable {
    return sub_01de2351
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function sub_4e22d704(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(sub_4e22d704[address(arg1)].field_0) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet has currently no NFT staked'
    if bool(sub_595f0617[address(arg1)].field_0) == 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet has staked FS Tokens and not NFTs'
    return sub_4e22d704[address(msg.sender)].field_256
}

function sub_583d5a83(?) payable {
    return sub_583d5a83
}

function sub_595f0617(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(sub_595f0617[arg1].field_0), 
           sub_595f0617[arg1].field_256,
           sub_595f0617[arg1].field_512,
           sub_595f0617[arg1].field_768,
           sub_595f0617[arg1].field_1024,
           sub_595f0617[arg1].field_1280
}

function sub_5af933bf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(sub_4e22d704[arg1].field_0), 
           sub_4e22d704[arg1].field_256,
           sub_4e22d704[arg1].field_512,
           sub_4e22d704[arg1].field_768,
           sub_4e22d704[arg1].field_1024
}

function fsToken() payable {
    return fsTokenAddress
}

function sub_76b9bbe6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(sub_4e22d704[address(arg1)].field_0) == 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet has staked NFTs and not FS tokens'
    if bool(sub_595f0617[address(arg1)].field_0) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet has currently no FS Tokens staked'
    return sub_595f0617[address(msg.sender)].field_256
}

function sub_842b047e(?) payable {
    return sub_842b047eAddress
}

function sub_85913a5b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_85913a5b.length
    return bool(sub_85913a5b[arg1].field_0), 
           sub_85913a5b[arg1].field_256,
           sub_85913a5b[arg1].field_512,
           sub_85913a5b[arg1].field_768,
           sub_85913a5b[arg1].field_1024
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_98bc695d(?) payable {
    return sub_98bc695d
}

function _fallback() payable {
    revert
}

function sub_b55c4eb5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(sub_595f0617[address(arg1)].field_0) != 1:
        return 0
    return 1
}

function sub_ddadd90f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(sub_4e22d704[address(arg1)].field_0) != 1:
        return 0
    return 1
}

function sub_11aec429(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Account is not in the admin list'
    sub_98bc695d = arg1
}

function sub_5a2f80a0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Account is not in the admin list'
    sub_01de2351 = arg1
}

function setDevWalletAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Account is not in the admin list'
    stor4 = arg1
}

function sub_a2b70e59(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Account is not in the admin list'
    sub_842b047eAddress = address(arg1)
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

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x4e2312e000000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_554a7060(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Account is not in the admin list'
    if arg1 >= 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You cannot withhold more than 99 percent'
    if arg1 < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You need to withhold at least 1 percent'
    sub_583d5a83 = arg1
}

function sub_5040df9a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_4e22d704[address(arg1)].field_768 and 24 * 3600 > -1 / sub_4e22d704[address(arg1)].field_768:
        revert with 'NH{q', 17
    if sub_4e22d704[address(arg1)].field_512 > (-86400 * sub_4e22d704[address(arg1)].field_768) - 1:
        revert with 'NH{q', 17
    if sub_4e22d704[address(arg1)].field_512 + (24 * 3600 * sub_4e22d704[address(arg1)].field_768) < block.timestamp:
        return 1
    else:
        return 0
}

function sub_d92456cb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_595f0617[address(arg1)].field_1024 and 24 * 3600 > -1 / sub_595f0617[address(arg1)].field_1024:
        revert with 'NH{q', 17
    if sub_595f0617[address(arg1)].field_768 > (-86400 * sub_595f0617[address(arg1)].field_1024) - 1:
        revert with 'NH{q', 17
    if sub_595f0617[address(arg1)].field_768 + (24 * 3600 * sub_595f0617[address(arg1)].field_1024) < block.timestamp:
        return 1
    else:
        return 0
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg5.length)) + 97 > test266151307() or ceil32(ceil32(arg5.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function sub_46d77162(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_842b047eAddress)
    staticcall sub_842b047eAddress.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'You do not own this NFT'
    if bool(sub_4e22d704[address(msg.sender)].field_0) == 1:
        revert with 0, 'You have already staked NFTs'
    if bool(sub_595f0617[address(msg.sender)].field_0) == 1:
        revert with 0, 'You have already staked FSTokens'
    require ext_code.size(sub_842b047eAddress)
    call sub_842b047eAddress.0xf242432a with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1, 1, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_4e22d704[address(msg.sender)].field_0 = 1
    sub_4e22d704[address(msg.sender)].field_256 = arg1
    sub_4e22d704[address(msg.sender)].field_512 = block.timestamp
    sub_4e22d704[address(msg.sender)].field_768 = sub_98bc695d
    sub_4e22d704[address(msg.sender)].field_1024 = sub_01de2351
    emit 0xae60b3ca: msg.sender, arg1
}

function sub_587e7736(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(sub_4e22d704[address(arg1)].field_0) != 1:
        revert with 0, 'You have currently no NFT staked'
    if sub_4e22d704[address(arg1)].field_768 and 24 * 3600 > -1 / sub_4e22d704[address(arg1)].field_768:
        revert with 'NH{q', 17
    if sub_4e22d704[address(arg1)].field_512 > (-86400 * sub_4e22d704[address(arg1)].field_768) - 1:
        revert with 'NH{q', 17
    if sub_4e22d704[address(arg1)].field_512 + (24 * 3600 * sub_4e22d704[address(arg1)].field_768) >= block.timestamp:
        revert with 0, 'Lockup period still pending'
    if sub_4e22d704[address(arg1)].field_1024 and 24 * 3600 > -1 / sub_4e22d704[address(arg1)].field_1024:
        revert with 'NH{q', 17
    if sub_4e22d704[address(arg1)].field_768 and 24 * 3600 > -1 / sub_4e22d704[address(arg1)].field_768:
        revert with 'NH{q', 17
    if sub_4e22d704[address(arg1)].field_512 > (-86400 * sub_4e22d704[address(arg1)].field_768) - 1:
        revert with 'NH{q', 17
    if sub_4e22d704[address(arg1)].field_512 + (24 * 3600 * sub_4e22d704[address(arg1)].field_768) > (-86400 * sub_4e22d704[address(arg1)].field_1024) - 1:
        revert with 'NH{q', 17
    if sub_4e22d704[address(arg1)].field_512 + (24 * 3600 * sub_4e22d704[address(arg1)].field_768) + (24 * 3600 * sub_4e22d704[address(arg1)].field_1024) < block.timestamp:
        return 1
    else:
        return 0
}

function sub_11983e53(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(sub_4e22d704[address(arg1)].field_0) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet has currently no NFT staked'
    if bool(sub_595f0617[address(arg1)].field_0) == 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet has staked FS Tokens and not NFTs'
    if sub_4e22d704[address(arg1)].field_768 and 24 * 3600 > -1 / sub_4e22d704[address(arg1)].field_768:
        revert with 'NH{q', 17
    if sub_4e22d704[address(arg1)].field_512 > (-86400 * sub_4e22d704[address(arg1)].field_768) - 1:
        revert with 'NH{q', 17
    if sub_4e22d704[address(arg1)].field_512 + (24 * 3600 * sub_4e22d704[address(arg1)].field_768) < block.timestamp:
        revert with 'NH{q', 17
    if sub_4e22d704[address(arg1)].field_512 + (24 * 3600 * sub_4e22d704[address(arg1)].field_768) - block.timestamp <= 0:
        return 0
    if sub_4e22d704[address(arg1)].field_768 and 24 * 3600 > -1 / sub_4e22d704[address(arg1)].field_768:
        revert with 'NH{q', 17
    if sub_4e22d704[address(arg1)].field_512 > (-86400 * sub_4e22d704[address(arg1)].field_768) - 1:
        revert with 'NH{q', 17
    if sub_4e22d704[address(arg1)].field_512 + (24 * 3600 * sub_4e22d704[address(arg1)].field_768) < block.timestamp:
        revert with 'NH{q', 17
    return (sub_4e22d704[address(arg1)].field_512 + (24 * 3600 * sub_4e22d704[address(arg1)].field_768) - block.timestamp)
}

function sub_2d52f68c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(sub_4e22d704[address(arg1)].field_0) == 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet has staked NFTs and not FS tokens'
    if bool(sub_595f0617[address(arg1)].field_0) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet has currently no FS Tokens staked'
    if sub_595f0617[address(arg1)].field_1024 and 24 * 3600 > -1 / sub_595f0617[address(arg1)].field_1024:
        revert with 'NH{q', 17
    if sub_595f0617[address(arg1)].field_768 > (-86400 * sub_595f0617[address(arg1)].field_1024) - 1:
        revert with 'NH{q', 17
    if sub_595f0617[address(arg1)].field_768 + (24 * 3600 * sub_595f0617[address(arg1)].field_1024) < block.timestamp:
        revert with 'NH{q', 17
    if sub_595f0617[address(arg1)].field_768 + (24 * 3600 * sub_595f0617[address(arg1)].field_1024) - block.timestamp <= 0:
        return 0
    if sub_595f0617[address(arg1)].field_1024 and 24 * 3600 > -1 / sub_595f0617[address(arg1)].field_1024:
        revert with 'NH{q', 17
    if sub_595f0617[address(arg1)].field_768 > (-86400 * sub_595f0617[address(arg1)].field_1024) - 1:
        revert with 'NH{q', 17
    if sub_595f0617[address(arg1)].field_768 + (24 * 3600 * sub_595f0617[address(arg1)].field_1024) < block.timestamp:
        revert with 'NH{q', 17
    return (sub_595f0617[address(arg1)].field_768 + (24 * 3600 * sub_595f0617[address(arg1)].field_1024) - block.timestamp)
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + 97 > test266151307() or floor32(arg3.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = arg3 + 36
    s = 128
    while idx < arg3 + (32 * arg3.length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + floor32(arg4.length) + 98 > test266151307() or floor32(arg4.length) + 98 < 97:
        revert with 'NH{q', 65
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = arg4 + 36
    s = floor32(arg3.length) + 129
    while idx < arg4 + (32 * arg4.length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99 > test266151307() or ceil32(ceil32(arg5.length)) + 99 < 98:
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
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

function sub_90273901(?) payable {
    if bool(sub_4e22d704[address(msg.sender)].field_0) != 1:
        revert with 0, 'You have currently no NFT staked'
    if sub_4e22d704[address(msg.sender)].field_768 and 24 * 3600 > -1 / sub_4e22d704[address(msg.sender)].field_768:
        revert with 'NH{q', 17
    if sub_4e22d704[address(msg.sender)].field_512 > (-86400 * sub_4e22d704[address(msg.sender)].field_768) - 1:
        revert with 'NH{q', 17
    if sub_4e22d704[address(msg.sender)].field_512 + (24 * 3600 * sub_4e22d704[address(msg.sender)].field_768) >= block.timestamp:
        revert with 0, 'Lockup period still pending'
    if bool(sub_4e22d704[address(msg.sender)].field_0) != 1:
        revert with 0, 'You have currently no NFT staked'
    if sub_4e22d704[address(msg.sender)].field_768 and 24 * 3600 > -1 / sub_4e22d704[address(msg.sender)].field_768:
        revert with 'NH{q', 17
    if sub_4e22d704[address(msg.sender)].field_512 > (-86400 * sub_4e22d704[address(msg.sender)].field_768) - 1:
        revert with 'NH{q', 17
    if sub_4e22d704[address(msg.sender)].field_512 + (24 * 3600 * sub_4e22d704[address(msg.sender)].field_768) >= block.timestamp:
        revert with 0, 'Lockup period still pending'
    if sub_4e22d704[address(msg.sender)].field_1024 and 24 * 3600 > -1 / sub_4e22d704[address(msg.sender)].field_1024:
        revert with 'NH{q', 17
    if sub_4e22d704[address(msg.sender)].field_768 and 24 * 3600 > -1 / sub_4e22d704[address(msg.sender)].field_768:
        revert with 'NH{q', 17
    if sub_4e22d704[address(msg.sender)].field_512 > (-86400 * sub_4e22d704[address(msg.sender)].field_768) - 1:
        revert with 'NH{q', 17
    if sub_4e22d704[address(msg.sender)].field_512 + (24 * 3600 * sub_4e22d704[address(msg.sender)].field_768) > (-86400 * sub_4e22d704[address(msg.sender)].field_1024) - 1:
        revert with 'NH{q', 17
    if sub_4e22d704[address(msg.sender)].field_512 + (24 * 3600 * sub_4e22d704[address(msg.sender)].field_768) + (24 * 3600 * sub_4e22d704[address(msg.sender)].field_1024) >= block.timestamp:
        revert with 0, 'You need to wait for the cool down period to expire'
    require ext_code.size(sub_842b047eAddress)
    call sub_842b047eAddress.0xf242432a with:
         gas gas_remaining wei
        args address(this.address), msg.sender, sub_4e22d704[address(msg.sender)].field_256, 1, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_4e22d704[address(msg.sender)].field_0 = 0
    sub_4e22d704[address(msg.sender)].field_256 = 0
    sub_4e22d704[address(msg.sender)].field_512 = 0
    sub_4e22d704[address(msg.sender)].field_768 = 0
    sub_4e22d704[address(msg.sender)].field_1024 = 0
    emit 0xb04b5893: msg.sender, sub_4e22d704[address(msg.sender)].field_256
}

function sub_d87b59cc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = msg.sender
    require ext_code.size(fsTokenAddress)
    staticcall fsTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'You do not own enough tokens to stake'
    if bool(sub_4e22d704[address(msg.sender)].field_0) == 1:
        revert with 0, 'You have already staked NFTs'
    if bool(sub_595f0617[address(msg.sender)].field_0) != 1:
        revert with 0, 'You do not have staked FSTokens'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(fsTokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
    mem[ceil32(return_data.size) + 392] = 0
    call fsTokenAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if sub_595f0617[address(msg.sender)].field_256 > -arg1 - 1:
        revert with 'NH{q', 17
    sub_595f0617[address(msg.sender)].field_256 += arg1
    sub_595f0617[address(msg.sender)].field_768 = block.timestamp
    emit 0x7d9127a7: msg.sender, arg1
}

function sub_35f63aff(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = msg.sender
    require ext_code.size(fsTokenAddress)
    staticcall fsTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'You do not own enough tokens to stake'
    if bool(sub_4e22d704[address(msg.sender)].field_0) == 1:
        revert with 0, 'You have already staked NFTs'
    if bool(sub_595f0617[address(msg.sender)].field_0) == 1:
        revert with 0, 'You have already staked FSTokens'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(fsTokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
    mem[ceil32(return_data.size) + 392] = 0
    call fsTokenAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    sub_595f0617[address(msg.sender)].field_0 = 1
    sub_595f0617[address(msg.sender)].field_256 = arg1
    sub_595f0617[address(msg.sender)].field_512 = sub_583d5a83
    sub_595f0617[address(msg.sender)].field_768 = block.timestamp
    sub_595f0617[address(msg.sender)].field_1024 = sub_98bc695d
    sub_595f0617[address(msg.sender)].field_1280 = sub_01de2351
    emit 0x7d9127a7: msg.sender, arg1
}

function sub_c213fa59(?) payable {
    if bool(sub_595f0617[address(msg.sender)].field_0) != 1:
        revert with 0, 'You have no FSTokens staked'
    mem[128] = sub_595f0617[address(msg.sender)].field_256
    mem[160] = sub_595f0617[address(msg.sender)].field_512
    mem[192] = sub_595f0617[address(msg.sender)].field_768
    mem[224] = sub_595f0617[address(msg.sender)].field_1024
    mem[256] = sub_595f0617[address(msg.sender)].field_1280
    if sub_595f0617[address(msg.sender)].field_1024 and 24 * 3600 > -1 / sub_595f0617[address(msg.sender)].field_1024:
        revert with 'NH{q', 17
    if sub_595f0617[address(msg.sender)].field_768 > (-86400 * sub_595f0617[address(msg.sender)].field_1024) - 1:
        revert with 'NH{q', 17
    if sub_595f0617[address(msg.sender)].field_768 + (24 * 3600 * sub_595f0617[address(msg.sender)].field_1024) >= block.timestamp:
        revert with 0, 'Lockup period still pending'
    mem[288] = bool(sub_595f0617[address(msg.sender)].field_0)
    mem[320] = sub_595f0617[address(msg.sender)].field_256
    mem[352] = sub_595f0617[address(msg.sender)].field_512
    mem[384] = sub_595f0617[address(msg.sender)].field_768
    mem[416] = sub_595f0617[address(msg.sender)].field_1024
    mem[448] = sub_595f0617[address(msg.sender)].field_1280
    mem[516] = msg.sender
    mem[548] = sub_595f0617[address(msg.sender)].field_256
    mem[480] = 68
    mem[516 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[512 len 4] = unknown_0xa9059cbb(?????)
    mem[580] = 32
    mem[612] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(fsTokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[644 len 96] = unknown_0xa9059cbb(?????), msg.sender, sub_595f0617[address(msg.sender)].field_256, 0
    mem[712] = 0
    call fsTokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, sub_595f0617[address(msg.sender)].field_256, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, sub_595f0617[address(msg.sender)].field_256, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if bool(sub_595f0617[address(msg.sender)].field_0) > 0:
                revert with memory
                  from 128
                   len bool(sub_595f0617[address(msg.sender)].field_0)
            revert with 0, 'SafeERC20: low-level call failed'
        if bool(sub_595f0617[address(msg.sender)].field_0) > 0:
            require bool(sub_595f0617[address(msg.sender)].field_0) >= 32
            require sub_595f0617[address(msg.sender)].field_256 == bool(sub_595f0617[address(msg.sender)].field_256)
            if not sub_595f0617[address(msg.sender)].field_256:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[676] == bool(mem[676])
            if not mem[676]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    sub_595f0617[address(msg.sender)].field_0 = 0
    sub_595f0617[address(msg.sender)].field_256 = 0
    sub_595f0617[address(msg.sender)].field_512 = 0
    sub_595f0617[address(msg.sender)].field_768 = 0
    sub_595f0617[address(msg.sender)].field_1024 = 0
    sub_595f0617[address(msg.sender)].field_1280 = 0
    emit 0x39440036: msg.sender, sub_595f0617[address(msg.sender)].field_256
}

function sub_4409eea1(?) payable {
    if bool(sub_595f0617[address(msg.sender)].field_0) != 1:
        revert with 0, 'You have no FSTokens staked'
    mem[128] = sub_595f0617[address(msg.sender)].field_256
    mem[160] = sub_595f0617[address(msg.sender)].field_512
    mem[192] = sub_595f0617[address(msg.sender)].field_768
    mem[224] = sub_595f0617[address(msg.sender)].field_1024
    mem[256] = sub_595f0617[address(msg.sender)].field_1280
    if sub_595f0617[address(msg.sender)].field_1024 and 24 * 3600 > -1 / sub_595f0617[address(msg.sender)].field_1024:
        revert with 'NH{q', 17
    if sub_595f0617[address(msg.sender)].field_768 > (-86400 * sub_595f0617[address(msg.sender)].field_1024) - 1:
        revert with 'NH{q', 17
    if sub_595f0617[address(msg.sender)].field_768 + (24 * 3600 * sub_595f0617[address(msg.sender)].field_1024) < block.timestamp:
        revert with 0, 'Lockup period has expired'
    mem[288] = bool(sub_595f0617[address(msg.sender)].field_0)
    mem[320] = sub_595f0617[address(msg.sender)].field_256
    mem[352] = sub_595f0617[address(msg.sender)].field_512
    mem[384] = sub_595f0617[address(msg.sender)].field_768
    mem[416] = sub_595f0617[address(msg.sender)].field_1024
    mem[448] = sub_595f0617[address(msg.sender)].field_1280
    if 100 < sub_595f0617[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if sub_595f0617[address(msg.sender)].field_256 and -sub_595f0617[address(msg.sender)].field_512 + 100 > -1 / sub_595f0617[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if sub_595f0617[address(msg.sender)].field_256 and sub_595f0617[address(msg.sender)].field_512 > -1 / sub_595f0617[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    mem[516] = msg.sender
    mem[548] = (100 * sub_595f0617[address(msg.sender)].field_256) - (sub_595f0617[address(msg.sender)].field_512 * sub_595f0617[address(msg.sender)].field_256) / 100
    mem[480] = 68
    mem[516 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[512 len 4] = unknown_0xa9059cbb(?????)
    mem[580] = 32
    mem[612] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(fsTokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[644 len 96] = unknown_0xa9059cbb(?????), msg.sender, (100 * sub_595f0617[address(msg.sender)].field_256) - (sub_595f0617[address(msg.sender)].field_512 * sub_595f0617[address(msg.sender)].field_256) / 100, 0
    mem[712] = 0
    call fsTokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (100 * sub_595f0617[address(msg.sender)].field_256) - (sub_595f0617[address(msg.sender)].field_512 * sub_595f0617[address(msg.sender)].field_256) / 100, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (100 * sub_595f0617[address(msg.sender)].field_256) - (sub_595f0617[address(msg.sender)].field_512 * sub_595f0617[address(msg.sender)].field_256) / 100, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if bool(sub_595f0617[address(msg.sender)].field_0) > 0:
                revert with memory
                  from 128
                   len bool(sub_595f0617[address(msg.sender)].field_0)
            revert with 0, 'SafeERC20: low-level call failed'
        if bool(sub_595f0617[address(msg.sender)].field_0) > 0:
            require bool(sub_595f0617[address(msg.sender)].field_0) >= 32
            require sub_595f0617[address(msg.sender)].field_256 == bool(sub_595f0617[address(msg.sender)].field_256)
            if not sub_595f0617[address(msg.sender)].field_256:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[680] = stor4
        mem[712] = sub_595f0617[address(msg.sender)].field_256 * sub_595f0617[address(msg.sender)].field_512 / 100
        mem[644] = 68
        mem[676 len 4] = unknown_0xa9059cbb(?????)
        mem[744] = 32
        mem[776] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(fsTokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[808 len 96] = 0, stor4, sub_595f0617[address(msg.sender)].field_256 * sub_595f0617[address(msg.sender)].field_512 / 100, 0
        mem[876] = 0
        call fsTokenAddress with:
           funct Mask(32, 224, 0, stor4, sub_595f0617[address(msg.sender)].field_256 * sub_595f0617[address(msg.sender)].field_512 / 100, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, stor4, sub_595f0617[address(msg.sender)].field_256 * sub_595f0617[address(msg.sender)].field_512 / 100, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if bool(sub_595f0617[address(msg.sender)].field_0) > 0:
                    revert with memory
                      from 128
                       len bool(sub_595f0617[address(msg.sender)].field_0)
                revert with 0, 'SafeERC20: low-level call failed'
            if bool(sub_595f0617[address(msg.sender)].field_0) > 0:
                require bool(sub_595f0617[address(msg.sender)].field_0) >= 32
                require sub_595f0617[address(msg.sender)].field_256 == bool(sub_595f0617[address(msg.sender)].field_256)
                if not sub_595f0617[address(msg.sender)].field_256:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[840 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[840] == bool(mem[840])
                if not mem[840]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        sub_595f0617[address(msg.sender)].field_0 = 0
        sub_595f0617[address(msg.sender)].field_256 = 0
        sub_595f0617[address(msg.sender)].field_512 = 0
        sub_595f0617[address(msg.sender)].field_768 = 0
        sub_595f0617[address(msg.sender)].field_1024 = 0
        sub_595f0617[address(msg.sender)].field_1280 = 0
        emit 0xa20e94ac: msg.sender, (100 * sub_595f0617[address(msg.sender)].field_256) - (sub_595f0617[address(msg.sender)].field_512 * sub_595f0617[address(msg.sender)].field_256) / 100, sub_595f0617[address(msg.sender)].field_256 * sub_595f0617[address(msg.sender)].field_512 / 100
    else:
        mem[644] = return_data.size
        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[676] == bool(mem[676])
            if not mem[676]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + 681] = stor4
        mem[ceil32(return_data.size) + 713] = sub_595f0617[address(msg.sender)].field_256 * sub_595f0617[address(msg.sender)].field_512 / 100
        mem[ceil32(return_data.size) + 645] = 68
        mem[ceil32(return_data.size) + 677 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 745] = 32
        mem[ceil32(return_data.size) + 777] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(fsTokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 809 len 96] = 0, stor4, sub_595f0617[address(msg.sender)].field_256 * sub_595f0617[address(msg.sender)].field_512 / 100, 0
        mem[ceil32(return_data.size) + 877] = 0
        call fsTokenAddress with:
           funct Mask(32, 224, 0, stor4, sub_595f0617[address(msg.sender)].field_256 * sub_595f0617[address(msg.sender)].field_512 / 100, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, stor4, sub_595f0617[address(msg.sender)].field_256 * sub_595f0617[address(msg.sender)].field_512 / 100, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if bool(sub_595f0617[address(msg.sender)].field_0) > 0:
                    revert with memory
                      from 128
                       len bool(sub_595f0617[address(msg.sender)].field_0)
                revert with 0, 'SafeERC20: low-level call failed'
            if bool(sub_595f0617[address(msg.sender)].field_0) > 0:
                require bool(sub_595f0617[address(msg.sender)].field_0) >= 32
                require sub_595f0617[address(msg.sender)].field_256 == bool(sub_595f0617[address(msg.sender)].field_256)
                if not sub_595f0617[address(msg.sender)].field_256:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            sub_595f0617[address(msg.sender)].field_0 = 0
            sub_595f0617[address(msg.sender)].field_256 = 0
            sub_595f0617[address(msg.sender)].field_512 = 0
            sub_595f0617[address(msg.sender)].field_768 = 0
            sub_595f0617[address(msg.sender)].field_1024 = 0
            sub_595f0617[address(msg.sender)].field_1280 = 0
            emit 0xa20e94ac: msg.sender, (100 * sub_595f0617[address(msg.sender)].field_256) - (sub_595f0617[address(msg.sender)].field_512 * sub_595f0617[address(msg.sender)].field_256) / 100, sub_595f0617[address(msg.sender)].field_256 * sub_595f0617[address(msg.sender)].field_512 / 100
        else:
            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 910 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 841] == bool(mem[ceil32(return_data.size) + 841])
                if not mem[ceil32(return_data.size) + 841]:
                    revert with 0, 
                                'SafeERC20: ERC20 operation did not succeed',
                                mem[(2 * ceil32(return_data.size)) + 942 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            sub_595f0617[address(msg.sender)].field_0 = 0
            sub_595f0617[address(msg.sender)].field_256 = 0
            sub_595f0617[address(msg.sender)].field_512 = 0
            sub_595f0617[address(msg.sender)].field_768 = 0
            sub_595f0617[address(msg.sender)].field_1024 = 0
            sub_595f0617[address(msg.sender)].field_1280 = 0
            emit 0xa20e94ac: msg.sender, (100 * sub_595f0617[address(msg.sender)].field_256) - (sub_595f0617[address(msg.sender)].field_512 * sub_595f0617[address(msg.sender)].field_256) / 100, sub_595f0617[address(msg.sender)].field_256 * sub_595f0617[address(msg.sender)].field_512 / 100, mem[(2 * ceil32(return_data.size)) + 906 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}



}
