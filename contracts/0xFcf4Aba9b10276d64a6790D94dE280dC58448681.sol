contract main {




// =====================  Runtime code  =====================


#
#  - newWrapperRelease(address arg1)
#  - endorseVault(address arg1, uint256 arg2, uint256 arg3)
#
address owner;
uint256 sub_ef75f098;
mapping of address sub_ac5973dc;
uint256 sub_2cc60031;
mapping of address sub_b0b778b9;
mapping of uint256 numVaults;
mapping of address latestVault;
mapping of address stor7;
uint256 numTokens;
mapping of uint8 stor9;
address bridgeAddress;
address proxyAdminAddress;
mapping of struct stor12;
mapping of uint8 stor13;

function sub_2cc60031(?) payable {
    return sub_2cc60031
}

function proxyAdmin() payable {
    return proxyAdminAddress
}

function owner() payable {
    return owner
}

function numTokens() payable {
    return numTokens
}

function sub_ac5973dc(?) payable {
    require calldata.size - 4 >= 32
    return sub_ac5973dc[arg1]
}

function sub_b0b778b9(?) payable {
    require calldata.size - 4 >= 32
    return sub_b0b778b9[arg1]
}

function isRegistered(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[arg1])
}

function latestVault(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if numVaults[address(arg1)] < 1:
        revert with 0, 17
    return latestVault[address(arg1)][stor5[address(arg1)] - 1]
}

function bridge() payable {
    return bridgeAddress
}

function sub_ee711ed5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor13[arg1])
}

function sub_ef75f098(?) payable {
    return sub_ef75f098
}

function numVaults(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return numVaults[arg1]
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

function setBridge(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bridgeAddress = arg1
}

function setProxyAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    proxyAdminAddress = arg1
}

function setBanksy(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13[address(arg1)] = uint8(arg2)
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
}

function latestVaultRelease() payable {
    if sub_ef75f098 < 1:
        revert with 0, 17
    mem[0] = sub_ef75f098 - 1
    mem[32] = 2
    mem[96] = 0x2582941000000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_ac5973dc[stor1 - 1])
    staticcall sub_ac5973dc[stor1 - 1].0x25829410 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _5 = mem[96]
    require mem[96] <= test266151307()
    require return_data.size + 96 > mem[96] + 127
    _6 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _6
    require _5 + _6 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_6)] = mem[_5 + 128 len ceil32(_6)]
    if ceil32(_6) > _6:
        mem[ceil32(return_data.size) + _6 + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _6
    mem[mem[64] + 64 len ceil32(_6)] = mem[ceil32(return_data.size) + 128 len ceil32(_6)]
    if ceil32(_6) > _6:
        mem[mem[64] + _6 + 64] = 0
    return Array(len=_6, data=mem[mem[64] + 64 len ceil32(_6)])
}

function latestWrapperRelease() payable {
    if sub_ef75f098 < 1:
        revert with 0, 17
    mem[0] = sub_ef75f098 - 1
    mem[32] = 2
    mem[96] = 0x2582941000000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_ac5973dc[stor1 - 1])
    staticcall sub_ac5973dc[stor1 - 1].0x25829410 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _5 = mem[96]
    require mem[96] <= test266151307()
    require return_data.size + 96 > mem[96] + 127
    _6 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _6
    require _5 + _6 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_6)] = mem[_5 + 128 len ceil32(_6)]
    if ceil32(_6) > _6:
        mem[ceil32(return_data.size) + _6 + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _6
    mem[mem[64] + 64 len ceil32(_6)] = mem[ceil32(return_data.size) + 128 len ceil32(_6)]
    if ceil32(_6) > _6:
        mem[mem[64] + _6 + 64] = 0
    return Array(len=_6, data=mem[mem[64] + 64 len ceil32(_6)])
}

