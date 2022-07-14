contract main {




// =====================  Runtime code  =====================


const sub_852757ad(?) = 0x74966176c367549066de941fecec46be0069530384452daa9c31d709c544e639

const DEFAULT_ADMIN_ROLE = 0

const DEPLOYER = 0xa3ea783a3e4c6b87c807592c4c7a4bd762f408dcf29033fc70eb21860d3f83f7


mapping of struct roleAdmin;
array of struct sub_21a07957;
mapping of uint8 stor2;
mapping of uint8 stor15272177142342799507624994364813482190103002741410532762740336948374121529790;
mapping of uint8 stor33421384141768929893576645302703591200376437916121684180955787250359466282354;

function sub_17a26727(?) payable {
    return sub_21a07957.length
}

function sub_21a07957(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_21a07957.length
    return sub_21a07957[arg1].field_0
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function approvedTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function _fallback() payable {
    revert
}

function sub_0c0e0cef(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if not stor21C3[msg.sender]:
        revert with 0, 'Factory: caller not admin'
    stor2[address(arg1)] = uint8(bool(arg2))
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

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
}

function sub_61e7754f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not stor21C3[msg.sender]:
        revert with 0, 'Factory: caller not admin'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_3ecbb703(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if not stor21C3[msg.sender]:
        revert with 0, 'Factory: caller not admin'
    if arg1 >= sub_21a07957.length:
        revert with 0, 'Factory: invalid id'
    require ext_code.size(sub_21a07957[arg1].field_0)
    staticcall sub_21a07957[arg1].field_0.targetToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(arg2) != ext_call.return_data[12 len 20]:
        revert with 0, 'Factory: invalid sale token'
    if sub_21a07957.length < 1:
        revert with 0, 17
    if sub_21a07957.length - 1 >= sub_21a07957.length:
        revert with 0, 50
    if arg1 >= sub_21a07957.length:
        revert with 0, 50
    sub_21a07957[arg1].field_0 = sub_21a07957[sub_21a07957.length].field_0
    if not sub_21a07957.length:
        revert with 0, 49
    sub_21a07957[sub_21a07957.length].field_0 = 0
    sub_21a07957.length--
}

function sub_592b9684(?) payable {
    mem[64] = (32 * sub_21a07957.length) + 128
    mem[96] = sub_21a07957.length
    if not sub_21a07957.length:
        mem[(32 * sub_21a07957.length) + 128] = 32
        mem[(32 * sub_21a07957.length) + 160] = sub_21a07957.length
        idx = 0
        s = (32 * sub_21a07957.length) + 192
        t = 128
        while idx < sub_21a07957.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_21a07957.length) + 128
           len (96 * sub_21a07957.length) + 64
    mem[128] = address(sub_21a07957.field_0)
    idx = 128
    s = 0
    while (32 * sub_21a07957.length) + 96 > idx:
        mem[idx + 32] = sub_21a07957[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_21a07957.length) + 128] = 32
    mem[(32 * sub_21a07957.length) + 160] = sub_21a07957.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_21a07957.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_21a07957.length) + -mem[64] + 192
}

function sub_1c42cede(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 544
    require ('cd', 4).length == address(('cd', 4).length)
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] == address(('cd', 4)[1])
    require ('cd', 4)[2] == address(('cd', 4)[2])
    require ('cd', 4)[10] == bool(('cd', 4)[10])
    require ('cd', 4)[11] == bool(('cd', 4)[11])
    require ('cd', 4)[12] == bool(('cd', 4)[12])
    require ('cd', 4)[13] == bool(('cd', 4)[13])
    require ('cd', 4)[15] <= test266151307()
    require cd[4] + ('cd', 4)[15] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[15] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[4] + ('cd', 4)[15] + 4)]) + 641 > test266151307() or ceil32(32 * cd[(cd[4] + ('cd', 4)[15] + 4)]) + 641 < 640:
        revert with 0, 65
    mem[640] = cd[(cd[4] + ('cd', 4)[15] + 4)]
    require calldata.size >= cd[4] + ('cd', 4)[15] + (32 * cd[(cd[4] + ('cd', 4)[15] + 4)]) + 36
    s = cd[4] + ('cd', 4)[15] + 36
    idx = 0
    t = 672
    while idx < cd[(cd[4] + ('cd', 4)[15] + 4)]:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if not stor49E3[msg.sender]:
        revert with 0, 'Factory: caller not deployer'
    if not stor2[address(('cd', 4)[0])]:
        revert with 0, 'Factory: invalid accepted token'
    create contract with 0 wei
                    code: code.data[5320 len 18491], address(('cd', 4)[1]), msg.sender, bool(('cd', 4)[10]), bool(('cd', 4)[12])
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[15] + 4)]) + 641] = 0x67f08d3d00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[15] + 4)]) + 645] = 32
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x67f08d3d with:
         gas gas_remaining wei
        args 32, address(('cd', 4).length), address(('cd', 4)[0]), address(('cd', 4)[1]), address(('cd', 4)[2]), ('cd', 4)[3], ('cd', 4)[4], ('cd', 4)[5], ('cd', 4)[6], ('cd', 4)[7], ('cd', 4)[8], ('cd', 4)[9], bool(('cd', 4)[10]), bool(('cd', 4)[11]), bool(('cd', 4)[12]), bool(('cd', 4)[13]), ('cd', 4)[14], 544, cd[(cd[4] + ('cd', 4)[15] + 4)], mem[672 len 32 * cd[(cd[4] + ('cd', 4)[15] + 4)]]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_21a07957.length++
    sub_21a07957[sub_21a07957.length].field_0 = address(create.new_address)
    emit Deployed(address(('cd', 4)[1]), address(create.new_address));
    if sub_21a07957.length < 1:
        revert with 0, 17
    return (sub_21a07957.length - 1)
}



}
