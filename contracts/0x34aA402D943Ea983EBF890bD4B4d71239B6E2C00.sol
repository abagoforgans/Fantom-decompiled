contract main {




// =====================  Runtime code  =====================


#
#  - sub_06b70639(?)
#  - sendDust(address arg1, address arg2, uint256 arg3)
#  - execute(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4)
#  - sub_f48221a3(?)
#
const sub_057535b0(?) = 0xf97fb9ac61687d33e6f167fb66bd0dbc2240a42d8369c39aadb26ea8ce05b5fe

const sub_4d1dd98f(?) = 0xe39dc63caee7a15eb0ffb77a826d10c23d40b5f7182b000737ab5c078838b911

const sub_687020d8(?) = 0x38c8d5a0695aa8e4bf7e2d14cb85443db816cf8bdf8985d9f1a65519aeb6cd9

const sub_c32e4f8d(?) = 0xc98cf5b298d76683bff7ac7eb2544a1c5413c08c055cad5077796993f1b71e5

const sub_e454a5ed(?) = 0xf70b43cb2c88b4e8fc5d4ac1352ba889b22584df0c58c4b5b589731a1c9f6f29

const sub_fdd619e0(?) = 0x1ed19b7d0b1c0348ffe4846e5ac48d95c752b9576e5f8791436d013fb3e84b5c

const STRATEGY = 0xfe49e347583a7b9e7f325e8963ee1f94127eba81e401796874b5a22f7c8f9d45

const DEFAULT_ADMIN_ROLE = 0

const ETH_ADDRESS = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


mapping of struct roleAdmin;
address sub_a63513d8Address;
array of struct stor2;
mapping of uint256 stor3;
array of struct stor4;
mapping of address sub_ccf61a41;
mapping of uint8 sub_dbab687a;
uint256 stor7;
mapping of struct sub_5877e98e;
array of struct stor9;
mapping of uint256 stor10;
array of struct stor11;
address mechanicsRegistryAddress;

function mechanicsRegistry() payable {
    return mechanicsRegistryAddress
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_5877e98e(?) payable {
    require calldata.size - 4 >= 32
    return sub_5877e98e[arg1].field_0, 
           sub_5877e98e[arg1].field_256,
           sub_5877e98e[arg1].field_512,
           sub_5877e98e[arg1].field_768,
           sub_5877e98e[arg1].field_1024,
           sub_5877e98e[arg1].field_1280
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_a63513d8(?) payable {
    return sub_a63513d8Address
}

function isSwapper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[address(arg1)])
}

function sub_ccf61a41(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ccf61a41[arg1]
}

function sub_dbab687a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return Mask(8, 248, uint8(sub_dbab687a[arg1]))
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

function isMechanic(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(mechanicsRegistryAddress)
    staticcall mechanicsRegistryAddress.0x65834acc with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function pendingTradesIds() payable {
    if stor9.length:
        mem[128] = uint256(stor9.field_0)
        idx = 128
        s = 0
        while (32 * stor9.length) + 96 > idx:
            mem[idx + 32] = stor9[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor9.length, data=mem[128 len 32 * stor9.length])
    mem[(32 * stor9.length) + 128] = 32
    mem[(32 * stor9.length) + 160] = stor9.length
    mem[(32 * stor9.length) + 192 len 32 * stor9.length] = mem[128 len 32 * stor9.length]
    return memory
      from (32 * stor9.length) + 128
       len (96 * stor9.length) + 64
}

function pendingTradesIds(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor11[address(arg1)].field_0:
        mem[128] = stor11[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * stor11[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stor11[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor11[address(arg1)].field_0, data=mem[128 len 32 * stor11[address(arg1)].field_0])
    mem[(32 * stor11[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor11[address(arg1)].field_0) + 160] = stor11[address(arg1)].field_0
    mem[(32 * stor11[address(arg1)].field_0) + 192 len 32 * stor11[address(arg1)].field_0] = mem[128 len 32 * stor11[address(arg1)].field_0]
    return memory
      from (32 * stor11[address(arg1)].field_0) + 128
       len (96 * stor11[address(arg1)].field_0) + 64
}

function sub_cbf8e6c4(?) payable {
    mem[64] = (32 * stor2.length) + 128
    mem[96] = stor2.length
    if not stor2.length:
        mem[(32 * stor2.length) + 128] = 32
        mem[(32 * stor2.length) + 160] = stor2.length
        idx = 0
        s = (32 * stor2.length) + 192
        t = 128
        while idx < stor2.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor2.length) + 128
           len (96 * stor2.length) + 64
    mem[128] = uint256(stor2.field_0)
    idx = 128
    s = 0
    while (32 * stor2.length) + 96 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2.length) + 128] = 32
    mem[(32 * stor2.length) + 160] = stor2.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor2.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor2.length) + -mem[64] + 192
}

function setMechanicsRegistry(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0xf70b43cb2c88b4e8fc5d4ac1352ba889b22584df0c58c4b5b589731a1c9f6f29][address(msg.sender)].field_0:
        mechanicsRegistryAddress = arg1
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
    if not msg.sender + 10240:
        idx = 65
        s = 0xf70b43cb2c88b4e8fc5d4ac1352ba889b22584df0c58c4b5b589731a1c9f6f29
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
    revert with 0, 'Strings: hex length insufficient'
}

