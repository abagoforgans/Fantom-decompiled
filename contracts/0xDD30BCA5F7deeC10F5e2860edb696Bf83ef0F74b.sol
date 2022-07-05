contract main {




// =====================  Runtime code  =====================


address storeAddress;
array of struct vaults;
mapping of struct stor2;
mapping of uint8 stor3;
mapping of uint8 stor4;

function isVaultRegistered(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function keepers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function vaults(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < vaults.length
    return address(vaults[arg1].field_0)
}

function store() payable {
    return storeAddress
}

function _fallback() payable {
    revert
}

function governance() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function addKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    stor4[address(arg1)] = 1
}

function removeKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    stor4[address(arg1)] = 0
}

function setStorage(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    if not arg1:
        revert with 0, 'Governable: New storage shouldn't be empty'
    storeAddress = arg1
}

function allVaults() payable {
    mem[64] = (32 * vaults.length) + 128
    mem[96] = vaults.length
    if not vaults.length:
        mem[(32 * vaults.length) + 128] = 32
        mem[(32 * vaults.length) + 160] = vaults.length
        idx = 0
        s = (32 * vaults.length) + 192
        t = 128
        while idx < vaults.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * vaults.length) + 128
           len (96 * vaults.length) + 64
    mem[128] = address(vaults.field_0)
    idx = 128
    s = 0
    while (32 * vaults.length) + 96 > idx:
        mem[idx + 32] = address(vaults[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * vaults.length) + 128] = 32
    mem[(32 * vaults.length) + 160] = vaults.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < vaults.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * vaults.length) + -mem[64] + 192
}

