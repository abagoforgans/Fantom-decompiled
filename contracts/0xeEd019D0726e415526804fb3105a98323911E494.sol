contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
mapping of uint8 stor1;
mapping of uint256 stor2;
mapping of uint256 stor3;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
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

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_c415db13(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 192] = stor3[Array(len=arg1.length, data=arg1[all])]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]
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

function sub_64e899c4(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    require arg3 == bool(arg3)
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Stats: must have admin role to set allowance'
    stor1[Array(len=arg1.length, data=arg1[all])][address(arg2)] = uint8(bool(arg3))
}

function sub_6ac39786(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    require arg3 == arg3
    mem[ceil32(arg1.length) + 224] = address(arg2)
    mem[ceil32(arg1.length) + 256] = arg3
    mem[ceil32(arg1.length) + 192] = 64
    mem[ceil32(arg1.length) + 288] = stor2[Array(len=arg1.length, data=arg1[all])][sha3(mem[ceil32(arg1.length) + 224 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]])]
    return memory
      from ceil32(arg1.length) + 288
       len 32
}

function sub_dcb2f069(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if not stor1[Array(len=arg1.length, data=arg1[all])][address(msg.sender)]:
        revert with 0, 'Stats: caller cannot set stat'
    mem[ceil32(arg1.length) + 224] = address(arg2)
    mem[ceil32(arg1.length) + 256] = arg3
    mem[ceil32(arg1.length) + 192] = 64
    _12 = sha3(mem[ceil32(arg1.length) + 224 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]])
    mem[ceil32(arg1.length) + 384 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + arg1.length + 384] = 0
    stor2[Array(len=arg1.length, data=arg1[all])][_12] = arg4
    mem[(2 * ceil32(arg1.length)) + 384 len arg1.length] = arg1[all]
    mem[(2 * ceil32(arg1.length)) + arg1.length + 384] = 0
    _23 = sha3(mem[(2 * ceil32(arg1.length)) + 384 len ceil32(arg1.length) + arg1.length])
    mem[(2 * ceil32(arg1.length)) + 384] = stor2[Array(len=arg1.length, data=arg1[all])][_12]
    mem[(2 * ceil32(arg1.length)) + 416] = stor2[Array(len=arg1.length, data=arg1[all])][_12]
    emit 0x855f7e11: mem[(2 * ceil32(arg1.length)) + 384 len ceil32(arg1.length) + 64], _23, address(arg2), arg3
}

function sub_d79fdf0a(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if not stor1[Array(len=arg1.length, data=arg1[all])][address(msg.sender)]:
        revert with 0, 'Stats: caller cannot set stat'
    mem[ceil32(arg1.length) + 224] = address(arg2)
    mem[ceil32(arg1.length) + 256] = arg3
    mem[ceil32(arg1.length) + 192] = 64
    _12 = sha3(mem[ceil32(arg1.length) + 224 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]])
    mem[ceil32(arg1.length) + 384 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + arg1.length + 384] = 0
    if stor3[Array(len=arg1.length, data=arg1[all])] > -arg4 - 1:
        revert with 'NH{q', 17
    stor3[Array(len=arg1.length, data=arg1[all])] += arg4
    if stor2[Array(len=arg1.length, data=arg1[all])][_12] > -arg4 - 1:
        revert with 'NH{q', 17
    stor2[Array(len=arg1.length, data=arg1[all])][_12] += arg4
    mem[(2 * ceil32(arg1.length)) + 384 len arg1.length] = arg1[all]
    mem[(2 * ceil32(arg1.length)) + arg1.length + 384] = 0
    _24 = sha3(mem[(2 * ceil32(arg1.length)) + 384 len ceil32(arg1.length) + arg1.length])
    mem[(2 * ceil32(arg1.length)) + 384] = stor2[Array(len=arg1.length, data=arg1[all])][_12]
    mem[(2 * ceil32(arg1.length)) + 416] = stor2[Array(len=arg1.length, data=arg1[all])][_12]
    emit 0x855f7e11: mem[(2 * ceil32(arg1.length)) + 384 len ceil32(arg1.length) + 64], _24, address(arg2), arg3
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

function sub_5e554b5e(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if not stor1[Array(len=arg1.length, data=arg1[all])][address(msg.sender)]:
        revert with 0, 'Stats: caller cannot set stat'
    mem[ceil32(arg1.length) + 224] = address(arg2)
    mem[ceil32(arg1.length) + 256] = arg3
    mem[ceil32(arg1.length) + 192] = 64
    _12 = sha3(mem[ceil32(arg1.length) + 224 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]])
    mem[ceil32(arg1.length) + 384 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + arg1.length + 384] = 0
    if stor3[Array(len=arg1.length, data=arg1[all])] < arg4:
        revert with 'NH{q', 17
    if stor3[Array(len=arg1.length, data=arg1[all])] - arg4 < 0:
        mem[(2 * ceil32(arg1.length)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(arg1.length)) + 388] = 32
        mem[(2 * ceil32(arg1.length)) + 420] = 35
        mem[(2 * ceil32(arg1.length)) + 452] = 'Stats: cannot reduce totals belo'
        mem[(2 * ceil32(arg1.length)) + 484] = 'w 0'
        revert with memory
          from (2 * ceil32(arg1.length)) + 384
           len ceil32(arg1.length) + 132
    if stor2[Array(len=arg1.length, data=arg1[all])][_12] < arg4:
        revert with 'NH{q', 17
    if stor2[Array(len=arg1.length, data=arg1[all])][_12] - arg4 < 0:
        mem[(2 * ceil32(arg1.length)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(arg1.length)) + 388] = 32
        mem[(2 * ceil32(arg1.length)) + 420] = 37
        mem[(2 * ceil32(arg1.length)) + 452] = 'Stats: cannot reduce nft stat be'
        mem[(2 * ceil32(arg1.length)) + 484] = 'low 0'
        revert with memory
          from (2 * ceil32(arg1.length)) + 384
           len ceil32(arg1.length) + 132
    if stor3[Array(len=arg1.length, data=arg1[all])] < arg4:
        revert with 'NH{q', 17
    stor3[Array(len=arg1.length, data=arg1[all])] -= arg4
    if stor2[Array(len=arg1.length, data=arg1[all])][_12] < arg4:
        revert with 'NH{q', 17
    stor2[Array(len=arg1.length, data=arg1[all])][_12] -= arg4
    mem[(2 * ceil32(arg1.length)) + 384 len arg1.length] = arg1[all]
    mem[(2 * ceil32(arg1.length)) + arg1.length + 384] = 0
    _29 = sha3(mem[(2 * ceil32(arg1.length)) + 384 len ceil32(arg1.length) + arg1.length])
    mem[(2 * ceil32(arg1.length)) + 384] = stor2[Array(len=arg1.length, data=arg1[all])][_12]
    mem[(2 * ceil32(arg1.length)) + 416] = stor2[Array(len=arg1.length, data=arg1[all])][_12]
    emit 0x855f7e11: mem[(2 * ceil32(arg1.length)) + 384 len ceil32(arg1.length) + 64], _29, address(arg2), arg3
}



}
