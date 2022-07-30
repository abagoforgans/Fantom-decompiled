contract main {




// =====================  Runtime code  =====================


const sub_13776a8d(?) = 0x1cf336fddcc7dc48127faf7a5b80ee54fce73ef647eecd31c24bb6cce3ac3eef

const sub_4898328e(?) = 0xfe01929b51ccb866359f22f5a3ce5c78c9fc36c4de9719e0e678f9a41b4e88b7

const sub_597edeac(?) = 0xb6de926b215ddcf7694f74b03c5f26abafd73fe49a804fdcb75e1d41a2eee06b

const WHITELISTER_ROLE = 0x8619cecd8b9e095ab43867f5b69d492180450fe862e6b50bfbfb24b75dd84c8a

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of struct roleAdmin;
mapping of uint256 sub_a4a6b0c3;
mapping of uint256 sub_022cff8c;
uint256 sub_1425d49f;
uint256 sub_e296651e;
address sub_2304aa61Address;
address sub_ff12673aAddress;
address devWalletAddress;
uint8 sub_a984e9e0; offset 160
address sub_65f5275aAddress;

function sub_022cff8c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_022cff8c[arg1]
}

function sub_1425d49f(?) payable {
    return sub_1425d49f
}

function sub_2304aa61(?) payable {
    return sub_2304aa61Address
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_65f5275a(?) payable {
    return sub_65f5275aAddress
}

function devWallet() payable {
    return devWalletAddress
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_a4a6b0c3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_a4a6b0c3[arg1]
}

function sub_a984e9e0(?) payable {
    return bool(sub_a984e9e0)
}

function sub_e296651e(?) payable {
    return sub_e296651e
}

function sub_ff12673a(?) payable {
    return sub_ff12673aAddress
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

function sub_af7b097d(?) payable {
    if sub_a984e9e0:
        revert with 0, 'MPHMinterFantomFix: FIXED'
    if sub_ff12673aAddress != msg.sender:
        revert with 0, 'MPHMinterFantomFix: WHO?'
    if not roleAdmin[0][stor156].field_0:
        roleAdmin[0][stor156].field_0 = 1
        emit RoleGranted(0, sub_ff12673aAddress, msg.sender);
    if not roleAdmin[0x8619cecd8b9e095ab43867f5b69d492180450fe862e6b50bfbfb24b75dd84c8a][stor156].field_0:
        roleAdmin[0x8619cecd8b9e095ab43867f5b69d492180450fe862e6b50bfbfb24b75dd84c8a][stor156].field_0 = 1
        emit RoleGranted(0x8619cecd8b9e095ab43867f5b69d492180450fe862e6b50bfbfb24b75dd84c8a, sub_ff12673aAddress, msg.sender);
    sub_a984e9e0 = 1
}

function setGovTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0][address(msg.sender)].field_0:
        if not arg1:
            revert with 0, 'MPHMinter: 0 address'
        sub_ff12673aAddress = arg1
        emit ESetParamAddress(arg1, msg.sender, sha3('govTreasury'));
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function setDevWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0][address(msg.sender)].field_0:
        if not arg1:
            revert with 0, 'MPHMinter: 0 address'
        devWalletAddress = arg1
        emit ESetParamAddress(arg1, msg.sender, sha3(1851985534491980227956));
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function setGovRewardMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0][address(msg.sender)].field_0:
        if arg1 > 10^18:
            revert with 0, 'MPHMinter: invalid multiplier'
        sub_e296651e = arg1
        emit ESetParamUint(0, arg1, msg.sender, sha3(0x676f765265776172644d756c7469706c696572));
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function setDevRewardMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0][address(msg.sender)].field_0:
        if arg1 > 10^18:
            revert with 0, 'MPHMinter: invalid multiplier'
        sub_1425d49f = arg1
        emit ESetParamUint(0, arg1, msg.sender, sha3(0x6465765265776172644d756c7469706c696572));
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function setVesting02(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0][address(msg.sender)].field_0:
        if not ext_code.size(arg1):
            revert with 0, 'MPHMinter: not contract'
        sub_65f5275aAddress = arg1
        emit ESetParamAddress(arg1, msg.sender, sha3(2184026115314052182066));
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function setMPHTokenOwnerToZero() payable {
    if roleAdmin[0][address(msg.sender)].field_0:
        require ext_code.size(sub_2304aa61Address)
        call sub_2304aa61Address.0x715018a6 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit ESetParamAddress(0, msg.sender, sha3(0x6d7068546f6b656e4f776e6572));
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function setPoolFunderRewardMultiplier(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if roleAdmin[0][address(msg.sender)].field_0:
        if not ext_code.size(arg1):
            revert with 0, 'MPHMinter: pool not contract'
        sub_022cff8c[address(arg1)] = arg2
        emit ESetParamUint(address(arg1), arg2, msg.sender, sha3('poolFunderRewardMultiplier'));
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function setPoolDepositorRewardMintMultiplier(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if roleAdmin[0][address(msg.sender)].field_0:
        if not ext_code.size(arg1):
            revert with 0, 'MPHMinter: pool not contract'
        sub_a4a6b0c3[address(arg1)] = arg2
        emit ESetParamUint(address(arg1), arg2, msg.sender, sha3('poolDepositorRewardMintMultiplie', 114));
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function setMPHTokenOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0][address(msg.sender)].field_0:
        if not arg1:
            revert with 0, 'MPHMinter: 0 address'
        require ext_code.size(sub_2304aa61Address)
        call sub_2304aa61Address.0xf2fde38b with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit ESetParamAddress(arg1, msg.sender, sha3(0x6d7068546f6b656e4f776e6572));
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
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

function updateVestForDeposit(uint64 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if roleAdmin[0xfe01929b51ccb866359f22f5a3ce5c78c9fc36c4de9719e0e678f9a41b4e88b7][address(msg.sender)].field_0:
        require ext_code.size(sub_65f5275aAddress)
        call sub_65f5275aAddress.updateVestForDeposit(address arg1, uint64 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg1 << 192, arg2, arg3, sub_a4a6b0c3[msg.sender]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
        s = 0xfe01929b51ccb866359f22f5a3ce5c78c9fc36c4de9719e0e678f9a41b4e88b7
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

function sub_2f4cfd47(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not roleAdmin[0x1cf336fddcc7dc48127faf7a5b80ee54fce73ef647eecd31c24bb6cce3ac3eef][address(msg.sender)].field_0:
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
            s = 0x1cf336fddcc7dc48127faf7a5b80ee54fce73ef647eecd31c24bb6cce3ac3eef
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
    require ext_code.size(sub_2304aa61Address)
    call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function createVestForDeposit(address arg1, uint64 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[0xfe01929b51ccb866359f22f5a3ce5c78c9fc36c4de9719e0e678f9a41b4e88b7][address(msg.sender)].field_0:
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
            s = 0xfe01929b51ccb866359f22f5a3ce5c78c9fc36c4de9719e0e678f9a41b4e88b7
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
    require ext_code.size(sub_65f5275aAddress)
    call sub_65f5275aAddress.createVestForDeposit(address arg1, address arg2, uint64 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, 0, msg.sender, arg2 << 192, sub_a4a6b0c3[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[24 len 8]
}

function initialize(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
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
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                if not uint8(stor0.field_8):
                                    uint16(stor0.field_0) = 257
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    roleAdmin[0xfe01929b51ccb866359f22f5a3ce5c78c9fc36c4de9719e0e678f9a41b4e88b7].field_256 = 0x8619cecd8b9e095ab43867f5b69d492180450fe862e6b50bfbfb24b75dd84c8a
    emit RoleAdminChanged(0xfe01929b51ccb866359f22f5a3ce5c78c9fc36c4de9719e0e678f9a41b4e88b7, roleAdmin[0xfe01929b51ccb866359f22f5a3ce5c78c9fc36c4de9719e0e678f9a41b4e88b7].field_256, 0x8619cecd8b9e095ab43867f5b69d492180450fe862e6b50bfbfb24b75dd84c8a);
    sub_2304aa61Address = arg1
    sub_ff12673aAddress = arg2
    devWalletAddress = arg3
    sub_65f5275aAddress = arg4
    sub_1425d49f = arg5
    sub_e296651e = arg6
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
}

function mintVested(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if sub_65f5275aAddress != msg.sender:
        revert with 0, 'MPHMinter: not vesting02'
    require ext_code.size(sub_2304aa61Address)
    staticcall sub_2304aa61Address.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        return 0
    if arg2:
        require ext_code.size(sub_2304aa61Address)
        call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if mulmod(arg2, sub_1425d49f, -1) - (arg2 * sub_1425d49f) - (mulmod(arg2, sub_1425d49f, -1) < arg2 * sub_1425d49f) >= 10^18:
        revert with 0, mulmod(arg2, sub_1425d49f, -1) - (arg2 * sub_1425d49f) - (mulmod(arg2, sub_1425d49f, -1) < arg2 * sub_1425d49f)
    if mulmod(arg2, sub_1425d49f, -1) - (arg2 * sub_1425d49f) - (mulmod(arg2, sub_1425d49f, -1) < arg2 * sub_1425d49f):
        if (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_1425d49f, -1) - (arg2 * sub_1425d49f) - (mulmod(arg2, sub_1425d49f, -1) < arg2 * sub_1425d49f) - (mulmod(arg2, sub_1425d49f, 10^18) > arg2 * sub_1425d49f) << 238 or Mask(238, 18, (arg2 * sub_1425d49f) - mulmod(arg2, sub_1425d49f, 10^18)) >> 18) + (mulmod(arg2, sub_1425d49f, 10^18) > 499999999999999999):
            require ext_code.size(sub_2304aa61Address)
            call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devWalletAddress, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_1425d49f, -1) - (arg2 * sub_1425d49f) - (mulmod(arg2, sub_1425d49f, -1) < arg2 * sub_1425d49f) - (mulmod(arg2, sub_1425d49f, 10^18) > arg2 * sub_1425d49f) << 238 or Mask(238, 18, (arg2 * sub_1425d49f) - mulmod(arg2, sub_1425d49f, 10^18)) >> 18) + (mulmod(arg2, sub_1425d49f, 10^18) > 499999999999999999)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if (arg2 * sub_1425d49f / 10^18) + (mulmod(arg2, sub_1425d49f, 10^18) > 499999999999999999):
            require ext_code.size(sub_2304aa61Address)
            call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devWalletAddress, (arg2 * sub_1425d49f / 10^18) + (mulmod(arg2, sub_1425d49f, 10^18) > 499999999999999999)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if mulmod(arg2, sub_e296651e, -1) - (arg2 * sub_e296651e) - (mulmod(arg2, sub_e296651e, -1) < arg2 * sub_e296651e) >= 10^18:
        revert with 0, mulmod(arg2, sub_e296651e, -1) - (arg2 * sub_e296651e) - (mulmod(arg2, sub_e296651e, -1) < arg2 * sub_e296651e)
    if mulmod(arg2, sub_e296651e, -1) - (arg2 * sub_e296651e) - (mulmod(arg2, sub_e296651e, -1) < arg2 * sub_e296651e):
        if (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_e296651e, -1) - (arg2 * sub_e296651e) - (mulmod(arg2, sub_e296651e, -1) < arg2 * sub_e296651e) - (mulmod(arg2, sub_e296651e, 10^18) > arg2 * sub_e296651e) << 238 or Mask(238, 18, (arg2 * sub_e296651e) - mulmod(arg2, sub_e296651e, 10^18)) >> 18) + (mulmod(arg2, sub_e296651e, 10^18) > 499999999999999999):
            require ext_code.size(sub_2304aa61Address)
            call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_ff12673aAddress, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_e296651e, -1) - (arg2 * sub_e296651e) - (mulmod(arg2, sub_e296651e, -1) < arg2 * sub_e296651e) - (mulmod(arg2, sub_e296651e, 10^18) > arg2 * sub_e296651e) << 238 or Mask(238, 18, (arg2 * sub_e296651e) - mulmod(arg2, sub_e296651e, 10^18)) >> 18) + (mulmod(arg2, sub_e296651e, 10^18) > 499999999999999999)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if (arg2 * sub_e296651e / 10^18) + (mulmod(arg2, sub_e296651e, 10^18) > 499999999999999999):
            require ext_code.size(sub_2304aa61Address)
            call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_ff12673aAddress, (arg2 * sub_e296651e / 10^18) + (mulmod(arg2, sub_e296651e, 10^18) > 499999999999999999)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return arg2
}

function distributeFundingRewards(uint64 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin[0xfe01929b51ccb866359f22f5a3ce5c78c9fc36c4de9719e0e678f9a41b4e88b7][address(msg.sender)].field_0:
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
            s = 0xfe01929b51ccb866359f22f5a3ce5c78c9fc36c4de9719e0e678f9a41b4e88b7
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
    if arg2:
        require ext_code.size(sub_2304aa61Address)
        staticcall sub_2304aa61Address.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == this.address:
            if mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) >= 10^18:
                revert with 0, 
                            mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender])
            if mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]):
                if (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999):
                    require ext_code.size(msg.sender)
                    staticcall msg.sender.0x5dc05d7f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(sub_2304aa61Address)
                    call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(sub_2304aa61Address)
                    call sub_2304aa61Address.increaseAllowance(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).distributeDividends(uint256 arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args arg1 << 192, sub_2304aa61Address, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_1425d49f) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_1425d49f) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f)) >= 10^18:
                        revert with 0, 
                                    mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_1425d49f) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_1425d49f) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f))
                    if mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_1425d49f) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_1425d49f) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f)):
                        if (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_1425d49f) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_1425d49f) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f)) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_1425d49f) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f)) << 238 or Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_1425d49f) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f) - mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, 10^18)) >> 18) + (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, 10^18) > 499999999999999999):
                            require ext_code.size(sub_2304aa61Address)
                            call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args devWalletAddress, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_1425d49f) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_1425d49f) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f)) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_1425d49f) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f)) << 238 or Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_1425d49f) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f) - mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, 10^18)) >> 18) + (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, 10^18) > 499999999999999999)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_1425d49f) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f) / 10^18) + (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, 10^18) > 499999999999999999):
                            require ext_code.size(sub_2304aa61Address)
                            call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args devWalletAddress, ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_1425d49f) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f) / 10^18) + (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, 10^18) > 499999999999999999)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_e296651e) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_e296651e) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e)) >= 10^18:
                        revert with 0, 
                                    mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_e296651e) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_e296651e) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e))
                    if mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_e296651e) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_e296651e) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e)):
                        if (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_e296651e) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_e296651e) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e)) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_e296651e) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e)) << 238 or Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_e296651e) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e) - mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, 10^18)) >> 18) + (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, 10^18) > 499999999999999999):
                            require ext_code.size(sub_2304aa61Address)
                            call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_ff12673aAddress, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_e296651e) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_e296651e) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e)) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_e296651e) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e)) << 238 or Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_e296651e) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e) - mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, 10^18)) >> 18) + (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, 10^18) > 499999999999999999)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_e296651e) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e) / 10^18) + (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, 10^18) > 499999999999999999):
                            require ext_code.size(sub_2304aa61Address)
                            call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_ff12673aAddress, ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18 * sub_e296651e) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e) / 10^18) + (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg2, sub_022cff8c[msg.sender], -1) - (arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], -1) < arg2 * sub_022cff8c[msg.sender]) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > arg2 * sub_022cff8c[msg.sender]) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender]) - mulmod(arg2, sub_022cff8c[msg.sender], 10^18)) >> 18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, 10^18) > 499999999999999999)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if (arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999):
                    require ext_code.size(msg.sender)
                    staticcall msg.sender.0x5dc05d7f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(sub_2304aa61Address)
                    call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), (arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(sub_2304aa61Address)
                    call sub_2304aa61Address.increaseAllowance(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), (arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).distributeDividends(uint256 arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args arg1 << 192, sub_2304aa61Address, (arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, -1) - (arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_1425d49f) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f) - (mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, -1) < (arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_1425d49f) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f)) >= 10^18:
                        revert with 0, 
                                    mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, -1) - (arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_1425d49f) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f) - (mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, -1) < (arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_1425d49f) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f))
                    if mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, -1) - (arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_1425d49f) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f) - (mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, -1) < (arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_1425d49f) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f)):
                        if (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, -1) - (arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_1425d49f) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f) - (mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, -1) < (arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_1425d49f) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f)) - (mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, 10^18) > (arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_1425d49f) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f)) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_1425d49f) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f) - mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, 10^18)) >> 18) + (mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, 10^18) > 499999999999999999):
                            require ext_code.size(sub_2304aa61Address)
                            call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args devWalletAddress, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, -1) - (arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_1425d49f) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f) - (mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, -1) < (arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_1425d49f) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f)) - (mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, 10^18) > (arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_1425d49f) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f)) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_1425d49f) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f) - mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, 10^18)) >> 18) + (mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, 10^18) > 499999999999999999)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if ((arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_1425d49f) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f) / 10^18) + (mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, 10^18) > 499999999999999999):
                            require ext_code.size(sub_2304aa61Address)
                            call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args devWalletAddress, ((arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_1425d49f) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_1425d49f) / 10^18) + (mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_1425d49f, 10^18) > 499999999999999999)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, -1) - (arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_e296651e) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e) - (mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, -1) < (arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_e296651e) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e)) >= 10^18:
                        revert with 0, 
                                    mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, -1) - (arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_e296651e) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e) - (mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, -1) < (arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_e296651e) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e))
                    if mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, -1) - (arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_e296651e) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e) - (mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, -1) < (arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_e296651e) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e)):
                        if (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, -1) - (arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_e296651e) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e) - (mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, -1) < (arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_e296651e) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e)) - (mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, 10^18) > (arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_e296651e) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e)) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_e296651e) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e) - mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, 10^18)) >> 18) + (mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, 10^18) > 499999999999999999):
                            require ext_code.size(sub_2304aa61Address)
                            call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_ff12673aAddress, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, -1) - (arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_e296651e) - (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e) - (mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, -1) < (arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_e296651e) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e)) - (mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, 10^18) > (arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_e296651e) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e)) << 238 or Mask(238, 18, (arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_e296651e) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e) - mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, 10^18)) >> 18) + (mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, 10^18) > 499999999999999999)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if ((arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_e296651e) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e) / 10^18) + (mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, 10^18) > 499999999999999999):
                            require ext_code.size(sub_2304aa61Address)
                            call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_ff12673aAddress, ((arg2 * sub_022cff8c[msg.sender] / 10^18 * sub_e296651e) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999 * sub_e296651e) / 10^18) + (mulmod((arg2 * sub_022cff8c[msg.sender] / 10^18) + (mulmod(arg2, sub_022cff8c[msg.sender], 10^18) > 499999999999999999), sub_e296651e, 10^18) > 499999999999999999)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_141f64dc(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg6 == bool(arg6)
    if not roleAdmin[0xb6de926b215ddcf7694f74b03c5f26abafd73fe49a804fdcb75e1d41a2eee06b][address(msg.sender)].field_0:
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
        s = 0xb6de926b215ddcf7694f74b03c5f26abafd73fe49a804fdcb75e1d41a2eee06b
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
    if not roleAdmin[0xfe01929b51ccb866359f22f5a3ce5c78c9fc36c4de9719e0e678f9a41b4e88b7][address(arg1)].field_0:
        revert with 0, 'MPHMinter: not pool'
    require ext_code.size(sub_2304aa61Address)
    staticcall sub_2304aa61Address.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        return 0
    if arg6:
        return 0
    if arg5 <= arg4:
        if mulmod(0, sub_1425d49f, -1) - (mulmod(0, sub_1425d49f, -1) < 0) >= 10^18:
            revert with 0, mulmod(0, sub_1425d49f, -1) - (mulmod(0, sub_1425d49f, -1) < 0)
        if mulmod(0, sub_e296651e, -1) - (mulmod(0, sub_e296651e, -1) < 0) >= 10^18:
            revert with 0, mulmod(0, sub_e296651e, -1) - (mulmod(0, sub_e296651e, -1) < 0)
        if mulmod(0, sub_1425d49f, -1) - (mulmod(0, sub_1425d49f, -1) < 0):
            if (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(0, sub_1425d49f, -1) - (mulmod(0, sub_1425d49f, -1) < 0) - (mulmod(0, sub_1425d49f, 10^18) > 0) << 238 or Mask(238, 18, -mulmod(0, sub_1425d49f, 10^18)) >> 18) + (mulmod(0, sub_1425d49f, 10^18) > 499999999999999999):
                require ext_code.size(sub_2304aa61Address)
                call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devWalletAddress, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(0, sub_1425d49f, -1) - (mulmod(0, sub_1425d49f, -1) < 0) - (mulmod(0, sub_1425d49f, 10^18) > 0) << 238 or Mask(238, 18, -mulmod(0, sub_1425d49f, 10^18)) >> 18) + (mulmod(0, sub_1425d49f, 10^18) > 499999999999999999)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if mulmod(0, sub_e296651e, -1) - (mulmod(0, sub_e296651e, -1) < 0):
                if (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(0, sub_e296651e, -1) - (mulmod(0, sub_e296651e, -1) < 0) - (mulmod(0, sub_e296651e, 10^18) > 0) << 238 or Mask(238, 18, -mulmod(0, sub_e296651e, 10^18)) >> 18) + (mulmod(0, sub_e296651e, 10^18) > 499999999999999999):
                    require ext_code.size(sub_2304aa61Address)
                    call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_ff12673aAddress, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(0, sub_e296651e, -1) - (mulmod(0, sub_e296651e, -1) < 0) - (mulmod(0, sub_e296651e, 10^18) > 0) << 238 or Mask(238, 18, -mulmod(0, sub_e296651e, 10^18)) >> 18) + (mulmod(0, sub_e296651e, 10^18) > 499999999999999999)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if mulmod(0, sub_e296651e, 10^18) > 499999999999999999:
                    require ext_code.size(sub_2304aa61Address)
                    call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_ff12673aAddress, mulmod(0, sub_e296651e, 10^18) > 499999999999999999
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if mulmod(0, sub_1425d49f, 10^18) > 499999999999999999:
                require ext_code.size(sub_2304aa61Address)
                call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devWalletAddress, mulmod(0, sub_1425d49f, 10^18) > 499999999999999999
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if mulmod(0, sub_e296651e, -1) - (mulmod(0, sub_e296651e, -1) < 0):
                if (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(0, sub_e296651e, -1) - (mulmod(0, sub_e296651e, -1) < 0) - (mulmod(0, sub_e296651e, 10^18) > 0) << 238 or Mask(238, 18, -mulmod(0, sub_e296651e, 10^18)) >> 18) + (mulmod(0, sub_e296651e, 10^18) > 499999999999999999):
                    require ext_code.size(sub_2304aa61Address)
                    call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_ff12673aAddress, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(0, sub_e296651e, -1) - (mulmod(0, sub_e296651e, -1) < 0) - (mulmod(0, sub_e296651e, 10^18) > 0) << 238 or Mask(238, 18, -mulmod(0, sub_e296651e, 10^18)) >> 18) + (mulmod(0, sub_e296651e, 10^18) > 499999999999999999)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if mulmod(0, sub_e296651e, 10^18) > 499999999999999999:
                    require ext_code.size(sub_2304aa61Address)
                    call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_ff12673aAddress, mulmod(0, sub_e296651e, 10^18) > 499999999999999999
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
        return 0
    if arg5 < arg4:
        revert with 0, 17
    if mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) >= 10^18:
        revert with 0, 
                    mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]))
    if mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])):
        if arg3 and (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999) > -1 / arg3:
            revert with 0, 17
        if mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_1425d49f) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_1425d49f) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f)) >= 10^18:
            revert with 0, 
                        mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_1425d49f) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_1425d49f) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f))
        if mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_e296651e) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e)) >= 10^18:
            revert with 0, 
                        mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_e296651e) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e))
        if (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3):
            require ext_code.size(sub_2304aa61Address)
            call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_1425d49f) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_1425d49f) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f)):
            if (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_1425d49f) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_1425d49f) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f)) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_1425d49f) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f)) << 238 or Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_1425d49f) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f) - mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, 10^18)) >> 18) + (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, 10^18) > 499999999999999999):
                require ext_code.size(sub_2304aa61Address)
                call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devWalletAddress, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_1425d49f) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_1425d49f) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f)) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_1425d49f) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f)) << 238 or Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_1425d49f) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f) - mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, 10^18)) >> 18) + (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, 10^18) > 499999999999999999)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_e296651e) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e)):
                if (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_e296651e) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e)) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e)) << 238 or Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) - mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18)) >> 18) + (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18) > 499999999999999999):
                    require ext_code.size(sub_2304aa61Address)
                    call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_ff12673aAddress, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_e296651e) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e)) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e)) << 238 or Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) - mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18)) >> 18) + (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18) > 499999999999999999)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) / 10^18) + (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18) > 499999999999999999):
                    require ext_code.size(sub_2304aa61Address)
                    call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_ff12673aAddress, ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) / 10^18) + (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18) > 499999999999999999)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_1425d49f) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f) / 10^18) + (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, 10^18) > 499999999999999999):
                require ext_code.size(sub_2304aa61Address)
                call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devWalletAddress, ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_1425d49f) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f) / 10^18) + (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, 10^18) > 499999999999999999)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_e296651e) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e)):
                if (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_e296651e) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e)) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e)) << 238 or Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) - mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18)) >> 18) + (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18) > 499999999999999999):
                    require ext_code.size(sub_2304aa61Address)
                    call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_ff12673aAddress, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_e296651e) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e)) - (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e)) << 238 or Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) - mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18)) >> 18) + (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18) > 499999999999999999)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) / 10^18) + (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18) > 499999999999999999):
                    require ext_code.size(sub_2304aa61Address)
                    call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_ff12673aAddress, ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) / 10^18) + (mulmod((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18) > 499999999999999999)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
        return ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) - (arg5 * sub_022cff8c[address(arg1)]) + (arg4 * sub_022cff8c[address(arg1)]) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], -1) < (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)])) << 238 or Mask(238, 18, (arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) - mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18)) >> 18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3))
    if arg3 and ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999) > -1 / arg3:
        revert with 0, 17
    if mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, -1) - ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_1425d49f) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f) - (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, -1) < ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_1425d49f) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f)) >= 10^18:
        revert with 0, 
                    mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, -1) - ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_1425d49f) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f) - (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, -1) < ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_1425d49f) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f))
    if mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) - ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_e296651e) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) - (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) < ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e)) >= 10^18:
        revert with 0, 
                    mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) - ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_e296651e) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) - (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) < ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e))
    if ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3):
        require ext_code.size(sub_2304aa61Address)
        call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, -1) - ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_1425d49f) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f) - (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, -1) < ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_1425d49f) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f)):
        if (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, -1) - ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_1425d49f) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f) - (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, -1) < ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_1425d49f) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f)) - (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, 10^18) > ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_1425d49f) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f)) << 238 or Mask(238, 18, ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_1425d49f) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f) - mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, 10^18)) >> 18) + (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, 10^18) > 499999999999999999):
            require ext_code.size(sub_2304aa61Address)
            call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devWalletAddress, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, -1) - ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_1425d49f) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f) - (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, -1) < ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_1425d49f) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f)) - (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, 10^18) > ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_1425d49f) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f)) << 238 or Mask(238, 18, ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_1425d49f) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f) - mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, 10^18)) >> 18) + (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, 10^18) > 499999999999999999)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) - ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_e296651e) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) - (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) < ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e)):
            if (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) - ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_e296651e) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) - (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) < ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e)) - (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18) > ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e)) << 238 or Mask(238, 18, ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) - mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18)) >> 18) + (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18) > 499999999999999999):
                require ext_code.size(sub_2304aa61Address)
                call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_ff12673aAddress, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) - ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_e296651e) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) - (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) < ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e)) - (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18) > ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e)) << 238 or Mask(238, 18, ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) - mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18)) >> 18) + (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18) > 499999999999999999)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if (((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) / 10^18) + (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18) > 499999999999999999):
                require ext_code.size(sub_2304aa61Address)
                call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_ff12673aAddress, (((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) / 10^18) + (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18) > 499999999999999999)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if (((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_1425d49f) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f) / 10^18) + (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, 10^18) > 499999999999999999):
            require ext_code.size(sub_2304aa61Address)
            call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devWalletAddress, (((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_1425d49f) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_1425d49f) / 10^18) + (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_1425d49f, 10^18) > 499999999999999999)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) - ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_e296651e) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) - (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) < ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e)):
            if (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) - ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_e296651e) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) - (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) < ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e)) - (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18) > ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e)) << 238 or Mask(238, 18, ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) - mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18)) >> 18) + (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18) > 499999999999999999):
                require ext_code.size(sub_2304aa61Address)
                call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_ff12673aAddress, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) - ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_e296651e) - (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) - (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, -1) < ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e)) - (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18) > ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e)) << 238 or Mask(238, 18, ((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) - mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18)) >> 18) + (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18) > 499999999999999999)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if (((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) / 10^18) + (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18) > 499999999999999999):
                require ext_code.size(sub_2304aa61Address)
                call sub_2304aa61Address.ownerMint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_ff12673aAddress, (((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3 * sub_e296651e) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3 * sub_e296651e) / 10^18) + (mulmod(((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3), sub_e296651e, 10^18) > 499999999999999999)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return (((arg5 * sub_022cff8c[address(arg1)]) - (arg4 * sub_022cff8c[address(arg1)]) / 10^18 * arg3) + (mulmod(arg5 - arg4, sub_022cff8c[address(arg1)], 10^18) > 499999999999999999 * arg3))
}



}
