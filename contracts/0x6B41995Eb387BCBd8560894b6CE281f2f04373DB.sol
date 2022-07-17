contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0


array of address stor1;
address stor2;
address stor3;
array of address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
address stor9;
address stor10;
array of address stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
address stor15;
address stor16;
address stor17;
array of address stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
address stor22;
address stor23;
address stor24;
array of address stor25;
uint256 stor26;
uint256 stor27;
uint256 stor28;
address stor29;

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if roleAdmin[arg1].field_0 <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg2 < roleAdmin[arg1].field_0
    return roleAdmin[arg1][arg2].field_0
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function _fallback() payable {
    revert
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return not not roleAdmin[arg1][1][address(arg2)].field_0
}

function sub_be7000cb(?) {
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'refund failed'
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function addOwner(address arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    if not roleAdmin[uint256(roleAdmin.field_512)][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[1][address(arg1)].field_0:
        uint256(roleAdmin.field_0)++
        stor[sha3(('name', 'roleAdmin', 0)) + uint256(roleAdmin.field_0)].field_0 = arg1
        stor[sha3(('name', 'roleAdmin', 0)) + uint256(roleAdmin.field_0)].field_160 = 0
        roleAdmin[1][address(arg1)].field_0 = uint256(roleAdmin.field_0)
        emit RoleGranted(0, arg1, msg.sender);
}

function sub_a46aa4c6(?) {
    require calldata.size - 4 >= 32
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), stor1.length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), tx.origin, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_f2744d9b(?) payable {
    require calldata.size - 4 >= 224
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    stor2 = address(cd[4])
    stor3 = address(cd[36])
    stor4.length = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while stor4.length > idx:
            stor4[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[68] + 36
        while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
            stor4[s] = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while stor4.length > idx:
            stor4[idx] = 0
            idx = idx + 1
            continue 
    stor5 = cd[100]
    stor6 = cd[132]
    stor7 = cd[164]
    stor8 = address(cd[196])
}

function sub_979ab371(?) payable {
    require calldata.size - 4 >= 224
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    stor9 = address(cd[4])
    stor10 = address(cd[36])
    stor11.length = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while stor11.length > idx:
            stor11[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[68] + 36
        while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
            stor11[s] = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while stor11.length > idx:
            stor11[idx] = 0
            idx = idx + 1
            continue 
    stor12 = cd[100]
    stor13 = cd[132]
    stor14 = cd[164]
    stor15 = address(cd[196])
}

function sub_2e2b1201(?) payable {
    require calldata.size - 4 >= 224
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    stor16 = address(cd[4])
    stor17 = address(cd[36])
    stor18.length = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while stor18.length > idx:
            stor18[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[68] + 36
        while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
            stor18[s] = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while stor18.length > idx:
            stor18[idx] = 0
            idx = idx + 1
            continue 
    stor19 = cd[100]
    stor20 = cd[132]
    stor21 = cd[164]
    stor22 = address(cd[196])
}

function sub_b124fb32(?) payable {
    require calldata.size - 4 >= 224
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    stor23 = address(cd[4])
    stor24 = address(cd[36])
    stor25.length = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while stor25.length > idx:
            stor25[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[68] + 36
        while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
            stor25[s] = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while stor25.length > idx:
            stor25[idx] = 0
            idx = idx + 1
            continue 
    stor26 = cd[100]
    stor27 = cd[132]
    stor28 = cd[164]
    stor29 = address(cd[196])
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x65416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x74416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_31f6842e(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 192
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0) + 1
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    idx = 0
    while idx < arg4:
        _20 = mem[64]
        mem[mem[64] + 96] = arg5
        mem[mem[64] + 128] = block.timestamp + 300
        mem[mem[64] + 64] = 128
        mem[_20 + 160] = arg2.length
        mem[_20 + 192 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        mem[_20 + (32 * arg2.length) + 192] = 0
        _21 = mem[64]
        mem[mem[64]] = _20 + floor32(arg2.length) + -mem[64] + 160
        mem[64] = _20 + floor32(arg2.length) + 192
        mem[_20 + floor32(arg2.length) + 224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        _23 = mem[_21]
        t = _21 + 32
        u = _20 + floor32(arg2.length) + 228
        s = mem[_21]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_20 + floor32(arg2.length) + floor32(mem[_21]) + 228] = mem[_21 + floor32(mem[_21]) + -(mem[_21] % 32) + 64 len mem[_21] % 32] or Mask(8 * -(mem[_21] % 32) + 32, -(8 * -(mem[_21] % 32) + 32) + 256, mem[_20 + floor32(arg2.length) + floor32(mem[_21]) + 228])
        mem[_20 + floor32(arg2.length) + 192] = _23 + 4
        mem[64] = _23 + _20 + floor32(arg2.length) + 228
        t = _20 + floor32(arg2.length) + 224
        u = _23 + _20 + floor32(arg2.length) + 228
        s = _23 + 4
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_23 + _20 + floor32(arg2.length) + floor32(_23 + 4) + 228] = mem[_20 + floor32(arg2.length) + -(_23 + 4 % 32) + floor32(_23 + 4) + 256 len _23 + 4 % 32] or Mask(8 * -(_23 + 4 % 32) + 32, -(8 * -(_23 + 4 % 32) + 32) + 256, mem[_23 + _20 + floor32(arg2.length) + floor32(_23 + 4) + 228])
        call arg1.mem[_23 + _20 + floor32(arg2.length) + 228 len 4] with:
           value arg3 wei
             gas gas_remaining wei
            args mem[_23 + _20 + floor32(arg2.length) + 232 len _23]
        if return_data.size:
            mem[64] = _23 + _20 + floor32(arg2.length) + ceil32(return_data.size) + 229
            mem[_23 + _20 + floor32(arg2.length) + 228] = return_data.size
            mem[_23 + _20 + floor32(arg2.length) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        t = _20 + floor32(arg2.length) + floor32(_23 + 4) + 225
        continue 
}

function sub_0bd9c249(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 224
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0) + 1
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    mem[100] = arg2
    mem[132] = stor1.length
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), stor1.length
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < arg4:
        _24 = mem[64]
        mem[mem[64] + 64] = arg5
        mem[mem[64] + 128] = arg6
        mem[mem[64] + 160] = block.timestamp + 300
        mem[mem[64] + 96] = 160
        mem[mem[64] + 192] = arg3.length
        mem[mem[64] + 224 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        mem[mem[64] + (32 * arg3.length) + 224] = 0
        _25 = mem[64]
        mem[mem[64]] = floor32(arg3.length) + 192
        mem[64] = mem[64] + floor32(arg3.length) + 224
        mem[_24 + floor32(arg3.length) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        _27 = mem[_25]
        t = _25 + 32
        u = _24 + floor32(arg3.length) + 260
        s = mem[_25]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_24 + floor32(arg3.length) + floor32(mem[_25]) + 260] = mem[_25 + floor32(mem[_25]) + -(mem[_25] % 32) + 64 len mem[_25] % 32] or Mask(8 * -(mem[_25] % 32) + 32, -(8 * -(mem[_25] % 32) + 32) + 256, mem[_24 + floor32(arg3.length) + floor32(mem[_25]) + 260])
        _41 = mem[64]
        mem[mem[64]] = _27 + _24 + floor32(arg3.length) + -mem[64] + 228
        mem[64] = _27 + _24 + floor32(arg3.length) + 260
        _43 = mem[_41]
        t = _41 + 32
        u = _27 + _24 + floor32(arg3.length) + 260
        s = mem[_41]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_27 + _24 + floor32(arg3.length) + floor32(mem[_41]) + 260] = mem[_41 + -(mem[_41] % 32) + floor32(mem[_41]) + 64 len mem[_41] % 32] or Mask(8 * -(mem[_41] % 32) + 32, -(8 * -(mem[_41] % 32) + 32) + 256, mem[_27 + _24 + floor32(arg3.length) + floor32(mem[_41]) + 260])
        call arg2.mem[_27 + _24 + floor32(arg3.length) + 260 len 4] with:
             gas gas_remaining wei
            args mem[_27 + _24 + floor32(arg3.length) + 264 len _43 - 4]
        if return_data.size:
            mem[64] = _27 + _24 + floor32(arg3.length) + ceil32(return_data.size) + 261
            mem[_27 + _24 + floor32(arg3.length) + 260] = return_data.size
            mem[_27 + _24 + floor32(arg3.length) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        t = t + 1
        continue 
}

function sub_e1e78362(?) payable {
    mem[64] = 96
    mem[0] = msg.sender
    mem[32] = sha3(0) + 1
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    idx = 0
    while idx < stor13:
        _21 = mem[64]
        mem[mem[64] + 32] = stor14
        mem[mem[64] + 96] = stor15
        mem[mem[64] + 128] = block.timestamp + 300
        mem[mem[64] + 64] = 128
        mem[_21 + 160] = stor11.length
        if not stor11.length:
            _22 = mem[64]
            mem[mem[64]] = _21 + -mem[64] + 160
            mem[64] = _21 + 192
            mem[_21 + 224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            _24 = mem[_22]
            t = _22 + 32
            u = _21 + 228
            s = mem[_22]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_21 + floor32(mem[_22]) + 228] = mem[_22 + floor32(mem[_22]) + -(mem[_22] % 32) + 64 len mem[_22] % 32] or Mask(8 * -(mem[_22] % 32) + 32, -(8 * -(mem[_22] % 32) + 32) + 256, mem[_21 + floor32(mem[_22]) + 228])
            _39 = mem[64]
            mem[mem[64]] = _24 + _21 + -mem[64] + 196
            mem[64] = _24 + _21 + 228
            _41 = mem[_39]
            t = _39 + 32
            u = _24 + _21 + 228
            s = mem[_39]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_24 + _21 + floor32(mem[_39]) + 228] = mem[_39 + -(mem[_39] % 32) + floor32(mem[_39]) + 64 len mem[_39] % 32] or Mask(8 * -(mem[_39] % 32) + 32, -(8 * -(mem[_39] % 32) + 32) + 256, mem[_24 + _21 + floor32(mem[_39]) + 228])
            call stor10.mem[_24 + _21 + 228 len 4] with:
               value stor12 wei
                 gas gas_remaining wei
                args mem[_24 + _21 + 232 len _41 - 4]
            if return_data.size:
                mem[64] = _24 + _21 + ceil32(return_data.size) + 229
                mem[_24 + _21 + 228] = return_data.size
                mem[_24 + _21 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            t = t + 1
            continue 
        mem[0] = 11
        mem[_21 + 192] = stor11
        s = _21 + 192
        t = sha3(11)
        while _21 + (32 * stor11.length) + 192 > s + 32:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        _48 = mem[64]
        mem[mem[64]] = _21 + (32 * stor11.length) + -mem[64] + 160
        mem[64] = _21 + (32 * stor11.length) + 192
        mem[_21 + (32 * stor11.length) + 224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        _50 = mem[_48]
        t = _48 + 32
        u = _21 + (32 * stor11.length) + 228
        s = mem[_48]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_21 + (32 * stor11.length) + floor32(mem[_48]) + 228] = mem[_48 + floor32(mem[_48]) + -(mem[_48] % 32) + 64 len mem[_48] % 32] or Mask(8 * -(mem[_48] % 32) + 32, -(8 * -(mem[_48] % 32) + 32) + 256, mem[_21 + (32 * stor11.length) + floor32(mem[_48]) + 228])
        mem[_21 + (32 * stor11.length) + 192] = _50 + 4
        mem[64] = _50 + _21 + (32 * stor11.length) + 228
        t = _21 + (32 * stor11.length) + 224
        u = _50 + _21 + (32 * stor11.length) + 228
        s = _50 + 4
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_50 + _21 + (32 * stor11.length) + floor32(_50 + 4) + 228] = mem[_21 + (32 * stor11.length) + floor32(_50 + 4) + -(_50 + 4 % 32) + 256 len _50 + 4 % 32] or Mask(8 * -(_50 + 4 % 32) + 32, -(8 * -(_50 + 4 % 32) + 32) + 256, mem[_50 + _21 + (32 * stor11.length) + floor32(_50 + 4) + 228])
        call stor10.mem[_50 + _21 + (32 * stor11.length) + 228 len 4] with:
           value stor12 wei
             gas gas_remaining wei
            args mem[_50 + _21 + (32 * stor11.length) + 232 len _50]
        if return_data.size:
            mem[64] = _50 + _21 + (32 * stor11.length) + ceil32(return_data.size) + 229
            mem[_50 + _21 + (32 * stor11.length) + 228] = return_data.size
            mem[_50 + _21 + (32 * stor11.length) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_3a0316eb(?) payable {
    mem[64] = 96
    mem[0] = msg.sender
    mem[32] = sha3(0) + 1
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    idx = 0
    while idx < stor6:
        _21 = mem[64]
        mem[mem[64] + 32] = stor7
        mem[mem[64] + 96] = stor8
        mem[mem[64] + 128] = block.timestamp + 300
        mem[mem[64] + 64] = 128
        mem[_21 + 160] = stor4.length
        if not stor4.length:
            _22 = mem[64]
            mem[mem[64]] = _21 + -mem[64] + 160
            mem[64] = _21 + 192
            mem[_21 + 224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            _24 = mem[_22]
            t = _22 + 32
            u = _21 + 228
            s = mem[_22]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_21 + floor32(mem[_22]) + 228] = mem[_22 + floor32(mem[_22]) + -(mem[_22] % 32) + 64 len mem[_22] % 32] or Mask(8 * -(mem[_22] % 32) + 32, -(8 * -(mem[_22] % 32) + 32) + 256, mem[_21 + floor32(mem[_22]) + 228])
            _39 = mem[64]
            mem[mem[64]] = _24 + _21 + -mem[64] + 196
            mem[64] = _24 + _21 + 228
            _41 = mem[_39]
            t = _39 + 32
            u = _24 + _21 + 228
            s = mem[_39]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_24 + _21 + floor32(mem[_39]) + 228] = mem[_39 + -(mem[_39] % 32) + floor32(mem[_39]) + 64 len mem[_39] % 32] or Mask(8 * -(mem[_39] % 32) + 32, -(8 * -(mem[_39] % 32) + 32) + 256, mem[_24 + _21 + floor32(mem[_39]) + 228])
            call stor3.mem[_24 + _21 + 228 len 4] with:
               value stor5 wei
                 gas gas_remaining wei
                args mem[_24 + _21 + 232 len _41 - 4]
            if return_data.size:
                mem[64] = _24 + _21 + ceil32(return_data.size) + 229
                mem[_24 + _21 + 228] = return_data.size
                mem[_24 + _21 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            t = t + 1
            continue 
        mem[0] = 4
        mem[_21 + 192] = stor4
        s = _21 + 192
        t = sha3(4)
        while _21 + (32 * stor4.length) + 192 > s + 32:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        _48 = mem[64]
        mem[mem[64]] = _21 + (32 * stor4.length) + -mem[64] + 160
        mem[64] = _21 + (32 * stor4.length) + 192
        mem[_21 + (32 * stor4.length) + 224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        _50 = mem[_48]
        t = _48 + 32
        u = _21 + (32 * stor4.length) + 228
        s = mem[_48]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_21 + (32 * stor4.length) + floor32(mem[_48]) + 228] = mem[_48 + floor32(mem[_48]) + -(mem[_48] % 32) + 64 len mem[_48] % 32] or Mask(8 * -(mem[_48] % 32) + 32, -(8 * -(mem[_48] % 32) + 32) + 256, mem[_21 + (32 * stor4.length) + floor32(mem[_48]) + 228])
        mem[_21 + (32 * stor4.length) + 192] = _50 + 4
        mem[64] = _50 + _21 + (32 * stor4.length) + 228
        t = _21 + (32 * stor4.length) + 224
        u = mem[64]
        s = mem[_21 + (32 * stor4.length) + 192]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_21 + (32 * stor4.length) + 192])] = mem[_21 + (32 * stor4.length) + floor32(mem[_21 + (32 * stor4.length) + 192]) + -(mem[_21 + (32 * stor4.length) + 192] % 32) + 256 len mem[_21 + (32 * stor4.length) + 192] % 32] or Mask(8 * -(mem[_21 + (32 * stor4.length) + 192] % 32) + 32, -(8 * -(mem[_21 + (32 * stor4.length) + 192] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_21 + (32 * stor4.length) + 192])])
        call stor3.mem[mem[64] len 4] with:
           value stor5 wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len (2 * _50) + _21 + (32 * stor4.length) + -mem[64] + 228]
        if return_data.size:
            _82 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_82] = return_data.size
            mem[_82 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_68677730(?) payable {
    mem[64] = 96
    mem[0] = msg.sender
    mem[32] = sha3(0) + 1
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    idx = 0
    while idx < stor27:
        _21 = mem[64]
        mem[mem[64] + 32] = stor28
        mem[mem[64] + 96] = stor29
        mem[mem[64] + 128] = block.timestamp + 300
        mem[mem[64] + 64] = 128
        mem[_21 + 160] = stor25.length
        if not stor25.length:
            _22 = mem[64]
            mem[mem[64]] = _21 + -mem[64] + 160
            mem[64] = _21 + 192
            mem[_21 + 224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            _24 = mem[_22]
            t = _22 + 32
            u = _21 + 228
            s = mem[_22]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_21 + floor32(mem[_22]) + 228] = mem[_22 + floor32(mem[_22]) + -(mem[_22] % 32) + 64 len mem[_22] % 32] or Mask(8 * -(mem[_22] % 32) + 32, -(8 * -(mem[_22] % 32) + 32) + 256, mem[_21 + floor32(mem[_22]) + 228])
            _39 = mem[64]
            mem[mem[64]] = _24 + _21 + -mem[64] + 196
            mem[64] = _24 + _21 + 228
            _41 = mem[_39]
            t = _39 + 32
            u = _24 + _21 + 228
            s = mem[_39]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_24 + _21 + floor32(mem[_39]) + 228] = mem[_39 + -(mem[_39] % 32) + floor32(mem[_39]) + 64 len mem[_39] % 32] or Mask(8 * -(mem[_39] % 32) + 32, -(8 * -(mem[_39] % 32) + 32) + 256, mem[_24 + _21 + floor32(mem[_39]) + 228])
            call stor24.mem[_24 + _21 + 228 len 4] with:
               value stor26 wei
                 gas gas_remaining wei
                args mem[_24 + _21 + 232 len _41 - 4]
            if return_data.size:
                mem[64] = _24 + _21 + ceil32(return_data.size) + 229
                mem[_24 + _21 + 228] = return_data.size
                mem[_24 + _21 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            t = t + 1
            continue 
        mem[0] = 25
        mem[_21 + 192] = stor25
        s = _21 + 192
        t = sha3(25)
        while _21 + (32 * stor25.length) + 192 > s + 32:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        _48 = mem[64]
        mem[mem[64]] = _21 + (32 * stor25.length) + -mem[64] + 160
        mem[64] = _21 + (32 * stor25.length) + 192
        mem[_21 + (32 * stor25.length) + 224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        _50 = mem[_48]
        t = _48 + 32
        u = _21 + (32 * stor25.length) + 228
        s = mem[_48]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_21 + (32 * stor25.length) + floor32(mem[_48]) + 228] = mem[_48 + floor32(mem[_48]) + -(mem[_48] % 32) + 64 len mem[_48] % 32] or Mask(8 * -(mem[_48] % 32) + 32, -(8 * -(mem[_48] % 32) + 32) + 256, mem[_21 + (32 * stor25.length) + floor32(mem[_48]) + 228])
        mem[_21 + (32 * stor25.length) + 192] = _50 + 4
        mem[64] = _50 + _21 + (32 * stor25.length) + 228
        t = _21 + (32 * stor25.length) + 224
        u = mem[64]
        s = mem[_21 + (32 * stor25.length) + 192]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_21 + (32 * stor25.length) + 192])] = mem[_21 + (32 * stor25.length) + floor32(mem[_21 + (32 * stor25.length) + 192]) + -(mem[_21 + (32 * stor25.length) + 192] % 32) + 256 len mem[_21 + (32 * stor25.length) + 192] % 32] or Mask(8 * -(mem[_21 + (32 * stor25.length) + 192] % 32) + 32, -(8 * -(mem[_21 + (32 * stor25.length) + 192] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_21 + (32 * stor25.length) + 192])])
        call stor24.mem[mem[64] len 4] with:
           value stor26 wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len (2 * _50) + _21 + (32 * stor25.length) + -mem[64] + 228]
        if return_data.size:
            _82 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_82] = return_data.size
            mem[_82 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_c48b2582(?) payable {
    mem[64] = 96
    mem[0] = msg.sender
    mem[32] = sha3(0) + 1
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    idx = 0
    while idx < stor20:
        _21 = mem[64]
        mem[mem[64] + 32] = stor21
        mem[mem[64] + 96] = stor22
        mem[mem[64] + 128] = block.timestamp + 300
        mem[mem[64] + 64] = 128
        mem[_21 + 160] = stor18.length
        if not stor18.length:
            _22 = mem[64]
            mem[mem[64]] = _21 + -mem[64] + 160
            mem[64] = _21 + 192
            mem[_21 + 224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            _24 = mem[_22]
            t = _22 + 32
            u = _21 + 228
            s = mem[_22]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_21 + floor32(mem[_22]) + 228] = mem[_22 + floor32(mem[_22]) + -(mem[_22] % 32) + 64 len mem[_22] % 32] or Mask(8 * -(mem[_22] % 32) + 32, -(8 * -(mem[_22] % 32) + 32) + 256, mem[_21 + floor32(mem[_22]) + 228])
            _39 = mem[64]
            mem[mem[64]] = _24 + _21 + -mem[64] + 196
            mem[64] = _24 + _21 + 228
            _41 = mem[_39]
            t = _39 + 32
            u = _24 + _21 + 228
            s = mem[_39]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_24 + _21 + floor32(mem[_39]) + 228] = mem[_39 + -(mem[_39] % 32) + floor32(mem[_39]) + 64 len mem[_39] % 32] or Mask(8 * -(mem[_39] % 32) + 32, -(8 * -(mem[_39] % 32) + 32) + 256, mem[_24 + _21 + floor32(mem[_39]) + 228])
            call stor17.mem[_24 + _21 + 228 len 4] with:
               value stor19 wei
                 gas gas_remaining wei
                args mem[_24 + _21 + 232 len _41 - 4]
            if return_data.size:
                mem[64] = _24 + _21 + ceil32(return_data.size) + 229
                mem[_24 + _21 + 228] = return_data.size
                mem[_24 + _21 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            t = t + 1
            continue 
        mem[0] = 18
        mem[_21 + 192] = stor18
        s = _21 + 192
        t = sha3(18)
        while _21 + (32 * stor18.length) + 192 > s + 32:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        _48 = mem[64]
        mem[mem[64]] = _21 + (32 * stor18.length) + -mem[64] + 160
        mem[64] = _21 + (32 * stor18.length) + 192
        mem[_21 + (32 * stor18.length) + 224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        _50 = mem[_48]
        t = _48 + 32
        u = _21 + (32 * stor18.length) + 228
        s = mem[_48]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_21 + (32 * stor18.length) + floor32(mem[_48]) + 228] = mem[_48 + floor32(mem[_48]) + -(mem[_48] % 32) + 64 len mem[_48] % 32] or Mask(8 * -(mem[_48] % 32) + 32, -(8 * -(mem[_48] % 32) + 32) + 256, mem[_21 + (32 * stor18.length) + floor32(mem[_48]) + 228])
        mem[_21 + (32 * stor18.length) + 192] = _50 + 4
        mem[64] = _50 + _21 + (32 * stor18.length) + 228
        t = _21 + (32 * stor18.length) + 224
        u = mem[64]
        s = mem[_21 + (32 * stor18.length) + 192]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_21 + (32 * stor18.length) + 192])] = mem[_21 + (32 * stor18.length) + floor32(mem[_21 + (32 * stor18.length) + 192]) + -(mem[_21 + (32 * stor18.length) + 192] % 32) + 256 len mem[_21 + (32 * stor18.length) + 192] % 32] or Mask(8 * -(mem[_21 + (32 * stor18.length) + 192] % 32) + 32, -(8 * -(mem[_21 + (32 * stor18.length) + 192] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_21 + (32 * stor18.length) + 192])])
        call stor17.mem[mem[64] len 4] with:
           value stor19 wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len (2 * _50) + _21 + (32 * stor18.length) + -mem[64] + 228]
        if return_data.size:
            _82 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_82] = return_data.size
            mem[_82 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_0754c32b(?) payable {
    mem[64] = 96
    mem[0] = msg.sender
    mem[32] = sha3(0) + 1
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    mem[100] = stor3
    mem[132] = stor1.length
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, stor1.length
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < stor6:
        _25 = mem[64]
        mem[mem[64] + 32] = stor5
        mem[mem[64] + 64] = stor7
        mem[mem[64] + 128] = stor8
        mem[mem[64] + 160] = block.timestamp + 300
        mem[mem[64] + 96] = 160
        mem[mem[64] + 192] = stor4.length
        if not stor4.length:
            _26 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            mem[_25 + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            _28 = mem[_26]
            t = _26 + 32
            u = _25 + 260
            s = mem[_26]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_25 + floor32(mem[_26]) + 260] = mem[_26 + floor32(mem[_26]) + -(mem[_26] % 32) + 64 len mem[_26] % 32] or Mask(8 * -(mem[_26] % 32) + 32, -(8 * -(mem[_26] % 32) + 32) + 256, mem[_25 + floor32(mem[_26]) + 260])
            _43 = mem[64]
            mem[mem[64]] = _28 + _25 + -mem[64] + 228
            mem[64] = _28 + _25 + 260
            _45 = mem[_43]
            t = _43 + 32
            u = mem[64]
            s = mem[_43]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_43])] = mem[_43 + floor32(mem[_43]) + -(mem[_43] % 32) + 64 len mem[_43] % 32] or Mask(8 * -(mem[_43] % 32) + 32, -(8 * -(mem[_43] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_43])])
            call stor3.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _45 + _28 + _25 + -mem[64] + 256]
            if return_data.size:
                _59 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_59] = return_data.size
                mem[_59 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            t = t + 1
            continue 
        mem[0] = 4
        mem[mem[64] + 224] = stor4
        s = mem[64] + 224
        t = sha3(4)
        while mem[64] + (32 * stor4.length) + 224 > s + 32:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        _52 = mem[64]
        mem[mem[64]] = (32 * stor4.length) + 192
        mem[64] = mem[64] + (32 * stor4.length) + 224
        mem[_25 + (32 * stor4.length) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        _54 = mem[_52]
        t = _52 + 32
        u = _25 + (32 * stor4.length) + 260
        s = mem[_52]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_25 + (32 * stor4.length) + floor32(mem[_52]) + 260] = mem[_52 + floor32(mem[_52]) + -(mem[_52] % 32) + 64 len mem[_52] % 32] or Mask(8 * -(mem[_52] % 32) + 32, -(8 * -(mem[_52] % 32) + 32) + 256, mem[_25 + (32 * stor4.length) + floor32(mem[_52]) + 260])
        _73 = mem[64]
        mem[mem[64]] = _54 + _25 + (32 * stor4.length) + -mem[64] + 228
        mem[64] = _54 + _25 + (32 * stor4.length) + 260
        _75 = mem[_73]
        t = _73 + 32
        u = _54 + _25 + (32 * stor4.length) + 260
        s = mem[_73]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_54 + _25 + (32 * stor4.length) + floor32(mem[_73]) + 260] = mem[_73 + -(mem[_73] % 32) + floor32(mem[_73]) + 64 len mem[_73] % 32] or Mask(8 * -(mem[_73] % 32) + 32, -(8 * -(mem[_73] % 32) + 32) + 256, mem[_54 + _25 + (32 * stor4.length) + floor32(mem[_73]) + 260])
        call stor3.mem[_54 + _25 + (32 * stor4.length) + 260 len 4] with:
             gas gas_remaining wei
            args mem[_54 + _25 + (32 * stor4.length) + 264 len _75 - 4]
        if return_data.size:
            mem[64] = _54 + _25 + (32 * stor4.length) + ceil32(return_data.size) + 261
            mem[_54 + _25 + (32 * stor4.length) + 260] = return_data.size
            mem[_54 + _25 + (32 * stor4.length) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_3beb7ca9(?) payable {
    mem[64] = 96
    mem[0] = msg.sender
    mem[32] = sha3(0) + 1
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    mem[100] = stor24
    mem[132] = stor1.length
    require ext_code.size(stor23)
    call stor23.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor24, stor1.length
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < stor27:
        _25 = mem[64]
        mem[mem[64] + 32] = stor26
        mem[mem[64] + 64] = stor28
        mem[mem[64] + 128] = stor29
        mem[mem[64] + 160] = block.timestamp + 300
        mem[mem[64] + 96] = 160
        mem[mem[64] + 192] = stor25.length
        if not stor25.length:
            _26 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            mem[_25 + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            _28 = mem[_26]
            t = _26 + 32
            u = _25 + 260
            s = mem[_26]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_25 + floor32(mem[_26]) + 260] = mem[_26 + floor32(mem[_26]) + -(mem[_26] % 32) + 64 len mem[_26] % 32] or Mask(8 * -(mem[_26] % 32) + 32, -(8 * -(mem[_26] % 32) + 32) + 256, mem[_25 + floor32(mem[_26]) + 260])
            _43 = mem[64]
            mem[mem[64]] = _28 + _25 + -mem[64] + 228
            mem[64] = _28 + _25 + 260
            _45 = mem[_43]
            t = _43 + 32
            u = mem[64]
            s = mem[_43]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_43])] = mem[_43 + floor32(mem[_43]) + -(mem[_43] % 32) + 64 len mem[_43] % 32] or Mask(8 * -(mem[_43] % 32) + 32, -(8 * -(mem[_43] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_43])])
            call stor24.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _45 + _28 + _25 + -mem[64] + 256]
            if return_data.size:
                _59 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_59] = return_data.size
                mem[_59 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            t = t + 1
            continue 
        mem[0] = 25
        mem[mem[64] + 224] = stor25
        s = mem[64] + 224
        t = sha3(25)
        while mem[64] + (32 * stor25.length) + 224 > s + 32:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        _52 = mem[64]
        mem[mem[64]] = _25 + (32 * stor25.length) + -mem[64] + 192
        mem[64] = _25 + (32 * stor25.length) + 224
        mem[_25 + (32 * stor25.length) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        _54 = mem[_52]
        t = _52 + 32
        u = _25 + (32 * stor25.length) + 260
        s = mem[_52]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_25 + (32 * stor25.length) + floor32(mem[_52]) + 260] = mem[_52 + floor32(mem[_52]) + -(mem[_52] % 32) + 64 len mem[_52] % 32] or Mask(8 * -(mem[_52] % 32) + 32, -(8 * -(mem[_52] % 32) + 32) + 256, mem[_25 + (32 * stor25.length) + floor32(mem[_52]) + 260])
        mem[_25 + (32 * stor25.length) + 224] = _54 + 4
        mem[64] = _54 + _25 + (32 * stor25.length) + 260
        t = _25 + (32 * stor25.length) + 256
        u = _54 + _25 + (32 * stor25.length) + 260
        s = _54 + 4
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_54 + _25 + (32 * stor25.length) + floor32(_54 + 4) + 260] = mem[_25 + (32 * stor25.length) + -(_54 + 4 % 32) + floor32(_54 + 4) + 288 len _54 + 4 % 32] or Mask(8 * -(_54 + 4 % 32) + 32, -(8 * -(_54 + 4 % 32) + 32) + 256, mem[_54 + _25 + (32 * stor25.length) + floor32(_54 + 4) + 260])
        call stor24.mem[_54 + _25 + (32 * stor25.length) + 260 len 4] with:
             gas gas_remaining wei
            args mem[_54 + _25 + (32 * stor25.length) + 264 len _54]
        if return_data.size:
            mem[64] = _54 + _25 + (32 * stor25.length) + ceil32(return_data.size) + 261
            mem[_54 + _25 + (32 * stor25.length) + 260] = return_data.size
            mem[_54 + _25 + (32 * stor25.length) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_437a7c7c(?) payable {
    mem[64] = 96
    mem[0] = msg.sender
    mem[32] = sha3(0) + 1
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    mem[100] = stor17
    mem[132] = stor1.length
    require ext_code.size(stor16)
    call stor16.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor17, stor1.length
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < stor20:
        _25 = mem[64]
        mem[mem[64] + 32] = stor19
        mem[mem[64] + 64] = stor21
        mem[mem[64] + 128] = stor22
        mem[mem[64] + 160] = block.timestamp + 300
        mem[mem[64] + 96] = 160
        mem[mem[64] + 192] = stor18.length
        if not stor18.length:
            _26 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            mem[_25 + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            _28 = mem[_26]
            t = _26 + 32
            u = _25 + 260
            s = mem[_26]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_25 + floor32(mem[_26]) + 260] = mem[_26 + floor32(mem[_26]) + -(mem[_26] % 32) + 64 len mem[_26] % 32] or Mask(8 * -(mem[_26] % 32) + 32, -(8 * -(mem[_26] % 32) + 32) + 256, mem[_25 + floor32(mem[_26]) + 260])
            _43 = mem[64]
            mem[mem[64]] = _28 + _25 + -mem[64] + 228
            mem[64] = _28 + _25 + 260
            _45 = mem[_43]
            t = _43 + 32
            u = mem[64]
            s = mem[_43]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_43])] = mem[_43 + floor32(mem[_43]) + -(mem[_43] % 32) + 64 len mem[_43] % 32] or Mask(8 * -(mem[_43] % 32) + 32, -(8 * -(mem[_43] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_43])])
            call stor17.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _45 + _28 + _25 + -mem[64] + 256]
            if return_data.size:
                _59 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_59] = return_data.size
                mem[_59 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            t = t + 1
            continue 
        mem[0] = 18
        mem[mem[64] + 224] = stor18
        s = mem[64] + 224
        t = sha3(18)
        while mem[64] + (32 * stor18.length) + 224 > s + 32:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        _52 = mem[64]
        mem[mem[64]] = _25 + (32 * stor18.length) + -mem[64] + 192
        mem[64] = _25 + (32 * stor18.length) + 224
        mem[_25 + (32 * stor18.length) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        _54 = mem[_52]
        t = _52 + 32
        u = _25 + (32 * stor18.length) + 260
        s = mem[_52]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_25 + (32 * stor18.length) + floor32(mem[_52]) + 260] = mem[_52 + floor32(mem[_52]) + -(mem[_52] % 32) + 64 len mem[_52] % 32] or Mask(8 * -(mem[_52] % 32) + 32, -(8 * -(mem[_52] % 32) + 32) + 256, mem[_25 + (32 * stor18.length) + floor32(mem[_52]) + 260])
        mem[_25 + (32 * stor18.length) + 224] = _54 + 4
        mem[64] = _54 + _25 + (32 * stor18.length) + 260
        t = _25 + (32 * stor18.length) + 256
        u = _54 + _25 + (32 * stor18.length) + 260
        s = _54 + 4
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_54 + _25 + (32 * stor18.length) + floor32(_54 + 4) + 260] = mem[_25 + (32 * stor18.length) + -(_54 + 4 % 32) + floor32(_54 + 4) + 288 len _54 + 4 % 32] or Mask(8 * -(_54 + 4 % 32) + 32, -(8 * -(_54 + 4 % 32) + 32) + 256, mem[_54 + _25 + (32 * stor18.length) + floor32(_54 + 4) + 260])
        call stor17.mem[_54 + _25 + (32 * stor18.length) + 260 len 4] with:
             gas gas_remaining wei
            args mem[_54 + _25 + (32 * stor18.length) + 264 len _54]
        if return_data.size:
            mem[64] = _54 + _25 + (32 * stor18.length) + ceil32(return_data.size) + 261
            mem[_54 + _25 + (32 * stor18.length) + 260] = return_data.size
            mem[_54 + _25 + (32 * stor18.length) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_d8428522(?) payable {
    mem[64] = 96
    mem[0] = msg.sender
    mem[32] = sha3(0) + 1
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'NOT AN OWNER'
    mem[100] = stor10
    mem[132] = stor1.length
    require ext_code.size(stor9)
    call stor9.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor10, stor1.length
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < stor13:
        _25 = mem[64]
        mem[mem[64] + 32] = stor12
        mem[mem[64] + 64] = stor14
        mem[mem[64] + 128] = stor15
        mem[mem[64] + 160] = block.timestamp + 300
        mem[mem[64] + 96] = 160
        mem[mem[64] + 192] = stor11.length
        if not stor11.length:
            _26 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            mem[_25 + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            _28 = mem[_26]
            t = _26 + 32
            u = _25 + 260
            s = mem[_26]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_25 + floor32(mem[_26]) + 260] = mem[_26 + floor32(mem[_26]) + -(mem[_26] % 32) + 64 len mem[_26] % 32] or Mask(8 * -(mem[_26] % 32) + 32, -(8 * -(mem[_26] % 32) + 32) + 256, mem[_25 + floor32(mem[_26]) + 260])
            _43 = mem[64]
            mem[mem[64]] = _28 + _25 + -mem[64] + 228
            mem[64] = _28 + _25 + 260
            _45 = mem[_43]
            t = _43 + 32
            u = mem[64]
            s = mem[_43]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_43])] = mem[_43 + floor32(mem[_43]) + -(mem[_43] % 32) + 64 len mem[_43] % 32] or Mask(8 * -(mem[_43] % 32) + 32, -(8 * -(mem[_43] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_43])])
            call stor10.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _45 + _28 + _25 + -mem[64] + 256]
            if return_data.size:
                _59 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_59] = return_data.size
                mem[_59 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            t = t + 1
            continue 
        mem[0] = 11
        mem[mem[64] + 224] = stor11
        s = mem[64] + 224
        t = sha3(11)
        while mem[64] + (32 * stor11.length) + 224 > s + 32:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        _52 = mem[64]
        mem[mem[64]] = (32 * stor11.length) + 192
        mem[64] = mem[64] + (32 * stor11.length) + 224
        mem[_25 + (32 * stor11.length) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        _54 = mem[_52]
        t = _52 + 32
        u = _25 + (32 * stor11.length) + 260
        s = mem[_52]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_25 + (32 * stor11.length) + floor32(mem[_52]) + 260] = mem[_52 + floor32(mem[_52]) + -(mem[_52] % 32) + 64 len mem[_52] % 32] or Mask(8 * -(mem[_52] % 32) + 32, -(8 * -(mem[_52] % 32) + 32) + 256, mem[_25 + (32 * stor11.length) + floor32(mem[_52]) + 260])
        _73 = mem[64]
        mem[mem[64]] = _54 + _25 + (32 * stor11.length) + -mem[64] + 228
        mem[64] = _54 + _25 + (32 * stor11.length) + 260
        _75 = mem[_73]
        t = _73 + 32
        u = _54 + _25 + (32 * stor11.length) + 260
        s = mem[_73]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_54 + _25 + (32 * stor11.length) + floor32(mem[_73]) + 260] = mem[_73 + -(mem[_73] % 32) + floor32(mem[_73]) + 64 len mem[_73] % 32] or Mask(8 * -(mem[_73] % 32) + 32, -(8 * -(mem[_73] % 32) + 32) + 256, mem[_54 + _25 + (32 * stor11.length) + floor32(mem[_73]) + 260])
        call stor10.mem[_54 + _25 + (32 * stor11.length) + 260 len 4] with:
             gas gas_remaining wei
            args mem[_54 + _25 + (32 * stor11.length) + 264 len _75 - 4]
        if return_data.size:
            mem[64] = _54 + _25 + (32 * stor11.length) + ceil32(return_data.size) + 261
            mem[_54 + _25 + (32 * stor11.length) + 260] = return_data.size
            mem[_54 + _25 + (32 * stor11.length) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
