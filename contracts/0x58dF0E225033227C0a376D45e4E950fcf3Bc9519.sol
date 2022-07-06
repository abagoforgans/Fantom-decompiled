contract main {




// =====================  Runtime code  =====================


const sub_e6c68d9c(?) = 0xfe7877fef97c92b5f3b5ebcb9fa91c63afd92c0678029d5da88bca355cc32589

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
mapping of uint8 stor1;
address sub_72cda8a3Address;

function sub_20479b8d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function isModule(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function sub_72cda8a3(?) payable {
    return sub_72cda8a3Address
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function unregisterSwapModule(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfe7877fef97c92b5f3b5ebcb9fa91c63afd92c0678029d5da88bca355cc32589][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: not a SLINGSHOT_ADMIN_ROLE'
    if not stor1[address(arg1)]:
        revert with 0, 'module does not exist'
    stor1[address(arg1)] = 0
    emit ModuleUnregistered(arg1);
}

function setSlingshot(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfe7877fef97c92b5f3b5ebcb9fa91c63afd92c0678029d5da88bca355cc32589][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: not a SLINGSHOT_ADMIN_ROLE'
    if not arg1:
        revert with 0, 'slingshot is empty'
    if sub_72cda8a3Address == arg1:
        revert with 0, 'no changes to slingshot'
    sub_72cda8a3Address = arg1
    emit NewSlingshot(sub_72cda8a3Address, arg1);
}

function registerSwapModule(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfe7877fef97c92b5f3b5ebcb9fa91c63afd92c0678029d5da88bca355cc32589][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: not a SLINGSHOT_ADMIN_ROLE'
    if stor1[address(arg1)]:
        revert with 0, 'oops module already exists'
    require ext_code.size(arg1)
    staticcall arg1.slingshotPing() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'not a module'
    stor1[address(arg1)] = 1
    emit ModuleRegistered(arg1);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_79fdedff(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not roleAdmin[0xfe7877fef97c92b5f3b5ebcb9fa91c63afd92c0678029d5da88bca355cc32589][address(msg.sender)].field_0:
        revert with 0, 'Adminable: not a SLINGSHOT_ADMIN_ROLE'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        if not roleAdmin[0xfe7877fef97c92b5f3b5ebcb9fa91c63afd92c0678029d5da88bca355cc32589][address(msg.sender)].field_0:
            revert with 0, 'Adminable: not a SLINGSHOT_ADMIN_ROLE'
        if not stor1[address(mem[(32 * idx) + 128])]:
            revert with 0, 'module does not exist'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[address(mem[(32 * idx) + 128])] = 0
        mem[ceil32(32 * ('cd', 4).length) + 97] = mem[(32 * idx) + 140 len 20]
        emit ModuleUnregistered(mem[ceil32(32 * ('cd', 4).length) + 97]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_fd5f93e5(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[0] = msg.sender
    mem[32] = sha3(0xfe7877fef97c92b5f3b5ebcb9fa91c63afd92c0678029d5da88bca355cc32589, 0)
    if not roleAdmin[0xfe7877fef97c92b5f3b5ebcb9fa91c63afd92c0678029d5da88bca355cc32589][address(msg.sender)].field_0:
        revert with 0, 'Adminable: not a SLINGSHOT_ADMIN_ROLE'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _58 = mem[(32 * idx) + 128]
        if not roleAdmin[0xfe7877fef97c92b5f3b5ebcb9fa91c63afd92c0678029d5da88bca355cc32589][address(msg.sender)].field_0:
            revert with 0, 'Adminable: not a SLINGSHOT_ADMIN_ROLE'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        if stor1[address(mem[(32 * idx) + 128])]:
            revert with 0, 'oops module already exists'
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].slingshotPing() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _70 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_70] == bool(mem[_70])
        if not mem[_70]:
            revert with 0, 'not a module'
        mem[0] = address(_58)
        mem[32] = 1
        stor1[address(_58)] = 1
        mem[mem[64]] = address(_58)
        emit ModuleRegistered(address(_58));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
