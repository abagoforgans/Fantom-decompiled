contract main {




// =====================  Runtime code  =====================


#
#  - sub_41c4b229(?)
#  - tokenURI(uint256 arg1)
#  - sub_f7b82992(?)
#
mapping of struct stor0;
mapping of uint256 level_points_spent;
mapping of uint8 stor2;

function level_points_spent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return level_points_spent[arg1]
}

function character_created(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function abilities_by_level(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 / 4)
}

function sub_2aa2c7f1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stor0[arg1].field_0, 
           stor0[arg1].field_0,
           stor0[arg1].field_0,
           stor0[arg1].field_0,
           stor0[arg1].field_128,
           stor0[arg1].field_0,
           stor0[arg1].field_0,
           stor0[arg1].field_0,
           stor0[arg1].field_256
}

function calc(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 < 10:
        revert with 'NH{q', 17
    if arg1 <= 14:
        return (arg1 - 10)
    if not arg1 - 10:
        return 0
    if arg1 - 10 == 1:
        return 0
    if arg1 - 10 == 2:
        return 0
    if bool(bool(arg1 - 10 < 11)) or bool(bool(arg1 - 10 < 307)):
        if (arg1 - 10)^2 > -1:
            revert with 'NH{q', 17
        return ((arg1 - 10)^2 / 6)
    s = arg1 - 10
    idx = 2
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        s = s * s
        idx = uint255(idx) * 0.5
        continue 
    if 1 > -1 / s:
        revert with 'NH{q', 17
    return (s / 6)
}

function sub_90620d13(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
    staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
        staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
    require stor2[arg1]
    require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
    staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.level(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] / 4 < level_points_spent[arg1]:
        revert with 'NH{q', 17
    require (ext_call.return_data[0] / 4) - level_points_spent[arg1] > 0
    if level_points_spent[arg1] > -2:
        revert with 'NH{q', 17
    level_points_spent[arg1]++
    if stor0[arg1].field_0 > 4294967294:
        revert with 'NH{q', 17
    stor0[arg1].field_0 = uint32(stor0[arg1].field_0 + 1)
    emit 0xdee9a634: arg1, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_256, msg.sender
}

function sub_1abf9082(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
    staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
        staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
    require stor2[arg1]
    require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
    staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.level(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] / 4 < level_points_spent[arg1]:
        revert with 'NH{q', 17
    require (ext_call.return_data[0] / 4) - level_points_spent[arg1] > 0
    if level_points_spent[arg1] > -2:
        revert with 'NH{q', 17
    level_points_spent[arg1]++
    if stor0[arg1].field_32 > 4294967294:
        revert with 'NH{q', 17
    stor0[arg1].field_32 = uint32(stor0[arg1].field_32 + 1)
    emit 0xdee9a634: arg1, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_256, msg.sender
}

function sub_77134c3c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
    staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
        staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
    require stor2[arg1]
    require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
    staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.level(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] / 4 < level_points_spent[arg1]:
        revert with 'NH{q', 17
    require (ext_call.return_data[0] / 4) - level_points_spent[arg1] > 0
    if level_points_spent[arg1] > -2:
        revert with 'NH{q', 17
    level_points_spent[arg1]++
    if stor0[arg1].field_96 > 4294967294:
        revert with 'NH{q', 17
    stor0[arg1].field_96 = uint32(stor0[arg1].field_96 + 1)
    emit 0xdee9a634: arg1, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_256, msg.sender
}

function sub_be61c6d0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
    staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
        staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
    require stor2[arg1]
    require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
    staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.level(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] / 4 < level_points_spent[arg1]:
        revert with 'NH{q', 17
    require (ext_call.return_data[0] / 4) - level_points_spent[arg1] > 0
    if level_points_spent[arg1] > -2:
        revert with 'NH{q', 17
    level_points_spent[arg1]++
    if stor0[arg1].field_64 > 4294967294:
        revert with 'NH{q', 17
    stor0[arg1].field_64 = uint32(stor0[arg1].field_64 + 1)
    emit 0xdee9a634: arg1, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_256, msg.sender
}

function sub_633242ca(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
    staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
        staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
    require stor2[arg1]
    require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
    staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.level(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] / 4 < level_points_spent[arg1]:
        revert with 'NH{q', 17
    require (ext_call.return_data[0] / 4) - level_points_spent[arg1] > 0
    if level_points_spent[arg1] > -2:
        revert with 'NH{q', 17
    level_points_spent[arg1]++
    if stor0[arg1].field_256 > 4294967294:
        revert with 'NH{q', 17
    stor0[arg1].field_256 = uint32(stor0[arg1].field_256 + 1)
    emit 0xdee9a634: arg1, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_256, msg.sender
}

function sub_774e2d47(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
    staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
        staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
    require stor2[arg1]
    require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
    staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.level(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] / 4 < level_points_spent[arg1]:
        revert with 'NH{q', 17
    require (ext_call.return_data[0] / 4) - level_points_spent[arg1] > 0
    if level_points_spent[arg1] > -2:
        revert with 'NH{q', 17
    level_points_spent[arg1]++
    if stor0[arg1].field_128 > 4294967294:
        revert with 'NH{q', 17
    stor0[arg1].field_128 = uint32(stor0[arg1].field_128 + 1)
    emit 0xdee9a634: arg1, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_256, msg.sender
}

function sub_7d1bfa57(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
    staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
        staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
    require stor2[arg1]
    require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
    staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.level(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] / 4 < level_points_spent[arg1]:
        revert with 'NH{q', 17
    require (ext_call.return_data[0] / 4) - level_points_spent[arg1] > 0
    if level_points_spent[arg1] > -2:
        revert with 'NH{q', 17
    level_points_spent[arg1]++
    if stor0[arg1].field_224 > 4294967294:
        revert with 'NH{q', 17
    stor0[arg1].field_224 = uint32(stor0[arg1].field_224 + 1)
    emit 0xdee9a634: arg1, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_256, msg.sender
}

function sub_918b3653(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
    staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
        staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
    require stor2[arg1]
    require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
    staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.level(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] / 4 < level_points_spent[arg1]:
        revert with 'NH{q', 17
    require (ext_call.return_data[0] / 4) - level_points_spent[arg1] > 0
    if level_points_spent[arg1] > -2:
        revert with 'NH{q', 17
    level_points_spent[arg1]++
    if stor0[arg1].field_160 > 4294967294:
        revert with 'NH{q', 17
    stor0[arg1].field_160 = uint32(stor0[arg1].field_160 + 1)
    emit 0xdee9a634: arg1, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_256, msg.sender
}

function sub_e933414a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
    staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
        staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
    require stor2[arg1]
    require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
    staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.level(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] / 4 < level_points_spent[arg1]:
        revert with 'NH{q', 17
    require (ext_call.return_data[0] / 4) - level_points_spent[arg1] > 0
    if level_points_spent[arg1] > -2:
        revert with 'NH{q', 17
    level_points_spent[arg1]++
    if stor0[arg1].field_192 > 4294967294:
        revert with 'NH{q', 17
    stor0[arg1].field_192 = uint32(stor0[arg1].field_192 + 1)
    emit 0xdee9a634: arg1, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_256, msg.sender
}



}
