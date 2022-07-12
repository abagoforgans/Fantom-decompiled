contract main {




// =====================  Runtime code  =====================


#
#  - getAllRegisteredUsers()
#  - sub_3a317ad6(?)
#
const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of struct roleAdmin;
mapping of uint8 stor115735116308211264584378798639139061516686732922554905406890050695344091519515;
uint256 sub_f593a387;
uint256 sub_29758bc5;
uint256 sub_d575fe64;
uint256 sub_eb794021;
uint256 sub_1871f761;
uint256 sub_ad38f9ca;
uint256 sub_d562f92c;
uint256 sub_585403ea;
array of address sub_7259e0f8;
array of address sub_bc4f6def;
mapping of uint8 stor162;
mapping of struct users;
array of uint256 stor164;
address stor166;
address stor167;
address stor168;
array of address stor54725940205820449199006535558264881712036866349217639895779085403156972314248;

function registeredUser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint16(registeredUser[arg1].field_0)
}

function sub_0cf73792(?) {
    require calldata.size - 4 >= 32
    return bool(stor162[arg1])
}

function sub_1871f761(?) {
    return sub_1871f761
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_29758bc5(?) {
    return sub_29758bc5
}

function sub_585403ea(?) {
    return sub_585403ea
}

function sub_7259e0f8(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_7259e0f8.length
    return sub_7259e0f8[arg1]
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function sub_a86a0019(?) {
    require calldata.size - 4 >= 64
    require arg2 < stor164[arg1]
    return sub_a86a0019[uint8(arg2)]
}

function users(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint32(users[arg1].field_0), uint32(users[arg1].field_0), users[arg1].field_256, users[arg1].field_512
}

function sub_ad38f9ca(?) {
    return sub_ad38f9ca
}

function sub_bc4f6def(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_bc4f6def.length
    return sub_bc4f6def[arg1]
}

function sub_d562f92c(?) {
    return sub_d562f92c
}

function sub_d575fe64(?) {
    return sub_d575fe64
}

function sub_eb794021(?) {
    return sub_eb794021
}

function sub_f593a387(?) {
    return sub_f593a387
}

function _fallback() payable {
    revert
}

function sub_7b8529ec(?) {
    require calldata.size - 4 >= 32
    if not storFFDF[msg.sender]:
        revert with 0, 'Not an owner'
    sub_ad38f9ca = arg1
}

function sub_216590fc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not storFFDF[msg.sender]:
        revert with 0, 'Not an owner'
    sub_bc4f6def.length++
    stor78FD[stor160.length] = address(arg1)
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_7d023482(?) {
    require calldata.size - 4 >= 160
    if not storFFDF[msg.sender]:
        revert with 0, 'Not an owner'
    if arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MaxLobbyUsers must be a multiple of 2'
    if arg1 >= 1000:
        revert with 0, 'Too much commission'
    if not arg4:
        revert with 0, 'Cards amount should not be zero'
    sub_d575fe64 = arg1
    sub_eb794021 = arg2
    sub_1871f761 = arg3
    sub_d562f92c = arg4
    sub_585403ea = arg5
}

function sub_40722da3(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if not storFFDF[msg.sender]:
        revert with 0, 'Not an owner'
    stor164[cd[4]] = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while stor164[cd[4]] + 15 / 16 > idx:
            stor164[cd[4]][idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            stor164[cd[4]] = uint16(cd[idx]) * 256^s or !(65535 * 256^s) and stor164[cd[4]]
            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
            idx = idx + 32
            continue 
        idx = floor32(('cd', 36).length) >> 4
        s = sha3(sha3(cd[4], 164))
        while idx:
            stor[s] = !(65535 * 256^idx) and stor[s]
            idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
            s = (idx + 3 / 32) + s
            continue 
        idx = (floor32(('cd', 36).length) >> 4) + Mask(254, 1, None + -(floor32(('cd', 36).length) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(('cd', 36).length) >> 4) + 3) >> 1
        while stor164[cd[4]] + 15 / 16 > idx:
            stor164[cd[4]][idx] = 0
            idx = idx + 1
            continue 
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
        if uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
        if not uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function initialize(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if not uint8(stor0.field_8):
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if not uint8(stor0.field_8):
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if not uint8(stor0.field_8):
                        uint16(stor0.field_0) = 257
                        uint8(stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if not uint8(stor0.field_8):
                            uint16(stor0.field_0) = 257
                            uint8(stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
    if not uint8(roleAdmin[0][address(msg.sender)].field_0):
        uint8(roleAdmin[0][address(msg.sender)].field_0) = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    stor167 = arg1
    stor168 = arg2
    stor166 = arg3
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_91869df5(?) {
    if tx.origin != msg.sender:
        revert with 0, 'No contracts'
    if not registeredUser[msg.sender].field_512:
        revert with 0, 'Not registered'
    require uint16(registeredUser[address(msg.sender)].field_0) < sub_7259e0f8.length
    if sub_7259e0f8.length < 1:
        revert with 0, 17
    if sub_7259e0f8.length - 1 >= sub_7259e0f8.length:
        revert with 0, 50
    if uint16(registeredUser[address(msg.sender)].field_0) >= sub_7259e0f8.length:
        revert with 0, 50
    sub_7259e0f8[uint16(stor161[address(msg.sender)].field_0)] = sub_7259e0f8[sub_7259e0f8.length]
    if sub_7259e0f8.length < 1:
        revert with 0, 17
    if sub_7259e0f8.length - 1 >= sub_7259e0f8.length:
        revert with 0, 50
    uint16(registeredUser[stor159[stor159.length]].field_0) = uint16(registeredUser[address(msg.sender)].field_0)
    if not sub_7259e0f8.length:
        revert with 0, 49
    sub_7259e0f8[sub_7259e0f8.length] = 0
    sub_7259e0f8.length--
    if registeredUser[address(msg.sender)].field_512:
        mem[128] = uint32(registeredUser[address(msg.sender)][2].field_0)
        idx = 128
        s = 0
        while (32 * registeredUser[address(msg.sender)].field_512) + 96 > idx:
            mem[idx + 32] = uint32(registeredUser[address(msg.sender)][2].field_8 * (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s))
            idx = idx + 32
            s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
            continue 
    mem[(32 * registeredUser[address(msg.sender)].field_512) + 128] = registeredUser[address(msg.sender)].field_256
    if registeredUser[address(msg.sender)].field_256:
        mem[(32 * registeredUser[address(msg.sender)].field_512) + 160] = uint16(registeredUser[address(msg.sender)][1].field_0)
        idx = (32 * registeredUser[address(msg.sender)].field_512) + 160
        s = 0
        while (32 * registeredUser[address(msg.sender)].field_512) + (32 * registeredUser[address(msg.sender)].field_256) + 128 > idx:
            mem[idx + 32] = uint16(registeredUser[address(msg.sender)][1].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
            idx = idx + 32
            s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
            continue 
    idx = 0
    while idx < registeredUser[address(msg.sender)].field_512:
        if idx >= registeredUser[address(msg.sender)].field_256:
            revert with 0, 50
        if idx >= registeredUser[address(msg.sender)].field_512:
            revert with 0, 50
        mem[0] = uint32(mem[(32 * idx) + 128]) << 16 or mem[(32 * idx) + (32 * registeredUser[address(msg.sender)].field_512) + 190 len 2]
        mem[32] = 162
        stor162[uint32(mem[(32 * idx) + 128]) << 16 or mem[(32 * idx) + (32 * stor161[address(msg.sender)].field_512) + 190 len 2]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    uint16(registeredUser[address(msg.sender)].field_0) = 0
    registeredUser[address(msg.sender)].field_256 = 0
    idx = 0
    while registeredUser[address(msg.sender)].field_256 + 15 / 16 > idx:
        registeredUser[address(msg.sender)][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    registeredUser[address(msg.sender)].field_512 = 0
    idx = 0
    while registeredUser[address(msg.sender)].field_512 + 7 / 8 > idx:
        registeredUser[address(msg.sender)][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    if sub_1871f761 and sub_d575fe64 > -1 / sub_1871f761:
        revert with 0, 17
    if sub_1871f761 < sub_1871f761 * sub_d575fe64 / 1000:
        revert with 0, 17
    call msg.sender with:
       value sub_1871f761 - (sub_1871f761 * sub_d575fe64 / 1000) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send value'
}

function sub_6b432908(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if registeredUser[address(arg1)].field_256:
        mem[224] = uint16(registeredUser[address(arg1)][1].field_0)
        idx = 224
        s = 0
        while (32 * registeredUser[address(arg1)].field_256) + 192 > idx:
            mem[idx + 32] = uint16(registeredUser[address(arg1)][1].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
            idx = idx + 32
            s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
            continue 
    mem[(32 * registeredUser[address(arg1)].field_256) + 224] = registeredUser[address(arg1)].field_512
    if registeredUser[address(arg1)].field_512:
        mem[(32 * registeredUser[address(arg1)].field_256) + 256] = uint32(registeredUser[address(arg1)][2].field_0)
        idx = (32 * registeredUser[address(arg1)].field_256) + 256
        s = 0
        while (32 * registeredUser[address(arg1)].field_256) + (32 * registeredUser[address(arg1)].field_512) + 224 > idx:
            mem[idx + 32] = uint32(registeredUser[address(arg1)][2].field_8 * (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s))
            idx = idx + 32
            s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
            continue 
    idx = 0
    s = 0
    while idx < registeredUser[address(arg1)].field_512:
        if idx >= registeredUser[address(arg1)].field_256:
            revert with 0, 50
        mem[32] = 164
        if idx >= registeredUser[address(arg1)].field_512:
            revert with 0, 50
        if mem[(32 * idx) + (32 * registeredUser[address(arg1)].field_256) + 284 len 4] >= stor164[mem[(32 * idx) + 254 len 2]]:
            revert with 0, 50
        mem[0] = sha3(mem[(32 * idx) + 254 len 2], 164)
        if s > !stor('array', ('mask_shl', 28, 4, -4, ('mem', ('range', ('add', 256, ('mul', 32, ('var', 0)), ('mul', 32, ('stor', 256, 256, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor161', 161))))), 32))), ('map', ('mem', ('range', ('add', 254, ('mul', 32, ('var', 0))), 2)), ('name', 'stor164', 164)))[uint8(mem[(32 * idx) + (32 * stor161[address(arg1)].field_256) + 256])]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + stor('array', ('mask_shl', 28, 4, -4, ('mem', ('range', ('add', 256, ('mul', 32, ('var', 0)), ('mul', 32, ('stor', 256, 256, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor161', 161))))), 32))), ('map', ('mem', ('range', ('add', 254, ('mul', 32, ('var', 0))), 2)), ('name', 'stor164', 164)))[uint8(mem[(32 * idx) + (32 * stor161[address(arg1)].field_256) + 256])]
        continue 
    return (s * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512 * registeredUser[address(arg1)].field_512)
}



}