function sub_60bd68f8(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        if not stor13[msg.sender]:
            revert with 0, 'Registry: only owner or banksy are allowed to tag'
    if stor12[address(arg1)].field_0:
        if stor12[address(arg1)].field_0 == stor12[address(arg1)].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor12[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor12[address(arg1)].field_0 = 0
            idx = 0
            while stor12[address(arg1)].field_1 + 31 / 32 > idx:
                stor12[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor12[address(arg1)].field_0 == stor12[address(arg1)].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor12[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor12[address(arg1)].field_0 = 0
            idx = 0
            while stor12[address(arg1)].field_1 + 31 / 32 > idx:
                stor12[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    emit VaultTagged(address arg1, string arg2):
                     address(arg1),
                     64,
                     arg2.length,
                     arg2[all],
                     0,
}

function newExperimentalVault(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if sub_ef75f098 < 1:
        revert with 0, 17
    if sub_ef75f098 - 1 < arg5:
        revert with 0, 17
    if sub_2cc60031 < 1:
        revert with 0, 17
    if sub_2cc60031 - 1 < arg6:
        revert with 0, 17
    mem[0] = sub_2cc60031 + -arg6 - 1
    mem[32] = 4
    if not sub_ac5973dc[stor1 + -arg5 - 1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Registry: vault release target is wrong'
    if not sub_b0b778b9[stor3 + -arg6 - 1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Registry: wrapper release target is wrong'
    create contract with 0 wei
                    code: code.data[8023 len 3930], sub_ac5973dc[stor1 + -arg5 - 1], proxyAdminAddress, 96, 0
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len 3930] = code.data[8023 len 3930]
    mem[4026] = sub_b0b778b9[stor3 + -arg6 - 1]
    mem[4058] = proxyAdminAddress
    mem[4090] = 96
    mem[4122] = 0
    create contract with 0 wei
                    code: code.data[8023 len 3930], sub_b0b778b9[stor3 + -arg6 - 1], proxyAdminAddress, 96, 0
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xc4d66de8 with:
         gas gas_remaining wei
        args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = arg1
    mem[132] = arg2
    mem[164] = bridgeAddress
    mem[196] = address(create.new_address)
    mem[228] = arg3
    mem[260] = 0
    mem[292] = arg4
    require ext_code.size(address(create.new_address))
    call address(create.new_address).initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args 0, 0, address(arg2), bridgeAddress, address(create.new_address), address(arg3), 0, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96] = 0x2582941000000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(create.new_address))
    staticcall address(create.new_address).0x25829410 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _18 = mem[96]
    require mem[96] <= test266151307()
    require return_data.size + 96 > mem[96] + 127
    _19 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _19
    require _18 + _19 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_19)] = mem[_18 + 128 len ceil32(_19)]
    if ceil32(_19) > _19:
        mem[ceil32(return_data.size) + _19 + 128] = 0
    mem[mem[64]] = address(create.new_address)
    mem[mem[64] + 32] = 64
    mem[mem[64] + 64] = _19
    mem[mem[64] + 96 len ceil32(_19)] = mem[ceil32(return_data.size) + 128 len ceil32(_19)]
    if ceil32(_19) > _19:
        mem[mem[64] + _19 + 96] = 0
    emit NewExperimentalVault(address(create.new_address), Array(len=_19, data=mem[mem[64] + 96 len ceil32(_19)]), arg1, msg.sender);
    return address(create.new_address)
}

function sub_58b8f842(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor12[arg1].field_0:
        if stor12[arg1].field_0 == stor12[arg1].field_1 < 32:
            revert with 0, 34
        if stor12[arg1].field_0:
            if stor12[arg1].field_0 == stor12[arg1].field_1 < 32:
                revert with 0, 34
            if stor12[arg1].field_1:
                if 31 < stor12[arg1].field_1:
                    mem[128] = stor12[arg1].field_0
                    idx = 128
                    s = 0
                    while stor12[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor12[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12[arg1].field_1), data=mem[128 len ceil32(stor12[arg1].field_1)])
                mem[128] = 256 * stor12[arg1].field_8
        else:
            if stor12[arg1].field_0 == stor12[arg1].field_1 < 32:
                revert with 0, 34
            if stor12[arg1].field_1:
                if 31 < stor12[arg1].field_1:
                    mem[128] = stor12[arg1].field_0
                    idx = 128
                    s = 0
                    while stor12[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor12[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12[arg1].field_1), data=mem[128 len ceil32(stor12[arg1].field_1)])
                mem[128] = 256 * stor12[arg1].field_8
        mem[ceil32(stor12[arg1].field_1) + 192 len ceil32(stor12[arg1].field_1)] = mem[128 len ceil32(stor12[arg1].field_1)]
        if ceil32(stor12[arg1].field_1) > stor12[arg1].field_1:
            mem[ceil32(stor12[arg1].field_1) + stor12[arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor12[arg1].field_1), data=mem[128 len ceil32(stor12[arg1].field_1)], mem[(2 * ceil32(stor12[arg1].field_1)) + 192 len 2 * ceil32(stor12[arg1].field_1)]), 
    if stor12[arg1].field_0 == stor12[arg1].field_1 < 32:
        revert with 0, 34
    if stor12[arg1].field_0:
        if stor12[arg1].field_0 == stor12[arg1].field_1 < 32:
            revert with 0, 34
        if stor12[arg1].field_1:
            if 31 < stor12[arg1].field_1:
                mem[128] = stor12[arg1].field_0
                idx = 128
                s = 0
                while stor12[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor12[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12[arg1].field_0, data=mem[128 len ceil32(stor12[arg1].field_1)])
            mem[128] = 256 * stor12[arg1].field_8
    else:
        if stor12[arg1].field_0 == stor12[arg1].field_1 < 32:
            revert with 0, 34
        if stor12[arg1].field_1:
            if 31 < stor12[arg1].field_1:
                mem[128] = stor12[arg1].field_0
                idx = 128
                s = 0
                while stor12[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor12[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12[arg1].field_0, data=mem[128 len ceil32(stor12[arg1].field_1)])
            mem[128] = 256 * stor12[arg1].field_8
    mem[ceil32(stor12[arg1].field_1) + 192 len ceil32(stor12[arg1].field_1)] = mem[128 len ceil32(stor12[arg1].field_1)]
    if ceil32(stor12[arg1].field_1) > stor12[arg1].field_1:
        mem[ceil32(stor12[arg1].field_1) + stor12[arg1].field_1 + 192] = 0
    return Array(len=stor12[arg1].field_0, data=mem[128 len ceil32(stor12[arg1].field_1)], mem[(2 * ceil32(stor12[arg1].field_1)) + 192 len 2 * ceil32(stor12[arg1].field_1)]), 
}

function newVaultRelease(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_ef75f098:
        mem[0] = sub_ef75f098
        mem[32] = 2
        sub_ac5973dc[stor1] = arg1
        if 1 > !sub_ef75f098:
            revert with 0, 17
        sub_ef75f098++
        mem[96] = 0x2582941000000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.0x25829410 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _11 = mem[96]
        require mem[96] <= test266151307()
        require return_data.size + 96 > mem[96] + 127
        _13 = mem[mem[96] + 96]
        if mem[mem[96] + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
        mem[ceil32(return_data.size) + 96] = _13
        require _11 + _13 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_13)] = mem[_11 + 128 len ceil32(_13)]
        if ceil32(_13) > _13:
            mem[ceil32(return_data.size) + _13 + 128] = 0
        mem[mem[64]] = arg1
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = _13
        mem[mem[64] + 96 len ceil32(_13)] = mem[ceil32(return_data.size) + 128 len ceil32(_13)]
        if ceil32(_13) > _13:
            mem[mem[64] + _13 + 96] = 0
        emit NewVaultRelease(address(arg1), Array(len=_13, data=mem[mem[64] + 96 len ceil32(_13)]), sub_ef75f098);
    else:
        if sub_ef75f098 < 1:
            revert with 0, 17
        mem[0] = sub_ef75f098 - 1
        mem[32] = 2
        mem[96] = 0x2582941000000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_ac5973dc[stor1 - 1])
        staticcall sub_ac5973dc[stor1 - 1].0x25829410 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _12 = mem[96]
        require mem[96] <= test266151307()
        require return_data.size + 96 > mem[96] + 127
        _14 = mem[mem[96] + 96]
        if mem[mem[96] + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
        mem[ceil32(return_data.size) + 96] = _14
        require _12 + _14 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_14)] = mem[_12 + 128 len ceil32(_14)]
        if ceil32(_14) <= _14:
            mem[mem[64]] = 0x2582941000000000000000000000000000000000000000000000000000000000
            require ext_code.size(arg1)
            staticcall arg1.0x25829410 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _480 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _483 = mem[_480]
            require mem[_480] <= test266151307()
            require _480 + return_data.size > _480 + mem[_480] + 31
            _487 = mem[_480 + mem[_480]]
            if mem[_480 + mem[_480]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_480 + mem[_480]])) + 1 < 0 or _480 + ceil32(return_data.size) + ceil32(ceil32(mem[_480 + mem[_480]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _480 + ceil32(return_data.size) + ceil32(ceil32(mem[_480 + mem[_480]])) + 1
            mem[_480 + ceil32(return_data.size)] = _487
            require _483 + _487 + 32 <= return_data.size
            mem[_480 + ceil32(return_data.size) + 32 len ceil32(_487)] = mem[_480 + _483 + 32 len ceil32(_487)]
            if ceil32(_487) <= _487:
                _931 = mem[64]
                mem[mem[64] + 32 len ceil32(_487)] = mem[_480 + ceil32(return_data.size) + 32 len ceil32(_487)]
                if ceil32(_487) <= _487:
                    _1365 = mem[64]
                    mem[mem[64]] = _487
                    mem[64] = _487 + mem[64] + 32
                    _1367 = sha3(mem[_1365 + 32 len mem[_1365]])
                    mem[_487 + _931 + 64 len ceil32(_14)] = mem[ceil32(return_data.size) + 128 len ceil32(_14)]
                    mem[_487 + _931 + 32] = _14
                    mem[64] = _14 + _487 + _931 + 64
                    if sha3(mem[_487 + _931 + 64 len _14]) == _1367:
                        revert with 0, 'Registry: new vault release should have different api version'
                    mem[0] = sub_ef75f098
                    mem[32] = 2
                    sub_ac5973dc[stor1] = arg1
                    if 1 > !sub_ef75f098:
                        revert with 0, 17
                    sub_ef75f098++
                    mem[_14 + _487 + _931 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    staticcall arg1.0x25829410 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_14 + _487 + _931 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _14 + _487 + _931 + ceil32(return_data.size) + 64
                    require return_data.size >= 32
                    if ceil32(_14) <= _14:
                        _1933 = mem[_14 + _487 + _931 + 64]
                        require mem[_14 + _487 + _931 + 64] <= test266151307()
                        require _14 + _487 + _931 + return_data.size + 64 > _14 + _487 + _931 + mem[_14 + _487 + _931 + 64] + 95
                        _1949 = mem[_14 + _487 + _931 + mem[_14 + _487 + _931 + 64] + 64]
                        if mem[_14 + _487 + _931 + mem[_14 + _487 + _931 + 64] + 64] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[_14 + _487 + _931 + mem[_14 + _487 + _931 + 64] + 64])) + 1 < 0 or _14 + _487 + _931 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _487 + _931 + mem[_14 + _487 + _931 + 64] + 64])) + 65 > test266151307():
                            revert with 0, 65
                        mem[64] = _14 + _487 + _931 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _487 + _931 + mem[_14 + _487 + _931 + 64] + 64])) + 65
                        mem[_14 + _487 + _931 + ceil32(return_data.size) + 64] = _1949
                        require _1933 + _1949 + 32 <= return_data.size
                        mem[_14 + _487 + _931 + ceil32(return_data.size) + 96 len ceil32(_1949)] = mem[_14 + _487 + _931 + _1933 + 96 len ceil32(_1949)]
                        if ceil32(_1949) > _1949:
                            mem[_14 + _487 + _931 + ceil32(return_data.size) + _1949 + 96] = 0
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = 64
                        mem[mem[64] + 64] = _1949
                        mem[mem[64] + 96 len ceil32(_1949)] = mem[_14 + _487 + _931 + ceil32(return_data.size) + 96 len ceil32(_1949)]
                        if ceil32(_1949) > _1949:
                            mem[mem[64] + _1949 + 96] = 0
                        emit NewVaultRelease(address(arg1), Array(len=_1949, data=mem[mem[64] + 96 len ceil32(_1949)]), sub_ef75f098);
                    else:
                        _1941 = mem[_14 + _487 + _931 + 64]
                        require mem[_14 + _487 + _931 + 64] <= test266151307()
                        require _14 + _487 + _931 + return_data.size + 64 > _14 + _487 + _931 + mem[_14 + _487 + _931 + 64] + 95
                        _1957 = mem[_14 + _487 + _931 + mem[_14 + _487 + _931 + 64] + 64]
                        if mem[_14 + _487 + _931 + mem[_14 + _487 + _931 + 64] + 64] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[_14 + _487 + _931 + mem[_14 + _487 + _931 + 64] + 64])) + 1 < 0 or _14 + _487 + _931 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _487 + _931 + mem[_14 + _487 + _931 + 64] + 64])) + 65 > test266151307():
                            revert with 0, 65
                        mem[64] = _14 + _487 + _931 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _487 + _931 + mem[_14 + _487 + _931 + 64] + 64])) + 65
                        mem[_14 + _487 + _931 + ceil32(return_data.size) + 64] = _1957
                        require _1941 + _1957 + 32 <= return_data.size
                        mem[_14 + _487 + _931 + ceil32(return_data.size) + 96 len ceil32(_1957)] = mem[_14 + _487 + _931 + _1941 + 96 len ceil32(_1957)]
                        if ceil32(_1957) > _1957:
                            mem[_14 + _487 + _931 + ceil32(return_data.size) + _1957 + 96] = 0
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = 64
                        mem[mem[64] + 64] = _1957
                        mem[mem[64] + 96 len ceil32(_1957)] = mem[_14 + _487 + _931 + ceil32(return_data.size) + 96 len ceil32(_1957)]
                        if ceil32(_1957) > _1957:
                            mem[mem[64] + _1957 + 96] = 0
                        emit NewVaultRelease(address(arg1), Array(len=_1957, data=mem[mem[64] + 96 len ceil32(_1957)]), sub_ef75f098);
                else:
                    mem[mem[64] + _487 + 32] = 0
                    _1382 = mem[64]
                    mem[mem[64]] = _487
                    mem[64] = _487 + mem[64] + 32
                    _1384 = sha3(mem[_1382 + 32 len mem[_1382]])
                    mem[_487 + _931 + 64 len ceil32(_14)] = mem[ceil32(return_data.size) + 128 len ceil32(_14)]
                    mem[_487 + _931 + 32] = _14
                    mem[64] = _14 + _487 + _931 + 64
                    if sha3(mem[_487 + _931 + 64 len _14]) == _1384:
                        revert with 0, 'Registry: new vault release should have different api version'
                    mem[0] = sub_ef75f098
                    mem[32] = 2
                    sub_ac5973dc[stor1] = arg1
                    if 1 > !sub_ef75f098:
                        revert with 0, 17
                    sub_ef75f098++
                    mem[_14 + _487 + _931 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    staticcall arg1.0x25829410 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_14 + _487 + _931 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _14 + _487 + _931 + ceil32(return_data.size) + 64
                    require return_data.size >= 32
                    if ceil32(_14) <= _14:
                        _1934 = mem[_14 + _487 + _931 + 64]
                        require mem[_14 + _487 + _931 + 64] <= test266151307()
                        require _14 + _487 + _931 + return_data.size + 64 > _14 + _487 + _931 + mem[_14 + _487 + _931 + 64] + 95
                        _1950 = mem[_14 + _487 + _931 + mem[_14 + _487 + _931 + 64] + 64]
                        if mem[_14 + _487 + _931 + mem[_14 + _487 + _931 + 64] + 64] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[_14 + _487 + _931 + mem[_14 + _487 + _931 + 64] + 64])) + 1 < 0 or _14 + _487 + _931 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _487 + _931 + mem[_14 + _487 + _931 + 64] + 64])) + 65 > test266151307():
                            revert with 0, 65
                        mem[64] = _14 + _487 + _931 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _487 + _931 + mem[_14 + _487 + _931 + 64] + 64])) + 65
                        mem[_14 + _487 + _931 + ceil32(return_data.size) + 64] = _1950
                        require _1934 + _1950 + 32 <= return_data.size
                        mem[_14 + _487 + _931 + ceil32(return_data.size) + 96 len ceil32(_1950)] = mem[_14 + _487 + _931 + _1934 + 96 len ceil32(_1950)]
                        if ceil32(_1950) > _1950:
                            mem[_14 + _487 + _931 + ceil32(return_data.size) + _1950 + 96] = 0
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = 64
                        mem[mem[64] + 64] = _1950
                        mem[mem[64] + 96 len ceil32(_1950)] = mem[_14 + _487 + _931 + ceil32(return_data.size) + 96 len ceil32(_1950)]
                        if ceil32(_1950) > _1950:
                            mem[mem[64] + _1950 + 96] = 0
                        emit NewVaultRelease(address(arg1), Array(len=_1950, data=mem[mem[64] + 96 len ceil32(_1950)]), sub_ef75f098);
                    else:
                        _1942 = mem[_14 + _487 + _931 + 64]
                        require mem[_14 + _487 + _931 + 64] <= test266151307()
                        require _14 + _487 + _931 + return_data.size + 64 > _14 + _487 + _931 + mem[_14 + _487 + _931 + 64] + 95
                        _1958 = mem[_14 + _487 + _931 + mem[_14 + _487 + _931 + 64] + 64]
                        if mem[_14 + _487 + _931 + mem[_14 + _487 + _931 + 64] + 64] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[_14 + _487 + _931 + mem[_14 + _487 + _931 + 64] + 64])) + 1 < 0 or _14 + _487 + _931 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _487 + _931 + mem[_14 + _487 + _931 + 64] + 64])) + 65 > test266151307():
                            revert with 0, 65
                        mem[64] = _14 + _487 + _931 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _487 + _931 + mem[_14 + _487 + _931 + 64] + 64])) + 65
                        mem[_14 + _487 + _931 + ceil32(return_data.size) + 64] = _1958
                        require _1942 + _1958 + 32 <= return_data.size
                        mem[_14 + _487 + _931 + ceil32(return_data.size) + 96 len ceil32(_1958)] = mem[_14 + _487 + _931 + _1942 + 96 len ceil32(_1958)]
                        if ceil32(_1958) > _1958:
                            mem[_14 + _487 + _931 + ceil32(return_data.size) + _1958 + 96] = 0
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = 64
                        mem[mem[64] + 64] = _1958
                        mem[mem[64] + 96 len ceil32(_1958)] = mem[_14 + _487 + _931 + ceil32(return_data.size) + 96 len ceil32(_1958)]
                        if ceil32(_1958) > _1958:
                            mem[mem[64] + _1958 + 96] = 0
                        emit NewVaultRelease(address(arg1), Array(len=_1958, data=mem[mem[64] + 96 len ceil32(_1958)]), sub_ef75f098);
            else:
                mem[_480 + ceil32(return_data.size) + _487 + 32] = 0
                _936 = mem[64]
                mem[mem[64] + 32 len ceil32(_487)] = mem[_480 + ceil32(return_data.size) + 32 len ceil32(_487)]
                if ceil32(_487) <= _487:
                    _1369 = mem[64]
                    mem[mem[64]] = _487
                    mem[64] = _487 + mem[64] + 32
                    _1371 = sha3(mem[_1369 + 32 len mem[_1369]])
                    mem[_487 + _936 + 64 len ceil32(_14)] = mem[ceil32(return_data.size) + 128 len ceil32(_14)]
                    mem[_487 + _936 + 32] = _14
                    mem[64] = _14 + _487 + _936 + 64
                    if sha3(mem[_487 + _936 + 64 len _14]) == _1371:
                        revert with 0, 'Registry: new vault release should have different api version'
                    mem[0] = sub_ef75f098
                    mem[32] = 2
                    sub_ac5973dc[stor1] = arg1
                    if 1 > !sub_ef75f098:
                        revert with 0, 17
                    sub_ef75f098++
                    mem[_14 + _487 + _936 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    staticcall arg1.0x25829410 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_14 + _487 + _936 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _14 + _487 + _936 + ceil32(return_data.size) + 64
                    require return_data.size >= 32
                    if ceil32(_14) <= _14:
                        _1935 = mem[_14 + _487 + _936 + 64]
                        require mem[_14 + _487 + _936 + 64] <= test266151307()
                        require _14 + _487 + _936 + return_data.size + 64 > _14 + _487 + _936 + mem[_14 + _487 + _936 + 64] + 95
                        _1951 = mem[_14 + _487 + _936 + mem[_14 + _487 + _936 + 64] + 64]
                        if mem[_14 + _487 + _936 + mem[_14 + _487 + _936 + 64] + 64] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[_14 + _487 + _936 + mem[_14 + _487 + _936 + 64] + 64])) + 1 < 0 or _14 + _487 + _936 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _487 + _936 + mem[_14 + _487 + _936 + 64] + 64])) + 65 > test266151307():
                            revert with 0, 65
                        mem[64] = _14 + _487 + _936 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _487 + _936 + mem[_14 + _487 + _936 + 64] + 64])) + 65
                        mem[_14 + _487 + _936 + ceil32(return_data.size) + 64] = _1951
                        require _1935 + _1951 + 32 <= return_data.size
                        mem[_14 + _487 + _936 + ceil32(return_data.size) + 96 len ceil32(_1951)] = mem[_14 + _487 + _936 + _1935 + 96 len ceil32(_1951)]
                        if ceil32(_1951) > _1951:
                            mem[_14 + _487 + _936 + ceil32(return_data.size) + _1951 + 96] = 0
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = 64
                        mem[mem[64] + 64] = _1951
                        mem[mem[64] + 96 len ceil32(_1951)] = mem[_14 + _487 + _936 + ceil32(return_data.size) + 96 len ceil32(_1951)]
                        if ceil32(_1951) > _1951:
                            mem[mem[64] + _1951 + 96] = 0
                        emit NewVaultRelease(address(arg1), Array(len=_1951, data=mem[mem[64] + 96 len ceil32(_1951)]), sub_ef75f098);
                    else:
                        _1943 = mem[_14 + _487 + _936 + 64]
                        require mem[_14 + _487 + _936 + 64] <= test266151307()
                        require _14 + _487 + _936 + return_data.size + 64 > _14 + _487 + _936 + mem[_14 + _487 + _936 + 64] + 95
                        _1959 = mem[_14 + _487 + _936 + mem[_14 + _487 + _936 + 64] + 64]
                        if mem[_14 + _487 + _936 + mem[_14 + _487 + _936 + 64] + 64] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[_14 + _487 + _936 + mem[_14 + _487 + _936 + 64] + 64])) + 1 < 0 or _14 + _487 + _936 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _487 + _936 + mem[_14 + _487 + _936 + 64] + 64])) + 65 > test266151307():
                            revert with 0, 65
                        mem[64] = _14 + _487 + _936 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _487 + _936 + mem[_14 + _487 + _936 + 64] + 64])) + 65
                        mem[_14 + _487 + _936 + ceil32(return_data.size) + 64] = _1959
                        require _1943 + _1959 + 32 <= return_data.size
                        mem[_14 + _487 + _936 + ceil32(return_data.size) + 96 len ceil32(_1959)] = mem[_14 + _487 + _936 + _1943 + 96 len ceil32(_1959)]
                        if ceil32(_1959) > _1959:
                            mem[_14 + _487 + _936 + ceil32(return_data.size) + _1959 + 96] = 0
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = 64
                        mem[mem[64] + 64] = _1959
                        mem[mem[64] + 96 len ceil32(_1959)] = mem[_14 + _487 + _936 + ceil32(return_data.size) + 96 len ceil32(_1959)]
                        if ceil32(_1959) > _1959:
                            mem[mem[64] + _1959 + 96] = 0
                        emit NewVaultRelease(address(arg1), Array(len=_1959, data=mem[mem[64] + 96 len ceil32(_1959)]), sub_ef75f098);
                else:
                    mem[mem[64] + _487 + 32] = 0
                    _1387 = mem[64]
                    mem[mem[64]] = _487
                    mem[64] = _487 + mem[64] + 32
                    _1389 = sha3(mem[_1387 + 32 len mem[_1387]])
                    mem[_487 + _936 + 64 len ceil32(_14)] = mem[ceil32(return_data.size) + 128 len ceil32(_14)]
                    mem[_487 + _936 + 32] = _14
                    mem[64] = _14 + _487 + _936 + 64
                    if sha3(mem[_487 + _936 + 64 len _14]) == _1389:
                        revert with 0, 'Registry: new vault release should have different api version'
                    mem[0] = sub_ef75f098
                    mem[32] = 2
                    sub_ac5973dc[stor1] = arg1
                    if 1 > !sub_ef75f098:
                        revert with 0, 17
                    sub_ef75f098++
                    mem[_14 + _487 + _936 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    staticcall arg1.0x25829410 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_14 + _487 + _936 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _14 + _487 + _936 + ceil32(return_data.size) + 64
                    require return_data.size >= 32
                    if ceil32(_14) <= _14:
                        _1936 = mem[_14 + _487 + _936 + 64]
                        require mem[_14 + _487 + _936 + 64] <= test266151307()
                        require _14 + _487 + _936 + return_data.size + 64 > _14 + _487 + _936 + mem[_14 + _487 + _936 + 64] + 95
                        _1952 = mem[_14 + _487 + _936 + mem[_14 + _487 + _936 + 64] + 64]
                        if mem[_14 + _487 + _936 + mem[_14 + _487 + _936 + 64] + 64] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[_14 + _487 + _936 + mem[_14 + _487 + _936 + 64] + 64])) + 1 < 0 or _14 + _487 + _936 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _487 + _936 + mem[_14 + _487 + _936 + 64] + 64])) + 65 > test266151307():
                            revert with 0, 65
                        mem[64] = _14 + _487 + _936 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _487 + _936 + mem[_14 + _487 + _936 + 64] + 64])) + 65
                        mem[_14 + _487 + _936 + ceil32(return_data.size) + 64] = _1952
                        require _1936 + _1952 + 32 <= return_data.size
                        mem[_14 + _487 + _936 + ceil32(return_data.size) + 96 len ceil32(_1952)] = mem[_14 + _487 + _936 + _1936 + 96 len ceil32(_1952)]
                        if ceil32(_1952) > _1952:
                            mem[_14 + _487 + _936 + ceil32(return_data.size) + _1952 + 96] = 0
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = 64
                        mem[mem[64] + 64] = _1952
                        mem[mem[64] + 96 len ceil32(_1952)] = mem[_14 + _487 + _936 + ceil32(return_data.size) + 96 len ceil32(_1952)]
                        if ceil32(_1952) > _1952:
                            mem[mem[64] + _1952 + 96] = 0
                        emit NewVaultRelease(address(arg1), Array(len=_1952, data=mem[mem[64] + 96 len ceil32(_1952)]), sub_ef75f098);
                    else:
                        _1944 = mem[_14 + _487 + _936 + 64]
                        require mem[_14 + _487 + _936 + 64] <= test266151307()
                        require _14 + _487 + _936 + return_data.size + 64 > _14 + _487 + _936 + mem[_14 + _487 + _936 + 64] + 95
                        _1960 = mem[_14 + _487 + _936 + mem[_14 + _487 + _936 + 64] + 64]
                        if mem[_14 + _487 + _936 + mem[_14 + _487 + _936 + 64] + 64] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[_14 + _487 + _936 + mem[_14 + _487 + _936 + 64] + 64])) + 1 < 0 or _14 + _487 + _936 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _487 + _936 + mem[_14 + _487 + _936 + 64] + 64])) + 65 > test266151307():
                            revert with 0, 65
                        mem[64] = _14 + _487 + _936 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _487 + _936 + mem[_14 + _487 + _936 + 64] + 64])) + 65
                        mem[_14 + _487 + _936 + ceil32(return_data.size) + 64] = _1960
                        require _1944 + _1960 + 32 <= return_data.size
                        mem[_14 + _487 + _936 + ceil32(return_data.size) + 96 len ceil32(_1960)] = mem[_14 + _487 + _936 + _1944 + 96 len ceil32(_1960)]
                        if ceil32(_1960) > _1960:
                            mem[_14 + _487 + _936 + ceil32(return_data.size) + _1960 + 96] = 0
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = 64
                        mem[mem[64] + 64] = _1960
                        mem[mem[64] + 96 len ceil32(_1960)] = mem[_14 + _487 + _936 + ceil32(return_data.size) + 96 len ceil32(_1960)]
                        if ceil32(_1960) > _1960:
                            mem[mem[64] + _1960 + 96] = 0
                        emit NewVaultRelease(address(arg1), Array(len=_1960, data=mem[mem[64] + 96 len ceil32(_1960)]), sub_ef75f098);
        else:
            mem[ceil32(return_data.size) + _14 + 128] = 0
            mem[mem[64]] = 0x2582941000000000000000000000000000000000000000000000000000000000
            require ext_code.size(arg1)
            staticcall arg1.0x25829410 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _482 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _485 = mem[_482]
            require mem[_482] <= test266151307()
            require _482 + return_data.size > _482 + mem[_482] + 31
            _488 = mem[_482 + mem[_482]]
            if mem[_482 + mem[_482]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_482 + mem[_482]])) + 1 < 0 or _482 + ceil32(return_data.size) + ceil32(ceil32(mem[_482 + mem[_482]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _482 + ceil32(return_data.size) + ceil32(ceil32(mem[_482 + mem[_482]])) + 1
            mem[_482 + ceil32(return_data.size)] = _488
            require _485 + _488 + 32 <= return_data.size
            mem[_482 + ceil32(return_data.size) + 32 len ceil32(_488)] = mem[_482 + _485 + 32 len ceil32(_488)]
            if ceil32(_488) <= _488:
                _932 = mem[64]
                mem[mem[64] + 32 len ceil32(_488)] = mem[_482 + ceil32(return_data.size) + 32 len ceil32(_488)]
                if ceil32(_488) <= _488:
                    _1373 = mem[64]
                    mem[mem[64]] = _488
                    mem[64] = _488 + mem[64] + 32
                    _1375 = sha3(mem[_1373 + 32 len mem[_1373]])
                    mem[_488 + _932 + 64 len ceil32(_14)] = mem[ceil32(return_data.size) + 128 len ceil32(_14)]
                    mem[_488 + _932 + 32] = _14
                    mem[64] = _14 + _488 + _932 + 64
                    if sha3(mem[_488 + _932 + 64 len _14]) == _1375:
                        revert with 0, 'Registry: new vault release should have different api version'
                    mem[0] = sub_ef75f098
                    mem[32] = 2
                    sub_ac5973dc[stor1] = arg1
                    if 1 > !sub_ef75f098:
                        revert with 0, 17
                    sub_ef75f098++
                    mem[_14 + _488 + _932 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    staticcall arg1.0x25829410 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_14 + _488 + _932 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _14 + _488 + _932 + ceil32(return_data.size) + 64
                    require return_data.size >= 32
                    if ceil32(_14) <= _14:
                        _1937 = mem[_14 + _488 + _932 + 64]
                        require mem[_14 + _488 + _932 + 64] <= test266151307()
                        require _14 + _488 + _932 + return_data.size + 64 > _14 + _488 + _932 + mem[_14 + _488 + _932 + 64] + 95
                        _1953 = mem[_14 + _488 + _932 + mem[_14 + _488 + _932 + 64] + 64]
                        if mem[_14 + _488 + _932 + mem[_14 + _488 + _932 + 64] + 64] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[_14 + _488 + _932 + mem[_14 + _488 + _932 + 64] + 64])) + 1 < 0 or _14 + _488 + _932 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _488 + _932 + mem[_14 + _488 + _932 + 64] + 64])) + 65 > test266151307():
                            revert with 0, 65
                        mem[64] = _14 + _488 + _932 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _488 + _932 + mem[_14 + _488 + _932 + 64] + 64])) + 65
                        mem[_14 + _488 + _932 + ceil32(return_data.size) + 64] = _1953
                        require _1937 + _1953 + 32 <= return_data.size
                        mem[_14 + _488 + _932 + ceil32(return_data.size) + 96 len ceil32(_1953)] = mem[_14 + _488 + _932 + _1937 + 96 len ceil32(_1953)]
                        if ceil32(_1953) > _1953:
                            mem[_14 + _488 + _932 + ceil32(return_data.size) + _1953 + 96] = 0
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = 64
                        mem[mem[64] + 64] = _1953
                        mem[mem[64] + 96 len ceil32(_1953)] = mem[_14 + _488 + _932 + ceil32(return_data.size) + 96 len ceil32(_1953)]
                        if ceil32(_1953) > _1953:
                            mem[mem[64] + _1953 + 96] = 0
                        emit NewVaultRelease(address(arg1), Array(len=_1953, data=mem[mem[64] + 96 len ceil32(_1953)]), sub_ef75f098);
                    else:
                        _1945 = mem[_14 + _488 + _932 + 64]
                        require mem[_14 + _488 + _932 + 64] <= test266151307()
                        require _14 + _488 + _932 + return_data.size + 64 > _14 + _488 + _932 + mem[_14 + _488 + _932 + 64] + 95
                        _1961 = mem[_14 + _488 + _932 + mem[_14 + _488 + _932 + 64] + 64]
                        if mem[_14 + _488 + _932 + mem[_14 + _488 + _932 + 64] + 64] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[_14 + _488 + _932 + mem[_14 + _488 + _932 + 64] + 64])) + 1 < 0 or _14 + _488 + _932 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _488 + _932 + mem[_14 + _488 + _932 + 64] + 64])) + 65 > test266151307():
                            revert with 0, 65
                        mem[64] = _14 + _488 + _932 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _488 + _932 + mem[_14 + _488 + _932 + 64] + 64])) + 65
                        mem[_14 + _488 + _932 + ceil32(return_data.size) + 64] = _1961
                        require _1945 + _1961 + 32 <= return_data.size
                        mem[_14 + _488 + _932 + ceil32(return_data.size) + 96 len ceil32(_1961)] = mem[_14 + _488 + _932 + _1945 + 96 len ceil32(_1961)]
                        if ceil32(_1961) > _1961:
                            mem[_14 + _488 + _932 + ceil32(return_data.size) + _1961 + 96] = 0
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = 64
                        mem[mem[64] + 64] = _1961
                        mem[mem[64] + 96 len ceil32(_1961)] = mem[_14 + _488 + _932 + ceil32(return_data.size) + 96 len ceil32(_1961)]
                        if ceil32(_1961) > _1961:
                            mem[mem[64] + _1961 + 96] = 0
                        emit NewVaultRelease(address(arg1), Array(len=_1961, data=mem[mem[64] + 96 len ceil32(_1961)]), sub_ef75f098);
                else:
                    mem[mem[64] + _488 + 32] = 0
                    _1392 = mem[64]
                    mem[mem[64]] = _488
                    mem[64] = _488 + mem[64] + 32
                    _1394 = sha3(mem[_1392 + 32 len mem[_1392]])
                    mem[_488 + _932 + 64 len ceil32(_14)] = mem[ceil32(return_data.size) + 128 len ceil32(_14)]
                    mem[_488 + _932 + 32] = _14
                    mem[64] = _14 + _488 + _932 + 64
                    if sha3(mem[_488 + _932 + 64 len _14]) == _1394:
                        revert with 0, 'Registry: new vault release should have different api version'
                    mem[0] = sub_ef75f098
                    mem[32] = 2
                    sub_ac5973dc[stor1] = arg1
                    if 1 > !sub_ef75f098:
                        revert with 0, 17
                    sub_ef75f098++
                    mem[_14 + _488 + _932 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    staticcall arg1.0x25829410 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_14 + _488 + _932 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _14 + _488 + _932 + ceil32(return_data.size) + 64
                    require return_data.size >= 32
                    if ceil32(_14) <= _14:
                        _1938 = mem[_14 + _488 + _932 + 64]
                        require mem[_14 + _488 + _932 + 64] <= test266151307()
                        require _14 + _488 + _932 + return_data.size + 64 > _14 + _488 + _932 + mem[_14 + _488 + _932 + 64] + 95
                        _1954 = mem[_14 + _488 + _932 + mem[_14 + _488 + _932 + 64] + 64]
                        if mem[_14 + _488 + _932 + mem[_14 + _488 + _932 + 64] + 64] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[_14 + _488 + _932 + mem[_14 + _488 + _932 + 64] + 64])) + 1 < 0 or _14 + _488 + _932 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _488 + _932 + mem[_14 + _488 + _932 + 64] + 64])) + 65 > test266151307():
                            revert with 0, 65
                        mem[64] = _14 + _488 + _932 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _488 + _932 + mem[_14 + _488 + _932 + 64] + 64])) + 65
                        mem[_14 + _488 + _932 + ceil32(return_data.size) + 64] = _1954
                        require _1938 + _1954 + 32 <= return_data.size
                        mem[_14 + _488 + _932 + ceil32(return_data.size) + 96 len ceil32(_1954)] = mem[_14 + _488 + _932 + _1938 + 96 len ceil32(_1954)]
                        if ceil32(_1954) > _1954:
                            mem[_14 + _488 + _932 + ceil32(return_data.size) + _1954 + 96] = 0
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = 64
                        mem[mem[64] + 64] = _1954
                        mem[mem[64] + 96 len ceil32(_1954)] = mem[_14 + _488 + _932 + ceil32(return_data.size) + 96 len ceil32(_1954)]
                        if ceil32(_1954) > _1954:
                            mem[mem[64] + _1954 + 96] = 0
                        emit NewVaultRelease(address(arg1), Array(len=_1954, data=mem[mem[64] + 96 len ceil32(_1954)]), sub_ef75f098);
                    else:
                        _1946 = mem[_14 + _488 + _932 + 64]
                        require mem[_14 + _488 + _932 + 64] <= test266151307()
                        require _14 + _488 + _932 + return_data.size + 64 > _14 + _488 + _932 + mem[_14 + _488 + _932 + 64] + 95
                        _1962 = mem[_14 + _488 + _932 + mem[_14 + _488 + _932 + 64] + 64]
                        if mem[_14 + _488 + _932 + mem[_14 + _488 + _932 + 64] + 64] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[_14 + _488 + _932 + mem[_14 + _488 + _932 + 64] + 64])) + 1 < 0 or _14 + _488 + _932 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _488 + _932 + mem[_14 + _488 + _932 + 64] + 64])) + 65 > test266151307():
                            revert with 0, 65
                        mem[64] = _14 + _488 + _932 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _488 + _932 + mem[_14 + _488 + _932 + 64] + 64])) + 65
                        mem[_14 + _488 + _932 + ceil32(return_data.size) + 64] = _1962
                        require _1946 + _1962 + 32 <= return_data.size
                        mem[_14 + _488 + _932 + ceil32(return_data.size) + 96 len ceil32(_1962)] = mem[_14 + _488 + _932 + _1946 + 96 len ceil32(_1962)]
                        if ceil32(_1962) > _1962:
                            mem[_14 + _488 + _932 + ceil32(return_data.size) + _1962 + 96] = 0
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = 64
                        mem[mem[64] + 64] = _1962
                        mem[mem[64] + 96 len ceil32(_1962)] = mem[_14 + _488 + _932 + ceil32(return_data.size) + 96 len ceil32(_1962)]
                        if ceil32(_1962) > _1962:
                            mem[mem[64] + _1962 + 96] = 0
                        emit NewVaultRelease(address(arg1), Array(len=_1962, data=mem[mem[64] + 96 len ceil32(_1962)]), sub_ef75f098);
            else:
                mem[_482 + ceil32(return_data.size) + _488 + 32] = 0
                _938 = mem[64]
                mem[mem[64] + 32 len ceil32(_488)] = mem[_482 + ceil32(return_data.size) + 32 len ceil32(_488)]
                if ceil32(_488) <= _488:
                    _1377 = mem[64]
                    mem[mem[64]] = _488
                    mem[64] = _488 + mem[64] + 32
                    _1379 = sha3(mem[_1377 + 32 len mem[_1377]])
                    mem[_488 + _938 + 64 len ceil32(_14)] = mem[ceil32(return_data.size) + 128 len ceil32(_14)]
                    mem[_488 + _938 + 32] = _14
                    mem[64] = _14 + _488 + _938 + 64
                    if sha3(mem[_488 + _938 + 64 len _14]) == _1379:
                        revert with 0, 'Registry: new vault release should have different api version'
                    mem[0] = sub_ef75f098
                    mem[32] = 2
                    sub_ac5973dc[stor1] = arg1
                    if 1 > !sub_ef75f098:
                        revert with 0, 17
                    sub_ef75f098++
                    mem[_14 + _488 + _938 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    staticcall arg1.0x25829410 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_14 + _488 + _938 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _14 + _488 + _938 + ceil32(return_data.size) + 64
                    require return_data.size >= 32
                    if ceil32(_14) <= _14:
                        _1939 = mem[_14 + _488 + _938 + 64]
                        require mem[_14 + _488 + _938 + 64] <= test266151307()
                        require _14 + _488 + _938 + return_data.size + 64 > _14 + _488 + _938 + mem[_14 + _488 + _938 + 64] + 95
                        _1955 = mem[_14 + _488 + _938 + mem[_14 + _488 + _938 + 64] + 64]
                        if mem[_14 + _488 + _938 + mem[_14 + _488 + _938 + 64] + 64] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[_14 + _488 + _938 + mem[_14 + _488 + _938 + 64] + 64])) + 1 < 0 or _14 + _488 + _938 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _488 + _938 + mem[_14 + _488 + _938 + 64] + 64])) + 65 > test266151307():
                            revert with 0, 65
                        mem[64] = _14 + _488 + _938 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _488 + _938 + mem[_14 + _488 + _938 + 64] + 64])) + 65
                        mem[_14 + _488 + _938 + ceil32(return_data.size) + 64] = _1955
                        require _1939 + _1955 + 32 <= return_data.size
                        mem[_14 + _488 + _938 + ceil32(return_data.size) + 96 len ceil32(_1955)] = mem[_14 + _488 + _938 + _1939 + 96 len ceil32(_1955)]
                        if ceil32(_1955) > _1955:
                            mem[_14 + _488 + _938 + ceil32(return_data.size) + _1955 + 96] = 0
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = 64
                        mem[mem[64] + 64] = _1955
                        mem[mem[64] + 96 len ceil32(_1955)] = mem[_14 + _488 + _938 + ceil32(return_data.size) + 96 len ceil32(_1955)]
                        if ceil32(_1955) > _1955:
                            mem[mem[64] + _1955 + 96] = 0
                        emit NewVaultRelease(address(arg1), Array(len=_1955, data=mem[mem[64] + 96 len ceil32(_1955)]), sub_ef75f098);
                    else:
                        _1947 = mem[_14 + _488 + _938 + 64]
                        require mem[_14 + _488 + _938 + 64] <= test266151307()
                        require _14 + _488 + _938 + return_data.size + 64 > _14 + _488 + _938 + mem[_14 + _488 + _938 + 64] + 95
                        _1963 = mem[_14 + _488 + _938 + mem[_14 + _488 + _938 + 64] + 64]
                        if mem[_14 + _488 + _938 + mem[_14 + _488 + _938 + 64] + 64] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[_14 + _488 + _938 + mem[_14 + _488 + _938 + 64] + 64])) + 1 < 0 or _14 + _488 + _938 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _488 + _938 + mem[_14 + _488 + _938 + 64] + 64])) + 65 > test266151307():
                            revert with 0, 65
                        mem[64] = _14 + _488 + _938 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _488 + _938 + mem[_14 + _488 + _938 + 64] + 64])) + 65
                        mem[_14 + _488 + _938 + ceil32(return_data.size) + 64] = _1963
                        require _1947 + _1963 + 32 <= return_data.size
                        mem[_14 + _488 + _938 + ceil32(return_data.size) + 96 len ceil32(_1963)] = mem[_14 + _488 + _938 + _1947 + 96 len ceil32(_1963)]
                        if ceil32(_1963) > _1963:
                            mem[_14 + _488 + _938 + ceil32(return_data.size) + _1963 + 96] = 0
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = 64
                        mem[mem[64] + 64] = _1963
                        mem[mem[64] + 96 len ceil32(_1963)] = mem[_14 + _488 + _938 + ceil32(return_data.size) + 96 len ceil32(_1963)]
                        if ceil32(_1963) > _1963:
                            mem[mem[64] + _1963 + 96] = 0
                        emit NewVaultRelease(address(arg1), Array(len=_1963, data=mem[mem[64] + 96 len ceil32(_1963)]), sub_ef75f098);
                else:
                    mem[mem[64] + _488 + 32] = 0
                    _1397 = mem[64]
                    mem[mem[64]] = _488
                    mem[64] = _488 + mem[64] + 32
                    _1399 = sha3(mem[_1397 + 32 len mem[_1397]])
                    mem[_488 + _938 + 64 len ceil32(_14)] = mem[ceil32(return_data.size) + 128 len ceil32(_14)]
                    mem[_488 + _938 + 32] = _14
                    mem[64] = _14 + _488 + _938 + 64
                    if sha3(mem[_488 + _938 + 64 len _14]) == _1399:
                        revert with 0, 'Registry: new vault release should have different api version'
                    mem[0] = sub_ef75f098
                    mem[32] = 2
                    sub_ac5973dc[stor1] = arg1
                    if 1 > !sub_ef75f098:
                        revert with 0, 17
                    sub_ef75f098++
                    mem[_14 + _488 + _938 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    staticcall arg1.0x25829410 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_14 + _488 + _938 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _14 + _488 + _938 + ceil32(return_data.size) + 64
                    require return_data.size >= 32
                    if ceil32(_14) <= _14:
                        _1940 = mem[_14 + _488 + _938 + 64]
                        require mem[_14 + _488 + _938 + 64] <= test266151307()
                        require _14 + _488 + _938 + return_data.size + 64 > _14 + _488 + _938 + mem[_14 + _488 + _938 + 64] + 95
                        _1956 = mem[_14 + _488 + _938 + mem[_14 + _488 + _938 + 64] + 64]
                        if mem[_14 + _488 + _938 + mem[_14 + _488 + _938 + 64] + 64] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[_14 + _488 + _938 + mem[_14 + _488 + _938 + 64] + 64])) + 1 < 0 or _14 + _488 + _938 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _488 + _938 + mem[_14 + _488 + _938 + 64] + 64])) + 65 > test266151307():
                            revert with 0, 65
                        mem[64] = _14 + _488 + _938 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _488 + _938 + mem[_14 + _488 + _938 + 64] + 64])) + 65
                        mem[_14 + _488 + _938 + ceil32(return_data.size) + 64] = _1956
                        require _1940 + _1956 + 32 <= return_data.size
                        mem[_14 + _488 + _938 + ceil32(return_data.size) + 96 len ceil32(_1956)] = mem[_14 + _488 + _938 + _1940 + 96 len ceil32(_1956)]
                        if ceil32(_1956) > _1956:
                            mem[_14 + _488 + _938 + ceil32(return_data.size) + _1956 + 96] = 0
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = 64
                        mem[mem[64] + 64] = _1956
                        mem[mem[64] + 96 len ceil32(_1956)] = mem[_14 + _488 + _938 + ceil32(return_data.size) + 96 len ceil32(_1956)]
                        if ceil32(_1956) > _1956:
                            mem[mem[64] + _1956 + 96] = 0
                        emit NewVaultRelease(address(arg1), Array(len=_1956, data=mem[mem[64] + 96 len ceil32(_1956)]), sub_ef75f098);
                    else:
                        _1948 = mem[_14 + _488 + _938 + 64]
                        require mem[_14 + _488 + _938 + 64] <= test266151307()
                        require _14 + _488 + _938 + return_data.size + 64 > _14 + _488 + _938 + mem[_14 + _488 + _938 + 64] + 95
                        _1964 = mem[_14 + _488 + _938 + mem[_14 + _488 + _938 + 64] + 64]
                        if mem[_14 + _488 + _938 + mem[_14 + _488 + _938 + 64] + 64] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[_14 + _488 + _938 + mem[_14 + _488 + _938 + 64] + 64])) + 1 < 0 or _14 + _488 + _938 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _488 + _938 + mem[_14 + _488 + _938 + 64] + 64])) + 65 > test266151307():
                            revert with 0, 65
                        mem[64] = _14 + _488 + _938 + ceil32(return_data.size) + ceil32(ceil32(mem[_14 + _488 + _938 + mem[_14 + _488 + _938 + 64] + 64])) + 65
                        mem[_14 + _488 + _938 + ceil32(return_data.size) + 64] = _1964
                        require _1948 + _1964 + 32 <= return_data.size
                        mem[_14 + _488 + _938 + ceil32(return_data.size) + 96 len ceil32(_1964)] = mem[_14 + _488 + _938 + _1948 + 96 len ceil32(_1964)]
                        if ceil32(_1964) > _1964:
                            mem[_14 + _488 + _938 + ceil32(return_data.size) + _1964 + 96] = 0
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = 64
                        mem[mem[64] + 64] = _1964
                        mem[mem[64] + 96 len ceil32(_1964)] = mem[_14 + _488 + _938 + ceil32(return_data.size) + 96 len ceil32(_1964)]
                        if ceil32(_1964) > _1964:
                            mem[mem[64] + _1964 + 96] = 0
                        emit NewVaultRelease(address(arg1), Array(len=_1964, data=mem[mem[64] + 96 len ceil32(_1964)]), sub_ef75f098);
}