function sub_8f9745f2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if roleAdmin[0xf70b43cb2c88b4e8fc5d4ac1352ba889b22584df0c58c4b5b589731a1c9f6f29][address(msg.sender)].field_0:
        if not address(arg1):
            revert with 3643679549
        sub_a63513d8Address = address(arg1)
        emit 0xd820b9bd: address(arg1)
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
    if not msg.sender + 10240:
        idx = 65
        s = 0xf70b43cb2c88b4e8fc5d4ac1352ba889b22584df0c58c4b5b589731a1c9f6f29
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
    revert with 0, 'Strings: hex length insufficient'
}

function sub_50425491(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[64] = (32 * stor4[address(arg1)].field_0) + 128
    mem[96] = stor4[address(arg1)].field_0
    if not stor4[address(arg1)].field_0:
        mem[(32 * stor4[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor4[address(arg1)].field_0) + 160] = stor4[address(arg1)].field_0
        idx = 0
        s = (32 * stor4[address(arg1)].field_0) + 192
        t = 128
        while idx < stor4[address(arg1)].field_0:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor4[address(arg1)].field_0) + 128
           len (96 * stor4[address(arg1)].field_0) + 64
    mem[128] = stor4[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor4[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor4[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor4[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor4[address(arg1)].field_0) + 160] = stor4[address(arg1)].field_0
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor4[address(arg1)].field_0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor4[address(arg1)].field_0) + -mem[64] + 192
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

function sub_e0b95113(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == Mask(8, 248, arg2)
    if roleAdmin[0xe39dc63caee7a15eb0ffb77a826d10c23d40b5f7182b000737ab5c078838b911][address(msg.sender)].field_0:
        if not address(arg1):
            revert with 3643679549
        uint256(sub_dbab687a[address(arg1)]) = uint8(arg2) >> 248 or Mask(248, 8, uint256(sub_dbab687a[address(arg1)]))
        emit 0x3c040828: Mask(8, 248, arg2), address(arg1)
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
    s = 0xe39dc63caee7a15eb0ffb77a826d10c23d40b5f7182b000737ab5c078838b911
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_d5c44c69(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not roleAdmin[0xfe49e347583a7b9e7f325e8963ee1f94127eba81e401796874b5a22f7c8f9d45][address(msg.sender)].field_0:
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
        if not msg.sender + 10240:
            idx = 65
            s = 0xfe49e347583a7b9e7f325e8963ee1f94127eba81e401796874b5a22f7c8f9d45
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
        revert with 0, 'Strings: hex length insufficient'
    if not address(arg1):
        revert with 3643679549
    if not address(arg2):
        revert with 3643679549
    if not arg3:
        revert with 522854405
    if arg4 <= block.timestamp:
        revert with 1990005220
    sub_5877e98e[stor7].field_0 = stor7
    sub_5877e98e[stor7].field_256 = msg.sender
    sub_5877e98e[stor7].field_512 = address(arg1)
    sub_5877e98e[stor7].field_768 = address(arg2)
    sub_5877e98e[stor7].field_1024 = arg3
    sub_5877e98e[stor7].field_1280 = arg4
    if not stor11[msg.sender][1][stor7].field_0:
        stor11[msg.sender].field_0++
        stor11[msg.sender][stor11[msg.sender].field_0].field_0 = stor7
        stor11[msg.sender][1][stor7].field_0 = stor11[msg.sender].field_0
    if not stor10[stor7]:
        stor9.length++
        stor9[stor9.length].field_0 = stor7
        stor10[stor7] = stor9.length
    if stor7 > -2:
        revert with 0, 17
    stor7++
    emit 0xa369ed6c: msg.sender, address(arg1), address(arg2), arg3, arg4, stor7
    return stor7
}

function sub_4a2c1bab(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if not roleAdmin[0x38c8d5a0695aa8e4bf7e2d14cb85443db816cf8bdf8985d9f1a65519aeb6cd9][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(32 * ('cd', 4).length) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0x38c8d5a0695aa8e4bf7e2d14cb85443db816cf8bdf8985d9f1a65519aeb6cd9
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + ceil32(32 * ('cd', 4).length) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 3643679549
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        if not stor3[mem[(32 * idx) + 140 len 20]]:
            stor2.length++
            stor2[stor2.length].field_0 = mem[(32 * idx) + 140 len 20]
            stor2[stor2.length].field_160 = 0
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 3
            stor3[address(mem[(32 * idx) + 128])] = stor2.length
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(32 * ('cd', 4).length) + 97] = 32
    mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 4).length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < mem[96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x5d1fd217: mem[mem[64] len ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + -mem[64] + 161]
}

function sub_907ab008(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if not roleAdmin[0x38c8d5a0695aa8e4bf7e2d14cb85443db816cf8bdf8985d9f1a65519aeb6cd9][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(32 * ('cd', 4).length) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0x38c8d5a0695aa8e4bf7e2d14cb85443db816cf8bdf8985d9f1a65519aeb6cd9
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + ceil32(32 * ('cd', 4).length) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if stor4[mem[(32 * idx) + 140 len 20]].field_0 > 0:
            revert with 1640258063
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        if stor3[mem[(32 * idx) + 140 len 20]]:
            if stor3[mem[(32 * idx) + 140 len 20]] < 1:
                revert with 0, 17
            if stor2.length < 1:
                revert with 0, 17
            if stor2.length - 1 != stor3[mem[(32 * idx) + 140 len 20]] - 1:
                if stor2.length - 1 >= stor2.length:
                    revert with 0, 50
                if stor3[mem[(32 * idx) + 140 len 20]] - 1 >= stor2.length:
                    revert with 0, 50
                stor2[stor3[mem[(32 * idx) + 140 len 20]]].field_0 = stor2[stor2.length].field_0
                stor3[stor2[stor2.length].field_0] = stor3[mem[(32 * idx) + 140 len 20]]
            if not stor2.length:
                revert with 0, 49
            stor2[stor2.length].field_0 = 0
            stor2.length--
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 3
            stor3[address(mem[(32 * idx) + 128])] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(32 * ('cd', 4).length) + 97] = 32
    mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 4).length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < mem[96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x4290941f: mem[mem[64] len ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + -mem[64] + 161]
}

function sub_f7bd381f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not roleAdmin[0xe39dc63caee7a15eb0ffb77a826d10c23d40b5f7182b000737ab5c078838b911][address(msg.sender)].field_0:
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
        s = 0xe39dc63caee7a15eb0ffb77a826d10c23d40b5f7182b000737ab5c078838b911
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
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not address(arg1):
        revert with 3643679549
    if not address(arg2):
        revert with 3643679549
    require ext_code.size(address(arg2))
    staticcall address(arg2).SWAPPER_TYPE() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < 2
    if ext_call.return_data[0] > 1:
        revert with 0, 33
    if ext_call.return_data[0] != 1:
        revert with 2524634726
    if not stor3[address(arg2)]:
        revert with 3377429146
    if sub_ccf61a41[address(arg1)]:
        if stor4[stor5[address(arg1)]][1][address(arg1)].field_0:
            if stor4[stor5[address(arg1)]][1][address(arg1)].field_0 < 1:
                revert with 0, 17
            if stor4[stor5[address(arg1)]].field_0 < 1:
                revert with 0, 17
            if stor4[stor5[address(arg1)]].field_0 - 1 != stor4[stor5[address(arg1)]][1][address(arg1)].field_0 - 1:
                if stor4[stor5[address(arg1)]].field_0 - 1 >= stor4[stor5[address(arg1)]].field_0:
                    revert with 0, 50
                if stor4[stor5[address(arg1)]][1][address(arg1)].field_0 - 1 >= stor4[stor5[address(arg1)]].field_0:
                    revert with 0, 50
                stor4[stor5[address(arg1)]][stor4[stor5[address(arg1)]][1][address(arg1)].field_0].field_0 = stor4[stor5[address(arg1)]][stor4[stor5[address(arg1)]].field_0].field_0
                stor4[stor5[address(arg1)]][1][stor4[stor5[address(arg1)]][stor4[stor5[address(arg1)]].field_0].field_0].field_0 = stor4[stor5[address(arg1)]][1][address(arg1)].field_0
            if not stor4[stor5[address(arg1)]].field_0:
                revert with 0, 49
            stor4[stor5[address(arg1)]][stor4[stor5[address(arg1)]].field_0].field_0 = 0
            stor4[stor5[address(arg1)]].field_0--
            stor4[stor5[address(arg1)]][1][address(arg1)].field_0 = 0
    sub_ccf61a41[address(arg1)] = address(arg2)
    if not stor4[address(arg2)][1][address(arg1)].field_0:
        stor4[address(arg2)].field_0++
        stor4[address(arg2)][stor4[address(arg2)].field_0].field_0 = address(arg1)
        stor4[address(arg2)][stor4[address(arg2)].field_0].field_160 = 0
        stor4[address(arg2)][1][address(arg1)].field_0 = stor4[address(arg2)].field_0
    emit 0x9864ed30: address(arg2), address(arg1)
}

function sub_e0b1bba7(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if roleAdmin[0xfe49e347583a7b9e7f325e8963ee1f94127eba81e401796874b5a22f7c8f9d45][address(msg.sender)].field_0:
        idx = 0
        while idx < ('cd', 4).length:
            if not stor10[cd[((32 * idx) + cd[4] + 36)]]:
                revert with 3600503673
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if sub_5877e98e[cd[((32 * idx) + cd[4] + 36)]].field_256 != msg.sender:
                revert with 3935194805
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if stor11[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]].field_0:
                if stor11[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]].field_0 < 1:
                    revert with 0, 17
                if stor11[address(msg.sender)].field_0 < 1:
                    revert with 0, 17
                if stor11[address(msg.sender)].field_0 - 1 != stor11[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]].field_0 - 1:
                    if stor11[address(msg.sender)].field_0 - 1 >= stor11[address(msg.sender)].field_0:
                        revert with 0, 50
                    if stor11[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 >= stor11[address(msg.sender)].field_0:
                        revert with 0, 50
                    stor11[address(msg.sender)][stor11[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]].field_0].field_0 = stor11[address(msg.sender)][stor11[address(msg.sender)].field_0].field_0
                    stor11[address(msg.sender)][1][stor11[address(msg.sender)][stor11[address(msg.sender)].field_0].field_0].field_0 = stor11[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]].field_0
                if not stor11[address(msg.sender)].field_0:
                    revert with 0, 49
                stor11[address(msg.sender)][stor11[address(msg.sender)].field_0].field_0 = 0
                stor11[address(msg.sender)].field_0--
                stor11[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
            if stor10[cd[((32 * idx) + cd[4] + 36)]]:
                if stor10[cd[((32 * idx) + cd[4] + 36)]] < 1:
                    revert with 0, 17
                if stor9.length < 1:
                    revert with 0, 17
                if stor9.length - 1 != stor10[cd[((32 * idx) + cd[4] + 36)]] - 1:
                    if stor9.length - 1 >= stor9.length:
                        revert with 0, 50
                    if stor10[cd[((32 * idx) + cd[4] + 36)]] - 1 >= stor9.length:
                        revert with 0, 50
                    stor9[stor10[cd[((32 * idx) + cd[4] + 36)]]].field_0 = stor9[stor9.length].field_0
                    stor10[stor9[stor9.length].field_0] = stor10[cd[((32 * idx) + cd[4] + 36)]]
                if not stor9.length:
                    revert with 0, 49
                stor9[stor9.length].field_0 = 0
                stor9.length--
                stor10[cd[((32 * idx) + cd[4] + 36)]] = 0
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 8
            sub_5877e98e[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
            sub_5877e98e[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
            sub_5877e98e[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
            sub_5877e98e[cd[((32 * idx) + cd[4] + 36)]].field_768 = 0
            sub_5877e98e[cd[((32 * idx) + cd[4] + 36)]].field_1024 = 0
            sub_5877e98e[cd[((32 * idx) + cd[4] + 36)]].field_1280 = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        require ('cd', 4).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        emit TradesCanceled(Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len 32 * ('cd', 4).length]), msg.sender);
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
    if not msg.sender + 10240:
        idx = 65
        s = 0xfe49e347583a7b9e7f325e8963ee1f94127eba81e401796874b5a22f7c8f9d45
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
    revert with 0, 'Strings: hex length insufficient'
}

function execute(uint256 arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[100] = msg.sender
    require ext_code.size(mechanicsRegistryAddress)
    staticcall mechanicsRegistryAddress.0x65834acc with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Machinery: not mechanic'
    if not stor10[arg1]:
        revert with 3600503673
    if block.timestamp > sub_5877e98e[arg1].field_1280:
        revert with 2375273600
    if not stor3[address(arg2)]:
        revert with 3377429146
    mem[ceil32(return_data.size) + 132] = sub_5877e98e[arg1].field_256
    mem[ceil32(return_data.size) + 164] = arg2
    mem[ceil32(return_data.size) + 196] = sub_5877e98e[arg1].field_1024
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = sub_5877e98e[arg1].field_256
    mem[ceil32(return_data.size) + 128 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_5877e98e[arg1].field_512):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), sub_5877e98e[arg1].field_256, sub_5877e98e[arg1].field_256, address(arg2), sub_5877e98e[arg1].field_1024, 0
    mem[ceil32(return_data.size) + 392] = 0
    call sub_5877e98e[arg1].field_512 with:
       funct Mask(32, 224, transferFrom(address arg1, address arg2, uint256 arg3), sub_5877e98e[arg1].field_256, sub_5877e98e[arg1].field_256, address(arg2), sub_5877e98e[arg1].field_1024, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, transferFrom(address arg1, address arg2, uint256 arg3), sub_5877e98e[arg1].field_256, sub_5877e98e[arg1].field_256, address(arg2), sub_5877e98e[arg1].field_1024, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(arg2)
    call arg2.0xa5d4096b with:
         gas gas_remaining wei
        args sub_5877e98e[arg1].field_256, sub_5877e98e[arg1].field_512, sub_5877e98e[arg1].field_768, sub_5877e98e[arg1].field_1024, arg3, Array(len=arg4.length, data=arg4[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor11[stor8[arg1].field_256][1][arg1].field_0:
        if stor11[stor8[arg1].field_256][1][arg1].field_0 < 1:
            revert with 0, 17
        if stor11[stor8[arg1].field_256].field_0 < 1:
            revert with 0, 17
        if stor11[stor8[arg1].field_256].field_0 - 1 != stor11[stor8[arg1].field_256][1][arg1].field_0 - 1:
            if stor11[stor8[arg1].field_256].field_0 - 1 >= stor11[stor8[arg1].field_256].field_0:
                revert with 0, 50
            if stor11[stor8[arg1].field_256][1][arg1].field_0 - 1 >= stor11[stor8[arg1].field_256].field_0:
                revert with 0, 50
            stor11[stor8[arg1].field_256][stor11[stor8[arg1].field_256][1][arg1].field_0].field_0 = stor11[stor8[arg1].field_256][stor11[stor8[arg1].field_256].field_0].field_0
            stor11[stor8[arg1].field_256][1][stor11[stor8[arg1].field_256][stor11[stor8[arg1].field_256].field_0].field_0].field_0 = stor11[stor8[arg1].field_256][1][arg1].field_0
        if not stor11[stor8[arg1].field_256].field_0:
            revert with 0, 49
        stor11[stor8[arg1].field_256][stor11[stor8[arg1].field_256].field_0].field_0 = 0
        stor11[stor8[arg1].field_256].field_0--
        stor11[stor8[arg1].field_256][1][arg1].field_0 = 0
    if stor10[arg1]:
        if stor10[arg1] < 1:
            revert with 0, 17
        if stor9.length < 1:
            revert with 0, 17
        if stor9.length - 1 != stor10[arg1] - 1:
            if stor9.length - 1 >= stor9.length:
                revert with 0, 50
            if stor10[arg1] - 1 >= stor9.length:
                revert with 0, 50
            stor9[stor10[arg1]].field_0 = stor9[stor9.length].field_0
            stor10[stor9[stor9.length].field_0] = stor10[arg1]
        if not stor9.length:
            revert with 0, 49
        stor9[stor9.length].field_0 = 0
        stor9.length--
        stor10[arg1] = 0
    sub_5877e98e[arg1].field_0 = 0
    sub_5877e98e[arg1].field_256 = 0
    sub_5877e98e[arg1].field_512 = 0
    sub_5877e98e[arg1].field_768 = 0
    sub_5877e98e[arg1].field_1024 = 0
    sub_5877e98e[arg1].field_1280 = 0
    emit 0xf3b176b5: ext_call.return_data[0], arg1
    return ext_call.return_data[0]
}

function sub_9f87641d(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if roleAdmin[0x1ed19b7d0b1c0348ffe4846e5ac48d95c752b9576e5f8791436d013fb3e84b5c][address(msg.sender)].field_0:
        idx = 0
        while idx < ('cd', 36).length:
            if sub_5877e98e[cd[4]].field_0 == sub_5877e98e[cd[((32 * idx) + cd[36] + 36)]].field_0:
                revert with 3600503673
            if sub_5877e98e[cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_5877e98e[cd[4]].field_256:
                revert with 3600503673
            if sub_5877e98e[cd[((32 * idx) + cd[36] + 36)]].field_512 != sub_5877e98e[cd[4]].field_512:
                revert with 3600503673
            if sub_5877e98e[cd[((32 * idx) + cd[36] + 36)]].field_768 != sub_5877e98e[cd[4]].field_768:
                revert with 3600503673
            if sub_5877e98e[cd[4]].field_1024 > !sub_5877e98e[cd[((32 * idx) + cd[36] + 36)]].field_1024:
                revert with 0, 17
            sub_5877e98e[cd[4]].field_1024 += sub_5877e98e[cd[((32 * idx) + cd[36] + 36)]].field_1024
            if stor11[stor8[cd[((32 * idx) + cd[36] + 36)]].field_256][1][stor8[cd[((32 * idx) + cd[36] + 36)]].field_0].field_0:
                if stor11[stor8[cd[((32 * idx) + cd[36] + 36)]].field_256][1][stor8[cd[((32 * idx) + cd[36] + 36)]].field_0].field_0 < 1:
                    revert with 0, 17
                if stor11[stor8[cd[((32 * idx) + cd[36] + 36)]].field_256].field_0 < 1:
                    revert with 0, 17
                if stor11[stor8[cd[((32 * idx) + cd[36] + 36)]].field_256].field_0 - 1 != stor11[stor8[cd[((32 * idx) + cd[36] + 36)]].field_256][1][stor8[cd[((32 * idx) + cd[36] + 36)]].field_0].field_0 - 1:
                    if stor11[stor8[cd[((32 * idx) + cd[36] + 36)]].field_256].field_0 - 1 >= stor11[stor8[cd[((32 * idx) + cd[36] + 36)]].field_256].field_0:
                        revert with 0, 50
                    if stor11[stor8[cd[((32 * idx) + cd[36] + 36)]].field_256][1][stor8[cd[((32 * idx) + cd[36] + 36)]].field_0].field_0 - 1 >= stor11[stor8[cd[((32 * idx) + cd[36] + 36)]].field_256].field_0:
                        revert with 0, 50
                    stor11[stor8[cd[((32 * idx) + cd[36] + 36)]].field_256][stor11[stor8[cd[((32 * idx) + cd[36] + 36)]].field_256][1][stor8[cd[((32 * idx) + cd[36] + 36)]].field_0].field_0].field_0 = stor11[stor8[cd[((32 * idx) + cd[36] + 36)]].field_256][stor11[stor8[cd[((32 * idx) + cd[36] + 36)]].field_256].field_0].field_0
                    stor11[stor8[cd[((32 * idx) + cd[36] + 36)]].field_256][1][stor11[stor8[cd[((32 * idx) + cd[36] + 36)]].field_256][stor11[stor8[cd[((32 * idx) + cd[36] + 36)]].field_256].field_0].field_0].field_0 = stor11[stor8[cd[((32 * idx) + cd[36] + 36)]].field_256][1][stor8[cd[((32 * idx) + cd[36] + 36)]].field_0].field_0
                if not stor11[stor8[cd[((32 * idx) + cd[36] + 36)]].field_256].field_0:
                    revert with 0, 49
                stor11[stor8[cd[((32 * idx) + cd[36] + 36)]].field_256][stor11[stor8[cd[((32 * idx) + cd[36] + 36)]].field_256].field_0].field_0 = 0
                stor11[stor8[cd[((32 * idx) + cd[36] + 36)]].field_256].field_0--
                stor11[stor8[cd[((32 * idx) + cd[36] + 36)]].field_256][1][stor8[cd[((32 * idx) + cd[36] + 36)]].field_0].field_0 = 0
            if stor10[stor8[cd[((32 * idx) + cd[36] + 36)]].field_0]:
                if stor10[stor8[cd[((32 * idx) + cd[36] + 36)]].field_0] < 1:
                    revert with 0, 17
                if stor9.length < 1:
                    revert with 0, 17
                if stor9.length - 1 != stor10[stor8[cd[((32 * idx) + cd[36] + 36)]].field_0] - 1:
                    if stor9.length - 1 >= stor9.length:
                        revert with 0, 50
                    if stor10[stor8[cd[((32 * idx) + cd[36] + 36)]].field_0] - 1 >= stor9.length:
                        revert with 0, 50
                    stor9[stor10[stor8[cd[((32 * idx) + cd[36] + 36)]].field_0]].field_0 = stor9[stor9.length].field_0
                    stor10[stor9[stor9.length].field_0] = stor10[stor8[cd[((32 * idx) + cd[36] + 36)]].field_0]
                if not stor9.length:
                    revert with 0, 49
                stor9[stor9.length].field_0 = 0
                stor9.length--
                stor10[stor8[cd[((32 * idx) + cd[36] + 36)]].field_0] = 0
            mem[0] = sub_5877e98e[cd[((32 * idx) + cd[36] + 36)]].field_0
            mem[32] = 8
            sub_5877e98e[sub_5877e98e[cd[((32 * idx) + cd[36] + 36)]].field_0].field_0 = 0
            sub_5877e98e[sub_5877e98e[cd[((32 * idx) + cd[36] + 36)]].field_0].field_256 = 0
            sub_5877e98e[sub_5877e98e[cd[((32 * idx) + cd[36] + 36)]].field_0].field_512 = 0
            sub_5877e98e[sub_5877e98e[cd[((32 * idx) + cd[36] + 36)]].field_0].field_768 = 0
            sub_5877e98e[sub_5877e98e[cd[((32 * idx) + cd[36] + 36)]].field_0].field_1024 = 0
            sub_5877e98e[sub_5877e98e[cd[((32 * idx) + cd[36] + 36)]].field_0].field_1280 = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        emit 0xbba31c5a: Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len 32 * ('cd', 36).length]), cd[4]
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
    if not msg.sender + 10240:
        idx = 65
        s = 0x1ed19b7d0b1c0348ffe4846e5ac48d95c752b9576e5f8791436d013fb3e84b5c
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
    revert with 0, 'Strings: hex length insufficient'
}

function expire(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[100] = msg.sender
    require ext_code.size(mechanicsRegistryAddress)
    staticcall mechanicsRegistryAddress.0x65834acc with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Machinery: not mechanic'
    if not stor10[arg1]:
        revert with 3600503673
    if block.timestamp < sub_5877e98e[arg1].field_1280:
        revert with 3672628205
    mem[ceil32(return_data.size) + 132] = sub_5877e98e[arg1].field_256
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = sub_5877e98e[arg1].field_1024
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = sub_5877e98e[arg1].field_256
    mem[ceil32(return_data.size) + 128 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_5877e98e[arg1].field_512):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), sub_5877e98e[arg1].field_256, sub_5877e98e[arg1].field_256, address(this.address), sub_5877e98e[arg1].field_1024, 0
    mem[ceil32(return_data.size) + 392] = 0
    call sub_5877e98e[arg1].field_512 with:
       funct Mask(32, 224, transferFrom(address arg1, address arg2, uint256 arg3), sub_5877e98e[arg1].field_256, sub_5877e98e[arg1].field_256, address(this.address), sub_5877e98e[arg1].field_1024, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, transferFrom(address arg1, address arg2, uint256 arg3), sub_5877e98e[arg1].field_256, sub_5877e98e[arg1].field_256, address(this.address), sub_5877e98e[arg1].field_1024, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + 328] = sub_5877e98e[arg1].field_256
        mem[ceil32(return_data.size) + 360] = sub_5877e98e[arg1].field_1024
        mem[ceil32(return_data.size) + 292] = 68
        mem[ceil32(return_data.size) + 324 len 4] = transfer(address arg1, uint256 arg2)
        mem[ceil32(return_data.size) + 392] = 32
        mem[ceil32(return_data.size) + 424] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_5877e98e[arg1].field_512):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 456 len 96] = 0, sub_5877e98e[arg1].field_256, sub_5877e98e[arg1].field_1024, 0
        mem[ceil32(return_data.size) + 524] = 0
        call sub_5877e98e[arg1].field_512 with:
           funct Mask(32, 224, 0, sub_5877e98e[arg1].field_256, sub_5877e98e[arg1].field_1024, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, sub_5877e98e[arg1].field_256, sub_5877e98e[arg1].field_1024, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                if not uint32(msg.sender), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 488] == bool(mem[ceil32(return_data.size) + 488])
                if not mem[ceil32(return_data.size) + 488]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292] = return_data.size
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = sub_5877e98e[arg1].field_256
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = sub_5877e98e[arg1].field_1024
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = 68
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4] = transfer(address arg1, uint256 arg2)
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_5877e98e[arg1].field_512):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len 96] = 0, sub_5877e98e[arg1].field_256, sub_5877e98e[arg1].field_1024, 0
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 525] = 0
        call sub_5877e98e[arg1].field_512 with:
           funct Mask(32, 224, 0, sub_5877e98e[arg1].field_256, sub_5877e98e[arg1].field_1024, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, sub_5877e98e[arg1].field_256, sub_5877e98e[arg1].field_1024, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                if not uint32(msg.sender), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = return_data.size
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 462] = 32
                mem[(4 * ceil32(return_data.size)) + 494] = 32
                mem[(4 * ceil32(return_data.size)) + 526] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 458
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 489])
                if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 489]:
                    mem[(4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 462] = 32
                    mem[(4 * ceil32(return_data.size)) + 494] = 42
                    mem[(4 * ceil32(return_data.size)) + 526] = 'SafeERC20: ERC20 operation did n'
                    mem[(4 * ceil32(return_data.size)) + 558] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 458
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    if stor11[stor8[arg1].field_256][1][arg1].field_0:
        if stor11[stor8[arg1].field_256][1][arg1].field_0 < 1:
            revert with 0, 17
        if stor11[stor8[arg1].field_256].field_0 < 1:
            revert with 0, 17
        if stor11[stor8[arg1].field_256].field_0 - 1 != stor11[stor8[arg1].field_256][1][arg1].field_0 - 1:
            if stor11[stor8[arg1].field_256].field_0 - 1 >= stor11[stor8[arg1].field_256].field_0:
                revert with 0, 50
            if stor11[stor8[arg1].field_256][1][arg1].field_0 - 1 >= stor11[stor8[arg1].field_256].field_0:
                revert with 0, 50
            stor11[stor8[arg1].field_256][stor11[stor8[arg1].field_256][1][arg1].field_0].field_0 = stor11[stor8[arg1].field_256][stor11[stor8[arg1].field_256].field_0].field_0
            stor11[stor8[arg1].field_256][1][stor11[stor8[arg1].field_256][stor11[stor8[arg1].field_256].field_0].field_0].field_0 = stor11[stor8[arg1].field_256][1][arg1].field_0
        if not stor11[stor8[arg1].field_256].field_0:
            revert with 0, 49
        stor11[stor8[arg1].field_256][stor11[stor8[arg1].field_256].field_0].field_0 = 0
        stor11[stor8[arg1].field_256].field_0--
        stor11[stor8[arg1].field_256][1][arg1].field_0 = 0
    if stor10[arg1]:
        if stor10[arg1] < 1:
            revert with 0, 17
        if stor9.length < 1:
            revert with 0, 17
        if stor9.length - 1 != stor10[arg1] - 1:
            if stor9.length - 1 >= stor9.length:
                revert with 0, 50
            if stor10[arg1] - 1 >= stor9.length:
                revert with 0, 50
            stor9[stor10[arg1]].field_0 = stor9[stor9.length].field_0
            stor10[stor9[stor9.length].field_0] = stor10[arg1]
        if not stor9.length:
            revert with 0, 49
        stor9[stor9.length].field_0 = 0
        stor9.length--
        stor10[arg1] = 0
    sub_5877e98e[arg1].field_0 = 0
    sub_5877e98e[arg1].field_256 = 0
    sub_5877e98e[arg1].field_512 = 0
    sub_5877e98e[arg1].field_768 = 0
    sub_5877e98e[arg1].field_1024 = 0
    sub_5877e98e[arg1].field_1280 = 0
    emit 0x9e52c476: arg1
    return sub_5877e98e[arg1].field_1024
}



}