function sub_7a0c2b70(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if not stor4[msg.sender]:
            revert with 0, 'VaultRegistry: Caller not governance or keeper'
    if not stor3[address(arg1)]:
        revert with 0, 'VaultRegistry: Vault is not registered'
    if bool(stor2[address(arg1)].field_0):
        if bool(stor2[address(arg1)].field_0) == uint255(stor2[address(arg1)].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor2[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor2[address(arg1)].field_0 = 0
            idx = 0
            while (uint255(stor2[address(arg1)].field_0) * 0.5) + 31 / 32 > idx:
                stor2[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor2[address(arg1)].field_0) == stor2[address(arg1)].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            stor2[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor2[address(arg1)].field_0 = 0
            idx = 0
            while stor2[address(arg1)].field_1 % 128 + 31 / 32 > idx:
                stor2[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    emit 0x156966d1: Array(len=arg2.length, data=arg2[all]), address(arg1)
}

function sub_0e1c2e61(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if not stor4[msg.sender]:
            revert with 0, 'VaultRegistry: Caller not governance or keeper'
    if stor3[address(arg1)]:
        revert with 0, 'VaultRegistry: Vault already registered'
    vaults.length++
    address(vaults[vaults.length].field_0) = address(arg1)
    if bool(stor2[address(arg1)].field_0):
        if bool(stor2[address(arg1)].field_0) == uint255(stor2[address(arg1)].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor2[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor2[address(arg1)].field_0 = 0
            idx = 0
            while (uint255(stor2[address(arg1)].field_0) * 0.5) + 31 / 32 > idx:
                stor2[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor2[address(arg1)].field_0) == stor2[address(arg1)].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            stor2[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor2[address(arg1)].field_0 = 0
            idx = 0
            while stor2[address(arg1)].field_1 % 128 + 31 / 32 > idx:
                stor2[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor3[address(arg1)] = 1
    emit 0x156966d1: Array(len=arg2.length, data=arg2[all]), address(arg1)
}

function vaultName(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor2[arg1].field_0):
        if bool(stor2[arg1].field_0) == uint255(stor2[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor2[arg1].field_0):
            if bool(stor2[arg1].field_0) == uint255(stor2[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2[arg1].field_0):
                if 31 < uint255(stor2[arg1].field_0) * 0.5:
                    mem[128] = stor2[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor2[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2[arg1].field_0), data=mem[128 len ceil32(uint255(stor2[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor2[arg1].field_8)
        else:
            if bool(stor2[arg1].field_0) == stor2[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor2[arg1].field_1 % 128:
                if 31 < stor2[arg1].field_1 % 128:
                    mem[128] = stor2[arg1].field_0
                    idx = 128
                    s = 0
                    while stor2[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor2[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2[arg1].field_0), data=mem[128 len ceil32(uint255(stor2[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor2[arg1].field_8)
        mem[ceil32(uint255(stor2[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor2[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor2[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor2[arg1].field_0) * 0.5) > uint255(stor2[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor2[arg1].field_0) * 0.5) + (uint255(stor2[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2[arg1].field_0), data=mem[128 len ceil32(uint255(stor2[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor2[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor2[arg1].field_0) * 0.5)]), 
    if bool(stor2[arg1].field_0) == stor2[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor2[arg1].field_0):
        if bool(stor2[arg1].field_0) == uint255(stor2[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2[arg1].field_0):
            if 31 < uint255(stor2[arg1].field_0) * 0.5:
                mem[128] = stor2[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor2[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2[arg1].field_0 % 128, data=mem[128 len ceil32(stor2[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2[arg1].field_8)
    else:
        if bool(stor2[arg1].field_0) == stor2[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor2[arg1].field_1 % 128:
            if 31 < stor2[arg1].field_1 % 128:
                mem[128] = stor2[arg1].field_0
                idx = 128
                s = 0
                while stor2[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor2[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2[arg1].field_0 % 128, data=mem[128 len ceil32(stor2[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2[arg1].field_8)
    mem[ceil32(stor2[arg1].field_1 % 128) + 192 len ceil32(stor2[arg1].field_1 % 128)] = mem[128 len ceil32(stor2[arg1].field_1 % 128)]
    if ceil32(stor2[arg1].field_1 % 128) > stor2[arg1].field_1 % 128:
        mem[ceil32(stor2[arg1].field_1 % 128) + stor2[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor2[arg1].field_0 % 128, data=mem[128 len ceil32(stor2[arg1].field_1 % 128)], mem[(2 * ceil32(stor2[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor2[arg1].field_1 % 128)]), 
}

function sub_698c315f(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] <= test266151307()
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _410 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1
        mem[_410] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_410 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_410 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _410
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _411 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_411] == mem[_411 + 12 len 20]
    if msg.sender == mem[_411 + 12 len 20]:
        if mem[ceil32(32 * ('cd', 4).length) + 97] != mem[96]:
            revert with 0, 'VaultRegistry: Name length does not match with vaults length'
        _610 = mem[96]
        idx = 0
        while idx < _610:
            if idx >= mem[96]:
                revert with 0, 50
            if stor3[mem[(32 * idx) + 140 len 20]]:
                revert with 0, 'VaultRegistry: Vault already registered'
            if idx >= mem[96]:
                revert with 0, 50
            vaults.length++
            address(vaults[vaults.length].field_0) = mem[(32 * idx) + 140 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 2
            _636 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]
            if bool(stor2[mem[(32 * idx) + 140 len 20]].field_0):
                if bool(stor2[mem[(32 * idx) + 140 len 20]].field_0) == uint255(stor2[mem[(32 * idx) + 140 len 20]].field_0) * 0.5 < 32:
                    revert with 0, 34
                mem[0] = sha3(mem[(32 * idx) + 140 len 20], 2)
                if not _636:
                    stor2[mem[(32 * idx) + 140 len 20]].field_0 = 0
                    s = sha3(sha3(mem[(32 * idx) + 140 len 20], 2))
                    while sha3(sha3(mem[(32 * idx) + 140 len 20], 2)) + ((uint255(stor2[mem[(32 * idx) + 140 len 20]].field_0) * 0.5) + 31 / 32) > s:
                        stor[s] = 0
                        _610 = mem[96]
                        s = s + 1
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _816 = mem[(32 * idx) + 128]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    _840 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                    _841 = mem[64]
                    mem[mem[64]] = 32
                    _863 = mem[_840]
                    mem[mem[64] + 32] = mem[_840]
                    s = 0
                    while s < _863:
                        mem[s + _841 + 64] = mem[s + _840 + 32]
                        _610 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_863) > _863:
                        mem[_841 + _863 + 64] = 0
                    emit 0x156966d1: mem[mem[64] len ceil32(_863) + _841 + -mem[64] + 64], address(_816)
                else:
                    stor2[mem[(32 * idx) + 140 len 20]].field_0 = (2 * _636) + 1
                    s = sha3(sha3(mem[(32 * idx) + 140 len 20], 2))
                    t = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32
                    while mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + _636 + 32 > t:
                        stor[s] = mem[t]
                        _610 = mem[96]
                        s = s + 1
                        t = t + 32
                        continue 
                    s = sha3(sha3(mem[(32 * idx) + 140 len 20], 2)) + (Mask(251, 0, _636 + 31) >> 5)
                    while sha3(sha3(mem[(32 * idx) + 140 len 20], 2)) + ((uint255(stor2[mem[(32 * idx) + 140 len 20]].field_0) * 0.5) + 31 / 32) > s:
                        stor[s] = 0
                        _610 = mem[96]
                        s = s + 1
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _973 = mem[(32 * idx) + 128]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    _992 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                    _993 = mem[64]
                    mem[mem[64]] = 32
                    _1000 = mem[_992]
                    mem[mem[64] + 32] = mem[_992]
                    s = 0
                    while s < _1000:
                        mem[s + _993 + 64] = mem[s + _992 + 32]
                        _610 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_1000) > _1000:
                        mem[_993 + _1000 + 64] = 0
                    emit 0x156966d1: mem[mem[64] len ceil32(_1000) + _993 + -mem[64] + 64], address(_973)
                if idx == -1:
                    revert with 0, 17
                _610 = mem[96]
                idx = idx + 1
                continue 
            if bool(stor2[mem[(32 * idx) + 140 len 20]].field_0) == stor2[mem[(32 * idx) + 140 len 20]].field_1 % 128 < 32:
                revert with 0, 34
            mem[0] = sha3(mem[(32 * idx) + 140 len 20], 2)
            if not _636:
                stor2[mem[(32 * idx) + 140 len 20]].field_0 = 0
                s = sha3(sha3(mem[(32 * idx) + 140 len 20], 2))
                while sha3(sha3(mem[(32 * idx) + 140 len 20], 2)) + (stor2[mem[(32 * idx) + 140 len 20]].field_1 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    _610 = mem[96]
                    s = s + 1
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                _822 = mem[(32 * idx) + 128]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 0, 50
                _846 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                _847 = mem[64]
                mem[mem[64]] = 32
                _867 = mem[_846]
                mem[mem[64] + 32] = mem[_846]
                s = 0
                while s < _867:
                    mem[s + _847 + 64] = mem[s + _846 + 32]
                    _610 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_867) > _867:
                    mem[_847 + _867 + 64] = 0
                emit 0x156966d1: mem[mem[64] len ceil32(_867) + _847 + -mem[64] + 64], address(_822)
                if idx == -1:
                    revert with 0, 17
                _610 = mem[96]
                idx = idx + 1
                continue 
            stor2[mem[(32 * idx) + 140 len 20]].field_0 = (2 * _636) + 1
            s = sha3(sha3(mem[(32 * idx) + 140 len 20], 2))
            t = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32
            while mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + _636 + 32 > t:
                stor[s] = mem[t]
                _610 = mem[96]
                s = s + 1
                t = t + 32
                continue 
            s = sha3(sha3(mem[(32 * idx) + 140 len 20], 2)) + (Mask(251, 0, _636 + 31) >> 5)
            while sha3(sha3(mem[(32 * idx) + 140 len 20], 2)) + (stor2[mem[(32 * idx) + 140 len 20]].field_1 % 128 + 31 / 32) > s:
                stor[s] = 0
                _610 = mem[96]
                s = s + 1
                continue 
            if idx >= mem[96]:
                revert with 0, 50
            _978 = mem[(32 * idx) + 128]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            _994 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            _995 = mem[64]
            mem[mem[64]] = 32
            _1001 = mem[_994]
            mem[mem[64] + 32] = mem[_994]
            s = 0
            while s < _1001:
                mem[s + _995 + 64] = mem[s + _994 + 32]
                _610 = mem[96]
                s = s + 32
                continue 
            if ceil32(_1001) > _1001:
                mem[_995 + _1001 + 64] = 0
            emit 0x156966d1: mem[mem[64] len ceil32(_1001) + _995 + -mem[64] + 64], address(_978)
            if ceil32(_1001) == -1:
                revert with 0, 17
            _610 = mem[96]
            s = ceil32(_1001) + 1
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = 4
        if not stor4[msg.sender]:
            revert with 0, 'VaultRegistry: Caller not governance or keeper'
        if mem[ceil32(32 * ('cd', 4).length) + 97] != mem[96]:
            revert with 0, 'VaultRegistry: Name length does not match with vaults length'
        _611 = mem[96]
        idx = 0
        while idx < _611:
            if idx >= mem[96]:
                revert with 0, 50
            if stor3[mem[(32 * idx) + 140 len 20]]:
                revert with 0, 'VaultRegistry: Vault already registered'
            if idx >= mem[96]:
                revert with 0, 50
            vaults.length++
            address(vaults[vaults.length].field_0) = mem[(32 * idx) + 140 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 2
            _639 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]
            if bool(stor2[mem[(32 * idx) + 140 len 20]].field_0):
                if bool(stor2[mem[(32 * idx) + 140 len 20]].field_0) == uint255(stor2[mem[(32 * idx) + 140 len 20]].field_0) * 0.5 < 32:
                    revert with 0, 34
                mem[0] = sha3(mem[(32 * idx) + 140 len 20], 2)
                if not _639:
                    stor2[mem[(32 * idx) + 140 len 20]].field_0 = 0
                    s = sha3(sha3(mem[(32 * idx) + 140 len 20], 2))
                    while sha3(sha3(mem[(32 * idx) + 140 len 20], 2)) + ((uint255(stor2[mem[(32 * idx) + 140 len 20]].field_0) * 0.5) + 31 / 32) > s:
                        stor[s] = 0
                        _611 = mem[96]
                        s = s + 1
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _828 = mem[(32 * idx) + 128]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    _852 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                    _853 = mem[64]
                    mem[mem[64]] = 32
                    _871 = mem[_852]
                    mem[mem[64] + 32] = mem[_852]
                    s = 0
                    while s < _871:
                        mem[s + _853 + 64] = mem[s + _852 + 32]
                        _611 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_871) > _871:
                        mem[_853 + _871 + 64] = 0
                    emit 0x156966d1: mem[mem[64] len ceil32(_871) + _853 + -mem[64] + 64], address(_828)
                else:
                    stor2[mem[(32 * idx) + 140 len 20]].field_0 = (2 * _639) + 1
                    s = sha3(sha3(mem[(32 * idx) + 140 len 20], 2))
                    t = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32
                    while mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + _639 + 32 > t:
                        stor[s] = mem[t]
                        _611 = mem[96]
                        s = s + 1
                        t = t + 32
                        continue 
                    s = sha3(sha3(mem[(32 * idx) + 140 len 20], 2)) + (Mask(251, 0, _639 + 31) >> 5)
                    while sha3(sha3(mem[(32 * idx) + 140 len 20], 2)) + ((uint255(stor2[mem[(32 * idx) + 140 len 20]].field_0) * 0.5) + 31 / 32) > s:
                        stor[s] = 0
                        _611 = mem[96]
                        s = s + 1
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _983 = mem[(32 * idx) + 128]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    _996 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                    _997 = mem[64]
                    mem[mem[64]] = 32
                    _1002 = mem[_996]
                    mem[mem[64] + 32] = mem[_996]
                    s = 0
                    while s < _1002:
                        mem[s + _997 + 64] = mem[s + _996 + 32]
                        _611 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_1002) > _1002:
                        mem[_997 + _1002 + 64] = 0
                    emit 0x156966d1: mem[mem[64] len ceil32(_1002) + _997 + -mem[64] + 64], address(_983)
                if idx == -1:
                    revert with 0, 17
                _611 = mem[96]
                idx = idx + 1
                continue 
            if bool(stor2[mem[(32 * idx) + 140 len 20]].field_0) == stor2[mem[(32 * idx) + 140 len 20]].field_1 % 128 < 32:
                revert with 0, 34
            mem[0] = sha3(mem[(32 * idx) + 140 len 20], 2)
            if not _639:
                stor2[mem[(32 * idx) + 140 len 20]].field_0 = 0
                s = sha3(sha3(mem[(32 * idx) + 140 len 20], 2))
                while sha3(sha3(mem[(32 * idx) + 140 len 20], 2)) + (stor2[mem[(32 * idx) + 140 len 20]].field_1 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    _611 = mem[96]
                    s = s + 1
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                _834 = mem[(32 * idx) + 128]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 0, 50
                _858 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                _859 = mem[64]
                mem[mem[64]] = 32
                _875 = mem[_858]
                mem[mem[64] + 32] = mem[_858]
                s = 0
                while s < _875:
                    mem[s + _859 + 64] = mem[s + _858 + 32]
                    _611 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_875) > _875:
                    mem[_859 + _875 + 64] = 0
                emit 0x156966d1: mem[mem[64] len ceil32(_875) + _859 + -mem[64] + 64], address(_834)
                if idx == -1:
                    revert with 0, 17
                _611 = mem[96]
                idx = idx + 1
                continue 
            stor2[mem[(32 * idx) + 140 len 20]].field_0 = (2 * _639) + 1
            s = sha3(sha3(mem[(32 * idx) + 140 len 20], 2))
            t = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32
            while mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + _639 + 32 > t:
                stor[s] = mem[t]
                _611 = mem[96]
                s = s + 1
                t = t + 32
                continue 
            s = sha3(sha3(mem[(32 * idx) + 140 len 20], 2)) + (Mask(251, 0, _639 + 31) >> 5)
            while sha3(sha3(mem[(32 * idx) + 140 len 20], 2)) + (stor2[mem[(32 * idx) + 140 len 20]].field_1 % 128 + 31 / 32) > s:
                stor[s] = 0
                _611 = mem[96]
                s = s + 1
                continue 
            if idx >= mem[96]:
                revert with 0, 50
            _988 = mem[(32 * idx) + 128]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            _998 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            _999 = mem[64]
            mem[mem[64]] = 32
            _1003 = mem[_998]
            mem[mem[64] + 32] = mem[_998]
            s = 0
            while s < _1003:
                mem[s + _999 + 64] = mem[s + _998 + 32]
                _611 = mem[96]
                s = s + 32
                continue 
            if ceil32(_1003) > _1003:
                mem[_999 + _1003 + 64] = 0
            emit 0x156966d1: mem[mem[64] len ceil32(_1003) + _999 + -mem[64] + 64], address(_988)
            if ceil32(_1003) == -1:
                revert with 0, 17
            _611 = mem[96]
            s = ceil32(_1003) + 1
            continue 
}



}