function newVault(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_ef75f098 < 1:
        revert with 0, 17
    if sub_ef75f098 - 1 < arg4:
        revert with 0, 17
    if sub_2cc60031 < 1:
        revert with 0, 17
    if sub_2cc60031 - 1 < arg5:
        revert with 0, 17
    if not sub_ac5973dc[stor1 + -arg4 - 1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Registry: vault release target is wrong'
    if not sub_b0b778b9[stor3 + -arg5 - 1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Registry: wrapper release target is wrong'
    create contract with 0 wei
                    code: code.data[8023 len 3930], sub_ac5973dc[stor1 + -arg4 - 1], proxyAdminAddress, 96, 0
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len 3930] = code.data[8023 len 3930]
    mem[4026] = sub_b0b778b9[stor3 + -arg5 - 1]
    mem[4058] = proxyAdminAddress
    mem[4090] = 96
    mem[4122] = 0
    create contract with 0 wei
                    code: code.data[8023 len 3930], sub_b0b778b9[stor3 + -arg5 - 1], proxyAdminAddress, 96, 0
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xc4d66de8 with:
         gas gas_remaining wei
        args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = arg1
    mem[132] = msg.sender
    mem[164] = bridgeAddress
    mem[196] = address(create.new_address)
    mem[228] = arg2
    mem[260] = 0
    mem[292] = arg3
    require ext_code.size(address(create.new_address))
    call address(create.new_address).initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args 0, 0, msg.sender, bridgeAddress, address(create.new_address), address(arg2), 0, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not numVaults[address(arg1)]:
        latestVault[address(arg1)][stor5[address(arg1)]] = address(create.new_address)
        if 1 > !numVaults[address(arg1)]:
            revert with 0, 17
        mem[0] = arg1
        numVaults[address(arg1)]++
        mem[32] = 9
        if stor9[address(arg1)]:
            mem[96] = 0x2582941000000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(create.new_address))
            staticcall address(create.new_address).0x25829410 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _33 = mem[96]
            require mem[96] <= test266151307()
            require return_data.size + 96 > mem[96] + 127
            _37 = mem[mem[96] + 96]
            if mem[mem[96] + 96] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
            mem[ceil32(return_data.size) + 96] = _37
            require _33 + _37 + 32 <= return_data.size
            mem[ceil32(return_data.size) + 128 len ceil32(_37)] = mem[_33 + 128 len ceil32(_37)]
            if ceil32(_37) > _37:
                mem[ceil32(return_data.size) + _37 + 128] = 0
            mem[mem[64]] = address(create.new_address)
            mem[mem[64] + 32] = 64
            mem[mem[64] + 64] = _37
            mem[mem[64] + 96 len ceil32(_37)] = mem[ceil32(return_data.size) + 128 len ceil32(_37)]
            if ceil32(_37) > _37:
                mem[mem[64] + _37 + 96] = 0
            emit NewVault(address(create.new_address), Array(len=_37, data=mem[mem[64] + 96 len ceil32(_37)]), arg1, numVaults[address(arg1)]);
        else:
            stor9[address(arg1)] = 1
            mem[0] = numTokens
            mem[32] = 7
            stor7[stor8] = arg1
            if numTokens > -2:
                revert with 0, 17
            numTokens++
            mem[96] = 0x2582941000000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(create.new_address))
            staticcall address(create.new_address).0x25829410 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _39 = mem[96]
            require mem[96] <= test266151307()
            require return_data.size + 96 > mem[96] + 127
            _42 = mem[mem[96] + 96]
            if mem[mem[96] + 96] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
            mem[ceil32(return_data.size) + 96] = _42
            require _39 + _42 + 32 <= return_data.size
            mem[ceil32(return_data.size) + 128 len ceil32(_42)] = mem[_39 + 128 len ceil32(_42)]
            if ceil32(_42) > _42:
                mem[ceil32(return_data.size) + _42 + 128] = 0
            mem[mem[64]] = address(create.new_address)
            mem[mem[64] + 32] = 64
            mem[mem[64] + 64] = _42
            mem[mem[64] + 96 len ceil32(_42)] = mem[ceil32(return_data.size) + 128 len ceil32(_42)]
            if ceil32(_42) > _42:
                mem[mem[64] + _42 + 96] = 0
            emit NewVault(address(create.new_address), Array(len=_42, data=mem[mem[64] + 96 len ceil32(_42)]), arg1, numVaults[address(arg1)]);
    else:
        if numVaults[address(arg1)] < 1:
            revert with 0, 17
        mem[0] = numVaults[address(arg1)] - 1
        mem[32] = sha3(address(arg1), 6)
        mem[96] = 0x2582941000000000000000000000000000000000000000000000000000000000
        require ext_code.size(latestVault[address(arg1)][stor5[address(arg1)] - 1])
        staticcall latestVault[address(arg1)][stor5[address(arg1)] - 1].0x25829410 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _32 = mem[96]
        require mem[96] <= test266151307()
        require return_data.size + 96 > mem[96] + 127
        _36 = mem[mem[96] + 96]
        if mem[mem[96] + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
        mem[ceil32(return_data.size) + 96] = _36
        require _32 + _36 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_36)] = mem[_32 + 128 len ceil32(_36)]
        if ceil32(_36) <= _36:
            mem[mem[64]] = 0x2582941000000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(create.new_address))
            staticcall address(create.new_address).0x25829410 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1146 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1150 = mem[_1146]
            require mem[_1146] <= test266151307()
            require _1146 + return_data.size > _1146 + mem[_1146] + 31
            _1156 = mem[_1146 + mem[_1146]]
            if mem[_1146 + mem[_1146]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_1146 + mem[_1146]])) + 1 < 0 or _1146 + ceil32(return_data.size) + ceil32(ceil32(mem[_1146 + mem[_1146]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _1146 + ceil32(return_data.size) + ceil32(ceil32(mem[_1146 + mem[_1146]])) + 1
            mem[_1146 + ceil32(return_data.size)] = _1156
            require _1150 + _1156 + 32 <= return_data.size
            mem[_1146 + ceil32(return_data.size) + 32 len ceil32(_1156)] = mem[_1146 + _1150 + 32 len ceil32(_1156)]
            if ceil32(_1156) <= _1156:
                _2232 = mem[64]
                mem[mem[64] + 32 len ceil32(_1156)] = mem[_1146 + ceil32(return_data.size) + 32 len ceil32(_1156)]
                if ceil32(_1156) <= _1156:
                    _3292 = mem[64]
                    mem[mem[64]] = _1156
                    mem[64] = _1156 + mem[64] + 32
                    _3294 = sha3(mem[_3292 + 32 len mem[_3292]])
                    mem[_1156 + _2232 + 64 len ceil32(_36)] = mem[ceil32(return_data.size) + 128 len ceil32(_36)]
                    mem[_1156 + _2232 + 32] = _36
                    mem[64] = _36 + _1156 + _2232 + 64
                    if sha3(mem[_1156 + _2232 + 64 len _36]) == _3294:
                        revert with 0, 'Registry: new vault should have different api version'
                    latestVault[address(arg1)][stor5[address(arg1)]] = address(create.new_address)
                    if 1 > !numVaults[address(arg1)]:
                        revert with 0, 17
                    mem[0] = arg1
                    numVaults[address(arg1)]++
                    mem[32] = 9
                    if ceil32(_36) <= _36:
                        if stor9[address(arg1)]:
                            mem[_36 + _1156 + _2232 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1156 + _2232 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1156 + _2232 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4548 = mem[_36 + _1156 + _2232 + 64]
                            require mem[_36 + _1156 + _2232 + 64] <= test266151307()
                            require _36 + _1156 + _2232 + return_data.size + 64 > _36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 95
                            _4596 = mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64]
                            if mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64])) + 1 < 0 or _36 + _1156 + _2232 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1156 + _2232 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64])) + 65
                            mem[_36 + _1156 + _2232 + ceil32(return_data.size) + 64] = _4596
                            require _4548 + _4596 + 32 <= return_data.size
                            mem[_36 + _1156 + _2232 + ceil32(return_data.size) + 96 len ceil32(_4596)] = mem[_36 + _1156 + _2232 + _4548 + 96 len ceil32(_4596)]
                            if ceil32(_4596) > _4596:
                                mem[_36 + _1156 + _2232 + ceil32(return_data.size) + _4596 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4596
                            mem[mem[64] + 96 len ceil32(_4596)] = mem[_36 + _1156 + _2232 + ceil32(return_data.size) + 96 len ceil32(_4596)]
                            if ceil32(_4596) > _4596:
                                mem[mem[64] + _4596 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4596, data=mem[mem[64] + 96 len ceil32(_4596)]), arg1, numVaults[address(arg1)]);
                        else:
                            stor9[address(arg1)] = 1
                            mem[0] = numTokens
                            mem[32] = 7
                            stor7[stor8] = arg1
                            if numTokens > -2:
                                revert with 0, 17
                            numTokens++
                            mem[_36 + _1156 + _2232 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1156 + _2232 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1156 + _2232 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4628 = mem[_36 + _1156 + _2232 + 64]
                            require mem[_36 + _1156 + _2232 + 64] <= test266151307()
                            require _36 + _1156 + _2232 + return_data.size + 64 > _36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 95
                            _4645 = mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64]
                            if mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64])) + 1 < 0 or _36 + _1156 + _2232 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1156 + _2232 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64])) + 65
                            mem[_36 + _1156 + _2232 + ceil32(return_data.size) + 64] = _4645
                            require _4628 + _4645 + 32 <= return_data.size
                            mem[_36 + _1156 + _2232 + ceil32(return_data.size) + 96 len ceil32(_4645)] = mem[_36 + _1156 + _2232 + _4628 + 96 len ceil32(_4645)]
                            if ceil32(_4645) > _4645:
                                mem[_36 + _1156 + _2232 + ceil32(return_data.size) + _4645 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4645
                            mem[mem[64] + 96 len ceil32(_4645)] = mem[_36 + _1156 + _2232 + ceil32(return_data.size) + 96 len ceil32(_4645)]
                            if ceil32(_4645) > _4645:
                                mem[mem[64] + _4645 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4645, data=mem[mem[64] + 96 len ceil32(_4645)]), arg1, numVaults[address(arg1)]);
                    else:
                        if stor9[address(arg1)]:
                            mem[_36 + _1156 + _2232 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1156 + _2232 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1156 + _2232 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4572 = mem[_36 + _1156 + _2232 + 64]
                            require mem[_36 + _1156 + _2232 + 64] <= test266151307()
                            require _36 + _1156 + _2232 + return_data.size + 64 > _36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 95
                            _4612 = mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64]
                            if mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64])) + 1 < 0 or _36 + _1156 + _2232 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1156 + _2232 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64])) + 65
                            mem[_36 + _1156 + _2232 + ceil32(return_data.size) + 64] = _4612
                            require _4572 + _4612 + 32 <= return_data.size
                            mem[_36 + _1156 + _2232 + ceil32(return_data.size) + 96 len ceil32(_4612)] = mem[_36 + _1156 + _2232 + _4572 + 96 len ceil32(_4612)]
                            if ceil32(_4612) > _4612:
                                mem[_36 + _1156 + _2232 + ceil32(return_data.size) + _4612 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4612
                            mem[mem[64] + 96 len ceil32(_4612)] = mem[_36 + _1156 + _2232 + ceil32(return_data.size) + 96 len ceil32(_4612)]
                            if ceil32(_4612) > _4612:
                                mem[mem[64] + _4612 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4612, data=mem[mem[64] + 96 len ceil32(_4612)]), arg1, numVaults[address(arg1)]);
                        else:
                            stor9[address(arg1)] = 1
                            mem[0] = numTokens
                            mem[32] = 7
                            stor7[stor8] = arg1
                            if numTokens > -2:
                                revert with 0, 17
                            numTokens++
                            mem[_36 + _1156 + _2232 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1156 + _2232 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1156 + _2232 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4636 = mem[_36 + _1156 + _2232 + 64]
                            require mem[_36 + _1156 + _2232 + 64] <= test266151307()
                            require _36 + _1156 + _2232 + return_data.size + 64 > _36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 95
                            _4661 = mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64]
                            if mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64])) + 1 < 0 or _36 + _1156 + _2232 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1156 + _2232 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64])) + 65
                            mem[_36 + _1156 + _2232 + ceil32(return_data.size) + 64] = _4661
                            require _4636 + _4661 + 32 <= return_data.size
                            mem[_36 + _1156 + _2232 + ceil32(return_data.size) + 96 len ceil32(_4661)] = mem[_36 + _1156 + _2232 + _4636 + 96 len ceil32(_4661)]
                            if ceil32(_4661) > _4661:
                                mem[_36 + _1156 + _2232 + ceil32(return_data.size) + _4661 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4661
                            mem[mem[64] + 96 len ceil32(_4661)] = mem[_36 + _1156 + _2232 + ceil32(return_data.size) + 96 len ceil32(_4661)]
                            if ceil32(_4661) > _4661:
                                mem[mem[64] + _4661 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4661, data=mem[mem[64] + 96 len ceil32(_4661)]), arg1, numVaults[address(arg1)]);
                else:
                    mem[mem[64] + _1156 + 32] = 0
                    _3309 = mem[64]
                    mem[mem[64]] = _1156
                    mem[64] = _1156 + mem[64] + 32
                    _3311 = sha3(mem[_3309 + 32 len mem[_3309]])
                    mem[_1156 + _2232 + 64 len ceil32(_36)] = mem[ceil32(return_data.size) + 128 len ceil32(_36)]
                    mem[_1156 + _2232 + 32] = _36
                    mem[64] = _36 + _1156 + _2232 + 64
                    if sha3(mem[_1156 + _2232 + 64 len _36]) == _3311:
                        revert with 0, 'Registry: new vault should have different api version'
                    latestVault[address(arg1)][stor5[address(arg1)]] = address(create.new_address)
                    if 1 > !numVaults[address(arg1)]:
                        revert with 0, 17
                    mem[0] = arg1
                    numVaults[address(arg1)]++
                    mem[32] = 9
                    if ceil32(_36) <= _36:
                        if stor9[address(arg1)]:
                            mem[_36 + _1156 + _2232 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1156 + _2232 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1156 + _2232 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4551 = mem[_36 + _1156 + _2232 + 64]
                            require mem[_36 + _1156 + _2232 + 64] <= test266151307()
                            require _36 + _1156 + _2232 + return_data.size + 64 > _36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 95
                            _4598 = mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64]
                            if mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64])) + 1 < 0 or _36 + _1156 + _2232 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1156 + _2232 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64])) + 65
                            mem[_36 + _1156 + _2232 + ceil32(return_data.size) + 64] = _4598
                            require _4551 + _4598 + 32 <= return_data.size
                            mem[_36 + _1156 + _2232 + ceil32(return_data.size) + 96 len ceil32(_4598)] = mem[_36 + _1156 + _2232 + _4551 + 96 len ceil32(_4598)]
                            if ceil32(_4598) > _4598:
                                mem[_36 + _1156 + _2232 + ceil32(return_data.size) + _4598 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4598
                            mem[mem[64] + 96 len ceil32(_4598)] = mem[_36 + _1156 + _2232 + ceil32(return_data.size) + 96 len ceil32(_4598)]
                            if ceil32(_4598) > _4598:
                                mem[mem[64] + _4598 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4598, data=mem[mem[64] + 96 len ceil32(_4598)]), arg1, numVaults[address(arg1)]);
                        else:
                            stor9[address(arg1)] = 1
                            mem[0] = numTokens
                            mem[32] = 7
                            stor7[stor8] = arg1
                            if numTokens > -2:
                                revert with 0, 17
                            numTokens++
                            mem[_36 + _1156 + _2232 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1156 + _2232 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1156 + _2232 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4629 = mem[_36 + _1156 + _2232 + 64]
                            require mem[_36 + _1156 + _2232 + 64] <= test266151307()
                            require _36 + _1156 + _2232 + return_data.size + 64 > _36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 95
                            _4647 = mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64]
                            if mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64])) + 1 < 0 or _36 + _1156 + _2232 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1156 + _2232 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64])) + 65
                            mem[_36 + _1156 + _2232 + ceil32(return_data.size) + 64] = _4647
                            require _4629 + _4647 + 32 <= return_data.size
                            mem[_36 + _1156 + _2232 + ceil32(return_data.size) + 96 len ceil32(_4647)] = mem[_36 + _1156 + _2232 + _4629 + 96 len ceil32(_4647)]
                            if ceil32(_4647) > _4647:
                                mem[_36 + _1156 + _2232 + ceil32(return_data.size) + _4647 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4647
                            mem[mem[64] + 96 len ceil32(_4647)] = mem[_36 + _1156 + _2232 + ceil32(return_data.size) + 96 len ceil32(_4647)]
                            if ceil32(_4647) > _4647:
                                mem[mem[64] + _4647 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4647, data=mem[mem[64] + 96 len ceil32(_4647)]), arg1, numVaults[address(arg1)]);
                    else:
                        if stor9[address(arg1)]:
                            mem[_36 + _1156 + _2232 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1156 + _2232 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1156 + _2232 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4575 = mem[_36 + _1156 + _2232 + 64]
                            require mem[_36 + _1156 + _2232 + 64] <= test266151307()
                            require _36 + _1156 + _2232 + return_data.size + 64 > _36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 95
                            _4614 = mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64]
                            if mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64])) + 1 < 0 or _36 + _1156 + _2232 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1156 + _2232 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64])) + 65
                            mem[_36 + _1156 + _2232 + ceil32(return_data.size) + 64] = _4614
                            require _4575 + _4614 + 32 <= return_data.size
                            mem[_36 + _1156 + _2232 + ceil32(return_data.size) + 96 len ceil32(_4614)] = mem[_36 + _1156 + _2232 + _4575 + 96 len ceil32(_4614)]
                            if ceil32(_4614) > _4614:
                                mem[_36 + _1156 + _2232 + ceil32(return_data.size) + _4614 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4614
                            mem[mem[64] + 96 len ceil32(_4614)] = mem[_36 + _1156 + _2232 + ceil32(return_data.size) + 96 len ceil32(_4614)]
                            if ceil32(_4614) > _4614:
                                mem[mem[64] + _4614 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4614, data=mem[mem[64] + 96 len ceil32(_4614)]), arg1, numVaults[address(arg1)]);
                        else:
                            stor9[address(arg1)] = 1
                            mem[0] = numTokens
                            mem[32] = 7
                            stor7[stor8] = arg1
                            if numTokens > -2:
                                revert with 0, 17
                            numTokens++
                            mem[_36 + _1156 + _2232 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1156 + _2232 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1156 + _2232 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4637 = mem[_36 + _1156 + _2232 + 64]
                            require mem[_36 + _1156 + _2232 + 64] <= test266151307()
                            require _36 + _1156 + _2232 + return_data.size + 64 > _36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 95
                            _4663 = mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64]
                            if mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64])) + 1 < 0 or _36 + _1156 + _2232 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1156 + _2232 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2232 + mem[_36 + _1156 + _2232 + 64] + 64])) + 65
                            mem[_36 + _1156 + _2232 + ceil32(return_data.size) + 64] = _4663
                            require _4637 + _4663 + 32 <= return_data.size
                            mem[_36 + _1156 + _2232 + ceil32(return_data.size) + 96 len ceil32(_4663)] = mem[_36 + _1156 + _2232 + _4637 + 96 len ceil32(_4663)]
                            if ceil32(_4663) > _4663:
                                mem[_36 + _1156 + _2232 + ceil32(return_data.size) + _4663 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4663
                            mem[mem[64] + 96 len ceil32(_4663)] = mem[_36 + _1156 + _2232 + ceil32(return_data.size) + 96 len ceil32(_4663)]
                            if ceil32(_4663) > _4663:
                                mem[mem[64] + _4663 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4663, data=mem[mem[64] + 96 len ceil32(_4663)]), arg1, numVaults[address(arg1)]);
            else:
                mem[_1146 + ceil32(return_data.size) + _1156 + 32] = 0
                _2239 = mem[64]
                mem[mem[64] + 32 len ceil32(_1156)] = mem[_1146 + ceil32(return_data.size) + 32 len ceil32(_1156)]
                if ceil32(_1156) <= _1156:
                    _3296 = mem[64]
                    mem[mem[64]] = _1156
                    mem[64] = _1156 + mem[64] + 32
                    _3298 = sha3(mem[_3296 + 32 len mem[_3296]])
                    mem[_1156 + _2239 + 64 len ceil32(_36)] = mem[ceil32(return_data.size) + 128 len ceil32(_36)]
                    mem[_1156 + _2239 + 32] = _36
                    mem[64] = _36 + _1156 + _2239 + 64
                    if sha3(mem[_1156 + _2239 + 64 len _36]) == _3298:
                        revert with 0, 'Registry: new vault should have different api version'
                    latestVault[address(arg1)][stor5[address(arg1)]] = address(create.new_address)
                    if 1 > !numVaults[address(arg1)]:
                        revert with 0, 17
                    mem[0] = arg1
                    numVaults[address(arg1)]++
                    mem[32] = 9
                    if ceil32(_36) <= _36:
                        if stor9[address(arg1)]:
                            mem[_36 + _1156 + _2239 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1156 + _2239 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1156 + _2239 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4554 = mem[_36 + _1156 + _2239 + 64]
                            require mem[_36 + _1156 + _2239 + 64] <= test266151307()
                            require _36 + _1156 + _2239 + return_data.size + 64 > _36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 95
                            _4600 = mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64]
                            if mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64])) + 1 < 0 or _36 + _1156 + _2239 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1156 + _2239 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64])) + 65
                            mem[_36 + _1156 + _2239 + ceil32(return_data.size) + 64] = _4600
                            require _4554 + _4600 + 32 <= return_data.size
                            mem[_36 + _1156 + _2239 + ceil32(return_data.size) + 96 len ceil32(_4600)] = mem[_36 + _1156 + _2239 + _4554 + 96 len ceil32(_4600)]
                            if ceil32(_4600) > _4600:
                                mem[_36 + _1156 + _2239 + ceil32(return_data.size) + _4600 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4600
                            mem[mem[64] + 96 len ceil32(_4600)] = mem[_36 + _1156 + _2239 + ceil32(return_data.size) + 96 len ceil32(_4600)]
                            if ceil32(_4600) > _4600:
                                mem[mem[64] + _4600 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4600, data=mem[mem[64] + 96 len ceil32(_4600)]), arg1, numVaults[address(arg1)]);
                        else:
                            stor9[address(arg1)] = 1
                            mem[0] = numTokens
                            mem[32] = 7
                            stor7[stor8] = arg1
                            if numTokens > -2:
                                revert with 0, 17
                            numTokens++
                            mem[_36 + _1156 + _2239 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1156 + _2239 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1156 + _2239 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4630 = mem[_36 + _1156 + _2239 + 64]
                            require mem[_36 + _1156 + _2239 + 64] <= test266151307()
                            require _36 + _1156 + _2239 + return_data.size + 64 > _36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 95
                            _4649 = mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64]
                            if mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64])) + 1 < 0 or _36 + _1156 + _2239 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1156 + _2239 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64])) + 65
                            mem[_36 + _1156 + _2239 + ceil32(return_data.size) + 64] = _4649
                            require _4630 + _4649 + 32 <= return_data.size
                            mem[_36 + _1156 + _2239 + ceil32(return_data.size) + 96 len ceil32(_4649)] = mem[_36 + _1156 + _2239 + _4630 + 96 len ceil32(_4649)]
                            if ceil32(_4649) > _4649:
                                mem[_36 + _1156 + _2239 + ceil32(return_data.size) + _4649 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4649
                            mem[mem[64] + 96 len ceil32(_4649)] = mem[_36 + _1156 + _2239 + ceil32(return_data.size) + 96 len ceil32(_4649)]
                            if ceil32(_4649) > _4649:
                                mem[mem[64] + _4649 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4649, data=mem[mem[64] + 96 len ceil32(_4649)]), arg1, numVaults[address(arg1)]);
                    else:
                        if stor9[address(arg1)]:
                            mem[_36 + _1156 + _2239 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1156 + _2239 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1156 + _2239 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4578 = mem[_36 + _1156 + _2239 + 64]
                            require mem[_36 + _1156 + _2239 + 64] <= test266151307()
                            require _36 + _1156 + _2239 + return_data.size + 64 > _36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 95
                            _4616 = mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64]
                            if mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64])) + 1 < 0 or _36 + _1156 + _2239 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1156 + _2239 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64])) + 65
                            mem[_36 + _1156 + _2239 + ceil32(return_data.size) + 64] = _4616
                            require _4578 + _4616 + 32 <= return_data.size
                            mem[_36 + _1156 + _2239 + ceil32(return_data.size) + 96 len ceil32(_4616)] = mem[_36 + _1156 + _2239 + _4578 + 96 len ceil32(_4616)]
                            if ceil32(_4616) > _4616:
                                mem[_36 + _1156 + _2239 + ceil32(return_data.size) + _4616 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4616
                            mem[mem[64] + 96 len ceil32(_4616)] = mem[_36 + _1156 + _2239 + ceil32(return_data.size) + 96 len ceil32(_4616)]
                            if ceil32(_4616) > _4616:
                                mem[mem[64] + _4616 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4616, data=mem[mem[64] + 96 len ceil32(_4616)]), arg1, numVaults[address(arg1)]);
                        else:
                            stor9[address(arg1)] = 1
                            mem[0] = numTokens
                            mem[32] = 7
                            stor7[stor8] = arg1
                            if numTokens > -2:
                                revert with 0, 17
                            numTokens++
                            mem[_36 + _1156 + _2239 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1156 + _2239 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1156 + _2239 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4638 = mem[_36 + _1156 + _2239 + 64]
                            require mem[_36 + _1156 + _2239 + 64] <= test266151307()
                            require _36 + _1156 + _2239 + return_data.size + 64 > _36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 95
                            _4665 = mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64]
                            if mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64])) + 1 < 0 or _36 + _1156 + _2239 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1156 + _2239 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64])) + 65
                            mem[_36 + _1156 + _2239 + ceil32(return_data.size) + 64] = _4665
                            require _4638 + _4665 + 32 <= return_data.size
                            mem[_36 + _1156 + _2239 + ceil32(return_data.size) + 96 len ceil32(_4665)] = mem[_36 + _1156 + _2239 + _4638 + 96 len ceil32(_4665)]
                            if ceil32(_4665) > _4665:
                                mem[_36 + _1156 + _2239 + ceil32(return_data.size) + _4665 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4665
                            mem[mem[64] + 96 len ceil32(_4665)] = mem[_36 + _1156 + _2239 + ceil32(return_data.size) + 96 len ceil32(_4665)]
                            if ceil32(_4665) > _4665:
                                mem[mem[64] + _4665 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4665, data=mem[mem[64] + 96 len ceil32(_4665)]), arg1, numVaults[address(arg1)]);
                else:
                    mem[mem[64] + _1156 + 32] = 0
                    _3314 = mem[64]
                    mem[mem[64]] = _1156
                    mem[64] = _1156 + mem[64] + 32
                    _3316 = sha3(mem[_3314 + 32 len mem[_3314]])
                    mem[_1156 + _2239 + 64 len ceil32(_36)] = mem[ceil32(return_data.size) + 128 len ceil32(_36)]
                    mem[_1156 + _2239 + 32] = _36
                    mem[64] = _36 + _1156 + _2239 + 64
                    if sha3(mem[_1156 + _2239 + 64 len _36]) == _3316:
                        revert with 0, 'Registry: new vault should have different api version'
                    latestVault[address(arg1)][stor5[address(arg1)]] = address(create.new_address)
                    if 1 > !numVaults[address(arg1)]:
                        revert with 0, 17
                    mem[0] = arg1
                    numVaults[address(arg1)]++
                    mem[32] = 9
                    if ceil32(_36) <= _36:
                        if stor9[address(arg1)]:
                            mem[_36 + _1156 + _2239 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1156 + _2239 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1156 + _2239 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4557 = mem[_36 + _1156 + _2239 + 64]
                            require mem[_36 + _1156 + _2239 + 64] <= test266151307()
                            require _36 + _1156 + _2239 + return_data.size + 64 > _36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 95
                            _4602 = mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64]
                            if mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64])) + 1 < 0 or _36 + _1156 + _2239 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1156 + _2239 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64])) + 65
                            mem[_36 + _1156 + _2239 + ceil32(return_data.size) + 64] = _4602
                            require _4557 + _4602 + 32 <= return_data.size
                            mem[_36 + _1156 + _2239 + ceil32(return_data.size) + 96 len ceil32(_4602)] = mem[_36 + _1156 + _2239 + _4557 + 96 len ceil32(_4602)]
                            if ceil32(_4602) > _4602:
                                mem[_36 + _1156 + _2239 + ceil32(return_data.size) + _4602 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4602
                            mem[mem[64] + 96 len ceil32(_4602)] = mem[_36 + _1156 + _2239 + ceil32(return_data.size) + 96 len ceil32(_4602)]
                            if ceil32(_4602) > _4602:
                                mem[mem[64] + _4602 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4602, data=mem[mem[64] + 96 len ceil32(_4602)]), arg1, numVaults[address(arg1)]);
                        else:
                            stor9[address(arg1)] = 1
                            mem[0] = numTokens
                            mem[32] = 7
                            stor7[stor8] = arg1
                            if numTokens > -2:
                                revert with 0, 17
                            numTokens++
                            mem[_36 + _1156 + _2239 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1156 + _2239 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1156 + _2239 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4631 = mem[_36 + _1156 + _2239 + 64]
                            require mem[_36 + _1156 + _2239 + 64] <= test266151307()
                            require _36 + _1156 + _2239 + return_data.size + 64 > _36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 95
                            _4651 = mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64]
                            if mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64])) + 1 < 0 or _36 + _1156 + _2239 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1156 + _2239 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64])) + 65
                            mem[_36 + _1156 + _2239 + ceil32(return_data.size) + 64] = _4651
                            require _4631 + _4651 + 32 <= return_data.size
                            mem[_36 + _1156 + _2239 + ceil32(return_data.size) + 96 len ceil32(_4651)] = mem[_36 + _1156 + _2239 + _4631 + 96 len ceil32(_4651)]
                            if ceil32(_4651) > _4651:
                                mem[_36 + _1156 + _2239 + ceil32(return_data.size) + _4651 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4651
                            mem[mem[64] + 96 len ceil32(_4651)] = mem[_36 + _1156 + _2239 + ceil32(return_data.size) + 96 len ceil32(_4651)]
                            if ceil32(_4651) > _4651:
                                mem[mem[64] + _4651 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4651, data=mem[mem[64] + 96 len ceil32(_4651)]), arg1, numVaults[address(arg1)]);
                    else:
                        if stor9[address(arg1)]:
                            mem[_36 + _1156 + _2239 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1156 + _2239 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1156 + _2239 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4581 = mem[_36 + _1156 + _2239 + 64]
                            require mem[_36 + _1156 + _2239 + 64] <= test266151307()
                            require _36 + _1156 + _2239 + return_data.size + 64 > _36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 95
                            _4618 = mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64]
                            if mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64])) + 1 < 0 or _36 + _1156 + _2239 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1156 + _2239 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64])) + 65
                            mem[_36 + _1156 + _2239 + ceil32(return_data.size) + 64] = _4618
                            require _4581 + _4618 + 32 <= return_data.size
                            mem[_36 + _1156 + _2239 + ceil32(return_data.size) + 96 len ceil32(_4618)] = mem[_36 + _1156 + _2239 + _4581 + 96 len ceil32(_4618)]
                            if ceil32(_4618) > _4618:
                                mem[_36 + _1156 + _2239 + ceil32(return_data.size) + _4618 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4618
                            mem[mem[64] + 96 len ceil32(_4618)] = mem[_36 + _1156 + _2239 + ceil32(return_data.size) + 96 len ceil32(_4618)]
                            if ceil32(_4618) > _4618:
                                mem[mem[64] + _4618 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4618, data=mem[mem[64] + 96 len ceil32(_4618)]), arg1, numVaults[address(arg1)]);
                        else:
                            stor9[address(arg1)] = 1
                            mem[0] = numTokens
                            mem[32] = 7
                            stor7[stor8] = arg1
                            if numTokens > -2:
                                revert with 0, 17
                            numTokens++
                            mem[_36 + _1156 + _2239 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1156 + _2239 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1156 + _2239 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4639 = mem[_36 + _1156 + _2239 + 64]
                            require mem[_36 + _1156 + _2239 + 64] <= test266151307()
                            require _36 + _1156 + _2239 + return_data.size + 64 > _36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 95
                            _4667 = mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64]
                            if mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64])) + 1 < 0 or _36 + _1156 + _2239 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1156 + _2239 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1156 + _2239 + mem[_36 + _1156 + _2239 + 64] + 64])) + 65
                            mem[_36 + _1156 + _2239 + ceil32(return_data.size) + 64] = _4667
                            require _4639 + _4667 + 32 <= return_data.size
                            mem[_36 + _1156 + _2239 + ceil32(return_data.size) + 96 len ceil32(_4667)] = mem[_36 + _1156 + _2239 + _4639 + 96 len ceil32(_4667)]
                            if ceil32(_4667) > _4667:
                                mem[_36 + _1156 + _2239 + ceil32(return_data.size) + _4667 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4667
                            mem[mem[64] + 96 len ceil32(_4667)] = mem[_36 + _1156 + _2239 + ceil32(return_data.size) + 96 len ceil32(_4667)]
                            if ceil32(_4667) > _4667:
                                mem[mem[64] + _4667 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4667, data=mem[mem[64] + 96 len ceil32(_4667)]), arg1, numVaults[address(arg1)]);
        else:
            mem[ceil32(return_data.size) + _36 + 128] = 0
            mem[mem[64]] = 0x2582941000000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(create.new_address))
            staticcall address(create.new_address).0x25829410 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1149 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1153 = mem[_1149]
            require mem[_1149] <= test266151307()
            require _1149 + return_data.size > _1149 + mem[_1149] + 31
            _1157 = mem[_1149 + mem[_1149]]
            if mem[_1149 + mem[_1149]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_1149 + mem[_1149]])) + 1 < 0 or _1149 + ceil32(return_data.size) + ceil32(ceil32(mem[_1149 + mem[_1149]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _1149 + ceil32(return_data.size) + ceil32(ceil32(mem[_1149 + mem[_1149]])) + 1
            mem[_1149 + ceil32(return_data.size)] = _1157
            require _1153 + _1157 + 32 <= return_data.size
            mem[_1149 + ceil32(return_data.size) + 32 len ceil32(_1157)] = mem[_1149 + _1153 + 32 len ceil32(_1157)]
            if ceil32(_1157) <= _1157:
                _2233 = mem[64]
                mem[mem[64] + 32 len ceil32(_1157)] = mem[_1149 + ceil32(return_data.size) + 32 len ceil32(_1157)]
                if ceil32(_1157) <= _1157:
                    _3300 = mem[64]
                    mem[mem[64]] = _1157
                    mem[64] = _1157 + mem[64] + 32
                    _3302 = sha3(mem[_3300 + 32 len mem[_3300]])
                    mem[_1157 + _2233 + 64 len ceil32(_36)] = mem[ceil32(return_data.size) + 128 len ceil32(_36)]
                    mem[_1157 + _2233 + 32] = _36
                    mem[64] = _36 + _1157 + _2233 + 64
                    if sha3(mem[_1157 + _2233 + 64 len _36]) == _3302:
                        revert with 0, 'Registry: new vault should have different api version'
                    latestVault[address(arg1)][stor5[address(arg1)]] = address(create.new_address)
                    if 1 > !numVaults[address(arg1)]:
                        revert with 0, 17
                    mem[0] = arg1
                    numVaults[address(arg1)]++
                    mem[32] = 9
                    if ceil32(_36) <= _36:
                        if stor9[address(arg1)]:
                            mem[_36 + _1157 + _2233 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1157 + _2233 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1157 + _2233 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4560 = mem[_36 + _1157 + _2233 + 64]
                            require mem[_36 + _1157 + _2233 + 64] <= test266151307()
                            require _36 + _1157 + _2233 + return_data.size + 64 > _36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 95
                            _4604 = mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64]
                            if mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64])) + 1 < 0 or _36 + _1157 + _2233 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1157 + _2233 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64])) + 65
                            mem[_36 + _1157 + _2233 + ceil32(return_data.size) + 64] = _4604
                            require _4560 + _4604 + 32 <= return_data.size
                            mem[_36 + _1157 + _2233 + ceil32(return_data.size) + 96 len ceil32(_4604)] = mem[_36 + _1157 + _2233 + _4560 + 96 len ceil32(_4604)]
                            if ceil32(_4604) > _4604:
                                mem[_36 + _1157 + _2233 + ceil32(return_data.size) + _4604 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4604
                            mem[mem[64] + 96 len ceil32(_4604)] = mem[_36 + _1157 + _2233 + ceil32(return_data.size) + 96 len ceil32(_4604)]
                            if ceil32(_4604) > _4604:
                                mem[mem[64] + _4604 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4604, data=mem[mem[64] + 96 len ceil32(_4604)]), arg1, numVaults[address(arg1)]);
                        else:
                            stor9[address(arg1)] = 1
                            mem[0] = numTokens
                            mem[32] = 7
                            stor7[stor8] = arg1
                            if numTokens > -2:
                                revert with 0, 17
                            numTokens++
                            mem[_36 + _1157 + _2233 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1157 + _2233 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1157 + _2233 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4632 = mem[_36 + _1157 + _2233 + 64]
                            require mem[_36 + _1157 + _2233 + 64] <= test266151307()
                            require _36 + _1157 + _2233 + return_data.size + 64 > _36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 95
                            _4653 = mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64]
                            if mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64])) + 1 < 0 or _36 + _1157 + _2233 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1157 + _2233 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64])) + 65
                            mem[_36 + _1157 + _2233 + ceil32(return_data.size) + 64] = _4653
                            require _4632 + _4653 + 32 <= return_data.size
                            mem[_36 + _1157 + _2233 + ceil32(return_data.size) + 96 len ceil32(_4653)] = mem[_36 + _1157 + _2233 + _4632 + 96 len ceil32(_4653)]
                            if ceil32(_4653) > _4653:
                                mem[_36 + _1157 + _2233 + ceil32(return_data.size) + _4653 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4653
                            mem[mem[64] + 96 len ceil32(_4653)] = mem[_36 + _1157 + _2233 + ceil32(return_data.size) + 96 len ceil32(_4653)]
                            if ceil32(_4653) > _4653:
                                mem[mem[64] + _4653 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4653, data=mem[mem[64] + 96 len ceil32(_4653)]), arg1, numVaults[address(arg1)]);
                    else:
                        if stor9[address(arg1)]:
                            mem[_36 + _1157 + _2233 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1157 + _2233 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1157 + _2233 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4584 = mem[_36 + _1157 + _2233 + 64]
                            require mem[_36 + _1157 + _2233 + 64] <= test266151307()
                            require _36 + _1157 + _2233 + return_data.size + 64 > _36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 95
                            _4620 = mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64]
                            if mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64])) + 1 < 0 or _36 + _1157 + _2233 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1157 + _2233 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64])) + 65
                            mem[_36 + _1157 + _2233 + ceil32(return_data.size) + 64] = _4620
                            require _4584 + _4620 + 32 <= return_data.size
                            mem[_36 + _1157 + _2233 + ceil32(return_data.size) + 96 len ceil32(_4620)] = mem[_36 + _1157 + _2233 + _4584 + 96 len ceil32(_4620)]
                            if ceil32(_4620) > _4620:
                                mem[_36 + _1157 + _2233 + ceil32(return_data.size) + _4620 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4620
                            mem[mem[64] + 96 len ceil32(_4620)] = mem[_36 + _1157 + _2233 + ceil32(return_data.size) + 96 len ceil32(_4620)]
                            if ceil32(_4620) > _4620:
                                mem[mem[64] + _4620 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4620, data=mem[mem[64] + 96 len ceil32(_4620)]), arg1, numVaults[address(arg1)]);
                        else:
                            stor9[address(arg1)] = 1
                            mem[0] = numTokens
                            mem[32] = 7
                            stor7[stor8] = arg1
                            if numTokens > -2:
                                revert with 0, 17
                            numTokens++
                            mem[_36 + _1157 + _2233 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1157 + _2233 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1157 + _2233 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4640 = mem[_36 + _1157 + _2233 + 64]
                            require mem[_36 + _1157 + _2233 + 64] <= test266151307()
                            require _36 + _1157 + _2233 + return_data.size + 64 > _36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 95
                            _4669 = mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64]
                            if mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64])) + 1 < 0 or _36 + _1157 + _2233 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1157 + _2233 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64])) + 65
                            mem[_36 + _1157 + _2233 + ceil32(return_data.size) + 64] = _4669
                            require _4640 + _4669 + 32 <= return_data.size
                            mem[_36 + _1157 + _2233 + ceil32(return_data.size) + 96 len ceil32(_4669)] = mem[_36 + _1157 + _2233 + _4640 + 96 len ceil32(_4669)]
                            if ceil32(_4669) > _4669:
                                mem[_36 + _1157 + _2233 + ceil32(return_data.size) + _4669 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4669
                            mem[mem[64] + 96 len ceil32(_4669)] = mem[_36 + _1157 + _2233 + ceil32(return_data.size) + 96 len ceil32(_4669)]
                            if ceil32(_4669) > _4669:
                                mem[mem[64] + _4669 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4669, data=mem[mem[64] + 96 len ceil32(_4669)]), arg1, numVaults[address(arg1)]);
                else:
                    mem[mem[64] + _1157 + 32] = 0
                    _3319 = mem[64]
                    mem[mem[64]] = _1157
                    mem[64] = _1157 + mem[64] + 32
                    _3321 = sha3(mem[_3319 + 32 len mem[_3319]])
                    mem[_1157 + _2233 + 64 len ceil32(_36)] = mem[ceil32(return_data.size) + 128 len ceil32(_36)]
                    mem[_1157 + _2233 + 32] = _36
                    mem[64] = _36 + _1157 + _2233 + 64
                    if sha3(mem[_1157 + _2233 + 64 len _36]) == _3321:
                        revert with 0, 'Registry: new vault should have different api version'
                    latestVault[address(arg1)][stor5[address(arg1)]] = address(create.new_address)
                    if 1 > !numVaults[address(arg1)]:
                        revert with 0, 17
                    mem[0] = arg1
                    numVaults[address(arg1)]++
                    mem[32] = 9
                    if ceil32(_36) <= _36:
                        if stor9[address(arg1)]:
                            mem[_36 + _1157 + _2233 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1157 + _2233 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1157 + _2233 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4563 = mem[_36 + _1157 + _2233 + 64]
                            require mem[_36 + _1157 + _2233 + 64] <= test266151307()
                            require _36 + _1157 + _2233 + return_data.size + 64 > _36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 95
                            _4606 = mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64]
                            if mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64])) + 1 < 0 or _36 + _1157 + _2233 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1157 + _2233 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64])) + 65
                            mem[_36 + _1157 + _2233 + ceil32(return_data.size) + 64] = _4606
                            require _4563 + _4606 + 32 <= return_data.size
                            mem[_36 + _1157 + _2233 + ceil32(return_data.size) + 96 len ceil32(_4606)] = mem[_36 + _1157 + _2233 + _4563 + 96 len ceil32(_4606)]
                            if ceil32(_4606) > _4606:
                                mem[_36 + _1157 + _2233 + ceil32(return_data.size) + _4606 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4606
                            mem[mem[64] + 96 len ceil32(_4606)] = mem[_36 + _1157 + _2233 + ceil32(return_data.size) + 96 len ceil32(_4606)]
                            if ceil32(_4606) > _4606:
                                mem[mem[64] + _4606 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4606, data=mem[mem[64] + 96 len ceil32(_4606)]), arg1, numVaults[address(arg1)]);
                        else:
                            stor9[address(arg1)] = 1
                            mem[0] = numTokens
                            mem[32] = 7
                            stor7[stor8] = arg1
                            if numTokens > -2:
                                revert with 0, 17
                            numTokens++
                            mem[_36 + _1157 + _2233 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1157 + _2233 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1157 + _2233 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4633 = mem[_36 + _1157 + _2233 + 64]
                            require mem[_36 + _1157 + _2233 + 64] <= test266151307()
                            require _36 + _1157 + _2233 + return_data.size + 64 > _36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 95
                            _4655 = mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64]
                            if mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64])) + 1 < 0 or _36 + _1157 + _2233 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1157 + _2233 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64])) + 65
                            mem[_36 + _1157 + _2233 + ceil32(return_data.size) + 64] = _4655
                            require _4633 + _4655 + 32 <= return_data.size
                            mem[_36 + _1157 + _2233 + ceil32(return_data.size) + 96 len ceil32(_4655)] = mem[_36 + _1157 + _2233 + _4633 + 96 len ceil32(_4655)]
                            if ceil32(_4655) > _4655:
                                mem[_36 + _1157 + _2233 + ceil32(return_data.size) + _4655 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4655
                            mem[mem[64] + 96 len ceil32(_4655)] = mem[_36 + _1157 + _2233 + ceil32(return_data.size) + 96 len ceil32(_4655)]
                            if ceil32(_4655) > _4655:
                                mem[mem[64] + _4655 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4655, data=mem[mem[64] + 96 len ceil32(_4655)]), arg1, numVaults[address(arg1)]);
                    else:
                        if stor9[address(arg1)]:
                            mem[_36 + _1157 + _2233 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1157 + _2233 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1157 + _2233 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4587 = mem[_36 + _1157 + _2233 + 64]
                            require mem[_36 + _1157 + _2233 + 64] <= test266151307()
                            require _36 + _1157 + _2233 + return_data.size + 64 > _36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 95
                            _4622 = mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64]
                            if mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64])) + 1 < 0 or _36 + _1157 + _2233 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1157 + _2233 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64])) + 65
                            mem[_36 + _1157 + _2233 + ceil32(return_data.size) + 64] = _4622
                            require _4587 + _4622 + 32 <= return_data.size
                            mem[_36 + _1157 + _2233 + ceil32(return_data.size) + 96 len ceil32(_4622)] = mem[_36 + _1157 + _2233 + _4587 + 96 len ceil32(_4622)]
                            if ceil32(_4622) > _4622:
                                mem[_36 + _1157 + _2233 + ceil32(return_data.size) + _4622 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4622
                            mem[mem[64] + 96 len ceil32(_4622)] = mem[_36 + _1157 + _2233 + ceil32(return_data.size) + 96 len ceil32(_4622)]
                            if ceil32(_4622) > _4622:
                                mem[mem[64] + _4622 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4622, data=mem[mem[64] + 96 len ceil32(_4622)]), arg1, numVaults[address(arg1)]);
                        else:
                            stor9[address(arg1)] = 1
                            mem[0] = numTokens
                            mem[32] = 7
                            stor7[stor8] = arg1
                            if numTokens > -2:
                                revert with 0, 17
                            numTokens++
                            mem[_36 + _1157 + _2233 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1157 + _2233 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1157 + _2233 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4641 = mem[_36 + _1157 + _2233 + 64]
                            require mem[_36 + _1157 + _2233 + 64] <= test266151307()
                            require _36 + _1157 + _2233 + return_data.size + 64 > _36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 95
                            _4671 = mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64]
                            if mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64])) + 1 < 0 or _36 + _1157 + _2233 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1157 + _2233 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2233 + mem[_36 + _1157 + _2233 + 64] + 64])) + 65
                            mem[_36 + _1157 + _2233 + ceil32(return_data.size) + 64] = _4671
                            require _4641 + _4671 + 32 <= return_data.size
                            mem[_36 + _1157 + _2233 + ceil32(return_data.size) + 96 len ceil32(_4671)] = mem[_36 + _1157 + _2233 + _4641 + 96 len ceil32(_4671)]
                            if ceil32(_4671) > _4671:
                                mem[_36 + _1157 + _2233 + ceil32(return_data.size) + _4671 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4671
                            mem[mem[64] + 96 len ceil32(_4671)] = mem[_36 + _1157 + _2233 + ceil32(return_data.size) + 96 len ceil32(_4671)]
                            if ceil32(_4671) > _4671:
                                mem[mem[64] + _4671 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4671, data=mem[mem[64] + 96 len ceil32(_4671)]), arg1, numVaults[address(arg1)]);
            else:
                mem[_1149 + ceil32(return_data.size) + _1157 + 32] = 0
                _2241 = mem[64]
                mem[mem[64] + 32 len ceil32(_1157)] = mem[_1149 + ceil32(return_data.size) + 32 len ceil32(_1157)]
                if ceil32(_1157) <= _1157:
                    _3304 = mem[64]
                    mem[mem[64]] = _1157
                    mem[64] = _1157 + mem[64] + 32
                    _3306 = sha3(mem[_3304 + 32 len mem[_3304]])
                    mem[_1157 + _2241 + 64 len ceil32(_36)] = mem[ceil32(return_data.size) + 128 len ceil32(_36)]
                    mem[_1157 + _2241 + 32] = _36
                    mem[64] = _36 + _1157 + _2241 + 64
                    if sha3(mem[_1157 + _2241 + 64 len _36]) == _3306:
                        revert with 0, 'Registry: new vault should have different api version'
                    latestVault[address(arg1)][stor5[address(arg1)]] = address(create.new_address)
                    if 1 > !numVaults[address(arg1)]:
                        revert with 0, 17
                    mem[0] = arg1
                    numVaults[address(arg1)]++
                    mem[32] = 9
                    if ceil32(_36) <= _36:
                        if stor9[address(arg1)]:
                            mem[_36 + _1157 + _2241 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1157 + _2241 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1157 + _2241 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4566 = mem[_36 + _1157 + _2241 + 64]
                            require mem[_36 + _1157 + _2241 + 64] <= test266151307()
                            require _36 + _1157 + _2241 + return_data.size + 64 > _36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 95
                            _4608 = mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64]
                            if mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64])) + 1 < 0 or _36 + _1157 + _2241 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1157 + _2241 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64])) + 65
                            mem[_36 + _1157 + _2241 + ceil32(return_data.size) + 64] = _4608
                            require _4566 + _4608 + 32 <= return_data.size
                            mem[_36 + _1157 + _2241 + ceil32(return_data.size) + 96 len ceil32(_4608)] = mem[_36 + _1157 + _2241 + _4566 + 96 len ceil32(_4608)]
                            if ceil32(_4608) > _4608:
                                mem[_36 + _1157 + _2241 + ceil32(return_data.size) + _4608 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4608
                            mem[mem[64] + 96 len ceil32(_4608)] = mem[_36 + _1157 + _2241 + ceil32(return_data.size) + 96 len ceil32(_4608)]
                            if ceil32(_4608) > _4608:
                                mem[mem[64] + _4608 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4608, data=mem[mem[64] + 96 len ceil32(_4608)]), arg1, numVaults[address(arg1)]);
                        else:
                            stor9[address(arg1)] = 1
                            mem[0] = numTokens
                            mem[32] = 7
                            stor7[stor8] = arg1
                            if numTokens > -2:
                                revert with 0, 17
                            numTokens++
                            mem[_36 + _1157 + _2241 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1157 + _2241 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1157 + _2241 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4634 = mem[_36 + _1157 + _2241 + 64]
                            require mem[_36 + _1157 + _2241 + 64] <= test266151307()
                            require _36 + _1157 + _2241 + return_data.size + 64 > _36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 95
                            _4657 = mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64]
                            if mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64])) + 1 < 0 or _36 + _1157 + _2241 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1157 + _2241 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64])) + 65
                            mem[_36 + _1157 + _2241 + ceil32(return_data.size) + 64] = _4657
                            require _4634 + _4657 + 32 <= return_data.size
                            mem[_36 + _1157 + _2241 + ceil32(return_data.size) + 96 len ceil32(_4657)] = mem[_36 + _1157 + _2241 + _4634 + 96 len ceil32(_4657)]
                            if ceil32(_4657) > _4657:
                                mem[_36 + _1157 + _2241 + ceil32(return_data.size) + _4657 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4657
                            mem[mem[64] + 96 len ceil32(_4657)] = mem[_36 + _1157 + _2241 + ceil32(return_data.size) + 96 len ceil32(_4657)]
                            if ceil32(_4657) > _4657:
                                mem[mem[64] + _4657 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4657, data=mem[mem[64] + 96 len ceil32(_4657)]), arg1, numVaults[address(arg1)]);
                    else:
                        if stor9[address(arg1)]:
                            mem[_36 + _1157 + _2241 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1157 + _2241 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1157 + _2241 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4590 = mem[_36 + _1157 + _2241 + 64]
                            require mem[_36 + _1157 + _2241 + 64] <= test266151307()
                            require _36 + _1157 + _2241 + return_data.size + 64 > _36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 95
                            _4624 = mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64]
                            if mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64])) + 1 < 0 or _36 + _1157 + _2241 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1157 + _2241 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64])) + 65
                            mem[_36 + _1157 + _2241 + ceil32(return_data.size) + 64] = _4624
                            require _4590 + _4624 + 32 <= return_data.size
                            mem[_36 + _1157 + _2241 + ceil32(return_data.size) + 96 len ceil32(_4624)] = mem[_36 + _1157 + _2241 + _4590 + 96 len ceil32(_4624)]
                            if ceil32(_4624) > _4624:
                                mem[_36 + _1157 + _2241 + ceil32(return_data.size) + _4624 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4624
                            mem[mem[64] + 96 len ceil32(_4624)] = mem[_36 + _1157 + _2241 + ceil32(return_data.size) + 96 len ceil32(_4624)]
                            if ceil32(_4624) > _4624:
                                mem[mem[64] + _4624 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4624, data=mem[mem[64] + 96 len ceil32(_4624)]), arg1, numVaults[address(arg1)]);
                        else:
                            stor9[address(arg1)] = 1
                            mem[0] = numTokens
                            mem[32] = 7
                            stor7[stor8] = arg1
                            if numTokens > -2:
                                revert with 0, 17
                            numTokens++
                            mem[_36 + _1157 + _2241 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1157 + _2241 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1157 + _2241 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4642 = mem[_36 + _1157 + _2241 + 64]
                            require mem[_36 + _1157 + _2241 + 64] <= test266151307()
                            require _36 + _1157 + _2241 + return_data.size + 64 > _36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 95
                            _4673 = mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64]
                            if mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64])) + 1 < 0 or _36 + _1157 + _2241 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1157 + _2241 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64])) + 65
                            mem[_36 + _1157 + _2241 + ceil32(return_data.size) + 64] = _4673
                            require _4642 + _4673 + 32 <= return_data.size
                            mem[_36 + _1157 + _2241 + ceil32(return_data.size) + 96 len ceil32(_4673)] = mem[_36 + _1157 + _2241 + _4642 + 96 len ceil32(_4673)]
                            if ceil32(_4673) > _4673:
                                mem[_36 + _1157 + _2241 + ceil32(return_data.size) + _4673 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4673
                            mem[mem[64] + 96 len ceil32(_4673)] = mem[_36 + _1157 + _2241 + ceil32(return_data.size) + 96 len ceil32(_4673)]
                            if ceil32(_4673) > _4673:
                                mem[mem[64] + _4673 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4673, data=mem[mem[64] + 96 len ceil32(_4673)]), arg1, numVaults[address(arg1)]);
                else:
                    mem[mem[64] + _1157 + 32] = 0
                    _3324 = mem[64]
                    mem[mem[64]] = _1157
                    mem[64] = _1157 + mem[64] + 32
                    _3326 = sha3(mem[_3324 + 32 len mem[_3324]])
                    mem[_1157 + _2241 + 64 len ceil32(_36)] = mem[ceil32(return_data.size) + 128 len ceil32(_36)]
                    mem[_1157 + _2241 + 32] = _36
                    mem[64] = _36 + _1157 + _2241 + 64
                    if sha3(mem[_1157 + _2241 + 64 len _36]) == _3326:
                        revert with 0, 'Registry: new vault should have different api version'
                    latestVault[address(arg1)][stor5[address(arg1)]] = address(create.new_address)
                    if 1 > !numVaults[address(arg1)]:
                        revert with 0, 17
                    mem[0] = arg1
                    numVaults[address(arg1)]++
                    mem[32] = 9
                    if ceil32(_36) <= _36:
                        if stor9[address(arg1)]:
                            mem[_36 + _1157 + _2241 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1157 + _2241 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1157 + _2241 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4569 = mem[_36 + _1157 + _2241 + 64]
                            require mem[_36 + _1157 + _2241 + 64] <= test266151307()
                            require _36 + _1157 + _2241 + return_data.size + 64 > _36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 95
                            _4610 = mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64]
                            if mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64])) + 1 < 0 or _36 + _1157 + _2241 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1157 + _2241 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64])) + 65
                            mem[_36 + _1157 + _2241 + ceil32(return_data.size) + 64] = _4610
                            require _4569 + _4610 + 32 <= return_data.size
                            mem[_36 + _1157 + _2241 + ceil32(return_data.size) + 96 len ceil32(_4610)] = mem[_36 + _1157 + _2241 + _4569 + 96 len ceil32(_4610)]
                            if ceil32(_4610) > _4610:
                                mem[_36 + _1157 + _2241 + ceil32(return_data.size) + _4610 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4610
                            mem[mem[64] + 96 len ceil32(_4610)] = mem[_36 + _1157 + _2241 + ceil32(return_data.size) + 96 len ceil32(_4610)]
                            if ceil32(_4610) > _4610:
                                mem[mem[64] + _4610 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4610, data=mem[mem[64] + 96 len ceil32(_4610)]), arg1, numVaults[address(arg1)]);
                        else:
                            stor9[address(arg1)] = 1
                            mem[0] = numTokens
                            mem[32] = 7
                            stor7[stor8] = arg1
                            if numTokens > -2:
                                revert with 0, 17
                            numTokens++
                            mem[_36 + _1157 + _2241 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1157 + _2241 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1157 + _2241 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4635 = mem[_36 + _1157 + _2241 + 64]
                            require mem[_36 + _1157 + _2241 + 64] <= test266151307()
                            require _36 + _1157 + _2241 + return_data.size + 64 > _36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 95
                            _4659 = mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64]
                            if mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64])) + 1 < 0 or _36 + _1157 + _2241 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1157 + _2241 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64])) + 65
                            mem[_36 + _1157 + _2241 + ceil32(return_data.size) + 64] = _4659
                            require _4635 + _4659 + 32 <= return_data.size
                            mem[_36 + _1157 + _2241 + ceil32(return_data.size) + 96 len ceil32(_4659)] = mem[_36 + _1157 + _2241 + _4635 + 96 len ceil32(_4659)]
                            if ceil32(_4659) > _4659:
                                mem[_36 + _1157 + _2241 + ceil32(return_data.size) + _4659 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4659
                            mem[mem[64] + 96 len ceil32(_4659)] = mem[_36 + _1157 + _2241 + ceil32(return_data.size) + 96 len ceil32(_4659)]
                            if ceil32(_4659) > _4659:
                                mem[mem[64] + _4659 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4659, data=mem[mem[64] + 96 len ceil32(_4659)]), arg1, numVaults[address(arg1)]);
                    else:
                        if stor9[address(arg1)]:
                            mem[_36 + _1157 + _2241 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1157 + _2241 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1157 + _2241 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4593 = mem[_36 + _1157 + _2241 + 64]
                            require mem[_36 + _1157 + _2241 + 64] <= test266151307()
                            require _36 + _1157 + _2241 + return_data.size + 64 > _36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 95
                            _4626 = mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64]
                            if mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64])) + 1 < 0 or _36 + _1157 + _2241 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1157 + _2241 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64])) + 65
                            mem[_36 + _1157 + _2241 + ceil32(return_data.size) + 64] = _4626
                            require _4593 + _4626 + 32 <= return_data.size
                            mem[_36 + _1157 + _2241 + ceil32(return_data.size) + 96 len ceil32(_4626)] = mem[_36 + _1157 + _2241 + _4593 + 96 len ceil32(_4626)]
                            if ceil32(_4626) > _4626:
                                mem[_36 + _1157 + _2241 + ceil32(return_data.size) + _4626 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4626
                            mem[mem[64] + 96 len ceil32(_4626)] = mem[_36 + _1157 + _2241 + ceil32(return_data.size) + 96 len ceil32(_4626)]
                            if ceil32(_4626) > _4626:
                                mem[mem[64] + _4626 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4626, data=mem[mem[64] + 96 len ceil32(_4626)]), arg1, numVaults[address(arg1)]);
                        else:
                            stor9[address(arg1)] = 1
                            mem[0] = numTokens
                            mem[32] = 7
                            stor7[stor8] = arg1
                            if numTokens > -2:
                                revert with 0, 17
                            numTokens++
                            mem[_36 + _1157 + _2241 + 64] = 0x2582941000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(create.new_address))
                            staticcall address(create.new_address).0x25829410 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_36 + _1157 + _2241 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _36 + _1157 + _2241 + ceil32(return_data.size) + 64
                            require return_data.size >= 32
                            _4643 = mem[_36 + _1157 + _2241 + 64]
                            require mem[_36 + _1157 + _2241 + 64] <= test266151307()
                            require _36 + _1157 + _2241 + return_data.size + 64 > _36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 95
                            _4675 = mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64]
                            if mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64])) + 1 < 0 or _36 + _1157 + _2241 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64])) + 65 > test266151307():
                                revert with 0, 65
                            mem[64] = _36 + _1157 + _2241 + ceil32(return_data.size) + ceil32(ceil32(mem[_36 + _1157 + _2241 + mem[_36 + _1157 + _2241 + 64] + 64])) + 65
                            mem[_36 + _1157 + _2241 + ceil32(return_data.size) + 64] = _4675
                            require _4643 + _4675 + 32 <= return_data.size
                            mem[_36 + _1157 + _2241 + ceil32(return_data.size) + 96 len ceil32(_4675)] = mem[_36 + _1157 + _2241 + _4643 + 96 len ceil32(_4675)]
                            if ceil32(_4675) > _4675:
                                mem[_36 + _1157 + _2241 + ceil32(return_data.size) + _4675 + 96] = 0
                            mem[mem[64]] = address(create.new_address)
                            mem[mem[64] + 32] = 64
                            mem[mem[64] + 64] = _4675
                            mem[mem[64] + 96 len ceil32(_4675)] = mem[_36 + _1157 + _2241 + ceil32(return_data.size) + 96 len ceil32(_4675)]
                            if ceil32(_4675) > _4675:
                                mem[mem[64] + _4675 + 96] = 0
                            emit NewVault(address(create.new_address), Array(len=_4675, data=mem[mem[64] + 96 len ceil32(_4675)]), arg1, numVaults[address(arg1)]);
    return address(create.new_address)
}



}
