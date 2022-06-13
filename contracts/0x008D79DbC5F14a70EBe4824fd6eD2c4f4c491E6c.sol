contract main {




// =====================  Runtime code  =====================


const sub_5d1a42a1(?) = 500

const sub_72c69e8b(?) = 1000

const sub_e4bc7f98(?) = 0

const sub_ff677c7b(?) = 100


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of struct stor101;
array of address stor102;
address stor203;
uint256 sub_9f9ab26f;
address sub_07732927Address;
uint256 stor205;
mapping of uint8 stor206;
uint32 stor3608;
address stor3608;
uint256 stor3608;
array of address stor31803416089537561239136862248731574845551118351359000136225178771603843531604;
uint8 stor4910;

function sub_07732927(?) {
    return address(sub_07732927Address)
}

function sub_9f9ab26f(?) {
    return sub_9f9ab26f
}

function isContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint32(ext_code.size(arg1)))
}

function sub_f466fe5a(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    require arg2 == address(arg2)
    if stor101[address(arg2)].field_160 < uint32(arg1):
        return 0
    return 1
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_78e3f414(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    require arg2 == address(arg2)
    if address(arg2) != msg.sender:
        revert with 0, 'Address is not sender'
    if stor101[address(arg2)].field_160 < uint32(arg1):
        revert with 0, 'Missing role'
    if uint32(arg1) > stor101[msg.sender].field_160:
        revert with 0, 'Account is below role'
    stor101[address(arg2)].field_160 = 0
    emit 0x45a0aeb9: uint32(arg1), address(arg2), msg.sender
}

function sub_862b50c2(?) {
    require calldata.size - 4 >= 32
    if stor101[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    sub_9f9ab26f = arg1
}

function setNFTContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor101[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    stor203 = arg1
}

function whitelistAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor101[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    stor206[address(arg1)] = 0
}

function blacklistAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor101[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    stor206[address(arg1)] = 1
}

function sub_9a8d4aa4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor101[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    address(sub_07732927Address) = address(arg1)
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor101[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    if not ext_code.size(arg1):
        revert with 0, 'ERC1967: new implementation is not a contract'
    address(stor3608) = arg1
    if not stor4910:
        stor4910 = 1
        if not ext_code.size(arg1):
            revert with 0, 'Address: delegate call to non-contract'
        mem[196 len 64] = unknown_0x3659cfe6(?????), Mask(224, 0, stor3608), uint32(stor3608), mem[196 len 28]
        delegate arg1.mem[196 len 4] with:
             gas gas_remaining wei
            args mem[200]
        if not return_data.size:
            if not delegate.return_code:
                revert with 0, 32, 39, 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[267 len 25] >> 56, 0
        else:
            if not delegate.return_code:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            39,
                            0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(return_data.size) + 268 len 25] >> 56,
                            0
        ('bool', 'delegate.return_code')
        stor4910 = 0
        if address(stor3608) != address(stor3608):
            revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
        if not ext_code.size(arg1):
            revert with 0, 'ERC1967: new implementation is not a contract'
        address(stor3608) = arg1
        emit Upgraded(arg1);
}

function getCurrentRate() {
    require ext_code.size(stor203)
    staticcall stor203.0x18160ddd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(stor203)
    staticcall stor203.0x18160ddd with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(stor203)
        staticcall stor203.0x6352211e with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _18 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_18] == mem[_18 + 12 len 20]
        if uint32(ext_code.size(mem[_18])):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[_18 + 12 len 20]
        mem[32] = 206
        if stor206[mem[0]]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if eth.balance(this.address) and sub_9f9ab26f > -1 / eth.balance(this.address):
        revert with 0, 17
    if eth.balance(this.address) < eth.balance(this.address) * sub_9f9ab26f / 1000:
        revert with 0, 17
    if not s:
        revert with 0, 18
    return (eth.balance(this.address) - (eth.balance(this.address) * sub_9f9ab26f / 1000) / s)
}

function sub_bcb85b24(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    mem[0] = msg.sender
    mem[32] = 101
    if stor101[address(msg.sender)].field_160 >= 100:
        stor101[address(arg1)].field_192 = uint64(bool(arg2))
    mem[96] = 66
    mem[64] = 224
    mem[128 len 66] = call.data[calldata.size len 66]
    mem[128 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
    mem[129 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
    mem[193 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0))), ('add', -11, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0)), 4), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0))), ('add', -11, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0)), 4), 0) - 256
    if not var46001:
        revert with 0, 17
    idx = var50001
    s = var50006
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= mem[96]:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if s:
        revert with 0, 'Strings: hex length insufficient'
    _58 = mem[64]
    mem[mem[64] + 32] = 0x4d697373696e6720726f6c652000000000000000000000000000000000000000
    _60 = mem[96]
    mem[mem[64] + 45 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _73 = mem[64]
        mem[mem[64]] = mem[96] + 13
        mem[64] = _60 + mem[64] + 45
        mem[_60 + _58 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_60 + _58 + 49] = 32
        _74 = mem[_73]
        mem[_60 + _58 + 81] = mem[_73]
        mem[_60 + _58 + 113 len ceil32(_74)] = mem[_73 + 32 len ceil32(_74)]
        if ceil32(_74) > _74:
            mem[_60 + _58 + _74 + 113] = 0
        revert with 0, 32, mem[_60 + _58 + 81 len ceil32(_74) + 32]
    mem[mem[64] + mem[96] + 45] = 0
    _75 = mem[64]
    mem[mem[64]] = _60 + _58 + -mem[64] + 13
    mem[64] = _60 + _58 + 45
    mem[_60 + _58 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_60 + _58 + 49] = 32
    _76 = mem[_75]
    mem[_60 + _58 + 81] = mem[_75]
    mem[_60 + _58 + 113 len ceil32(_76)] = mem[_75 + 32 len ceil32(_76)]
    if ceil32(_76) > _76:
        mem[_60 + _58 + _76 + 113] = 0
    revert with 0, 32, mem[_60 + _58 + 81 len ceil32(_76) + 32]
}

function sub_284299b8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor203)
    staticcall stor203.0x18160ddd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(stor203)
    staticcall stor203.0x18160ddd with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(stor203)
        staticcall stor203.0x6352211e with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _29 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_29] == mem[_29 + 12 len 20]
        if uint32(ext_code.size(mem[_29])):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[_29 + 12 len 20]
        mem[32] = 206
        if stor206[mem[0]]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _28 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _30 = mem[_28]
    if mem[_28] and sub_9f9ab26f > -1 / mem[_28]:
        revert with 0, 17
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _35 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_35] < _30 * sub_9f9ab26f / 1000:
        revert with 0, 17
    if not s:
        revert with 0, 18
    mem[mem[64]] = mem[_35] - (_30 * sub_9f9ab26f / 1000) / s
    return memory
      from mem[64]
       len 32
}

function claimRewards() {
    require ext_code.size(stor203)
    staticcall stor203.0x18160ddd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    t = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(stor203)
        staticcall stor203.0x6352211e with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _14 = mem[_13]
        require mem[_13] == mem[_13 + 12 len 20]
        if uint32(ext_code.size(mem[_13])):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_13]
            t = t
            continue 
        mem[0] = mem[_13 + 12 len 20]
        mem[32] = 206
        if stor206[mem[0]]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _14
            t = t
            continue 
        if t == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _14
        t = t + 1
        continue 
    if eth.balance(this.address) and sub_9f9ab26f > -1 / eth.balance(this.address):
        revert with 0, 17
    call address(sub_07732927Address) with:
       value eth.balance(this.address) * sub_9f9ab26f / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not t:
        revert with 0, 18
    idx = 0
    u = s
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(stor203)
        staticcall stor203.0x6352211e with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _26 = mem[_25]
        require mem[_25] == mem[_25 + 12 len 20]
        if uint32(ext_code.size(mem[_25])):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = mem[_25]
            continue 
        mem[0] = mem[_25 + 12 len 20]
        mem[32] = 206
        if not stor206[mem[0]]:
            call address(_26) with:
               value eth.balance(this.address) / t wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        u = _26
        continue 
}

function getAllMembers() {
    if stor102.length > test266151307():
        revert with 0, 65
    mem[96] = stor102.length
    mem[64] = (32 * stor102.length) + 128
    if not stor102.length:
        idx = 0
        while idx < stor102.length:
            mem[0] = stor102[idx]
            mem[32] = 101
            if stor101[stor102[idx]].field_192:
                if idx >= stor102.length:
                    revert with 0, 50
                mem[0] = stor102[idx]
                mem[32] = 101
                _36 = mem[64]
                mem[64] = mem[64] + 96
                mem[_36] = stor101[stor102[idx]].field_0
                mem[_36 + 32] = stor101[stor102[idx]].field_160
                mem[_36 + 64] = bool(stor101[stor102[idx]].field_192)
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _36
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _30 = mem[64]
        mem[mem[64]] = 32
        _33 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _33:
            _56 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_56 + 60 len 4]
            mem[t + 64] = bool(mem[_56 + 64])
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _30 + (96 * _33) + -mem[64] + 64
    mem[64] = (32 * stor102.length) + 224
    mem[(32 * stor102.length) + 128] = 0
    mem[(32 * stor102.length) + 160] = 0
    mem[(32 * stor102.length) + 192] = 0
    mem[128] = (32 * stor102.length) + 128
    s = 128
    idx = stor102.length
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * stor102.length) + 128] = 0
        mem[(32 * stor102.length) + 160] = 0
        mem[(32 * stor102.length) + 192] = 0
        mem[s + 32] = (32 * stor102.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < stor102.length:
        mem[0] = stor102[idx]
        mem[32] = 101
        if stor101[stor102[idx]].field_192:
            if idx >= stor102.length:
                revert with 0, 50
            mem[0] = stor102[idx]
            mem[32] = 101
            _67 = mem[64]
            mem[64] = mem[64] + 96
            mem[_67] = stor101[stor102[idx]].field_0
            mem[_67 + 32] = stor101[stor102[idx]].field_160
            mem[_67 + 64] = bool(stor101[stor102[idx]].field_192)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _67
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _61 = mem[64]
    mem[mem[64]] = 32
    _64 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _64:
        _74 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_74 + 60 len 4]
        mem[t + 64] = bool(mem[_74 + 64])
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _61 + (96 * _64) + -mem[64] + 64
}

function sub_2c3eafc1(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    require arg2 == address(arg2)
    mem[0] = msg.sender
    mem[32] = 101
    if stor101[address(msg.sender)].field_160 >= 100:
        if stor101[address(arg2)].field_160 < uint32(arg1):
            revert with 0, 'Missing role'
        if uint32(arg1) > stor101[msg.sender].field_160:
            revert with 0, 'Account is below role'
        stor101[address(arg2)].field_160 = 0
        emit 0x45a0aeb9: uint32(arg1), address(arg2), msg.sender
    mem[96] = 66
    mem[64] = 224
    mem[128 len 66] = call.data[calldata.size len 66]
    mem[128 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
    mem[129 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
    mem[193 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0))), ('add', -11, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0)), 4), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0))), ('add', -11, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0)), 4), 0) - 256
    if not var44001:
        revert with 0, 17
    idx = var48001
    s = var48006
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= mem[96]:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if s:
        revert with 0, 'Strings: hex length insufficient'
    _65 = mem[64]
    mem[mem[64] + 32] = 0x4d697373696e6720726f6c652000000000000000000000000000000000000000
    _67 = mem[96]
    mem[mem[64] + 45 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _80 = mem[64]
        mem[mem[64]] = mem[96] + 13
        mem[64] = _67 + mem[64] + 45
        mem[_67 + _65 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_67 + _65 + 49] = 32
        _81 = mem[_80]
        mem[_67 + _65 + 81] = mem[_80]
        mem[_67 + _65 + 113 len ceil32(_81)] = mem[_80 + 32 len ceil32(_81)]
        if ceil32(_81) > _81:
            mem[_67 + _65 + _81 + 113] = 0
        revert with 0, 32, mem[_67 + _65 + 81 len ceil32(_81) + 32]
    mem[mem[64] + mem[96] + 45] = 0
    _82 = mem[64]
    mem[mem[64]] = _67 + _65 + -mem[64] + 13
    mem[64] = _67 + _65 + 45
    mem[_67 + _65 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_67 + _65 + 49] = 32
    _83 = mem[_82]
    mem[_67 + _65 + 81] = mem[_82]
    mem[_67 + _65 + 113 len ceil32(_83)] = mem[_82 + 32 len ceil32(_83)]
    if ceil32(_83) > _83:
        mem[_67 + _65 + _83 + 113] = 0
    revert with 0, 32, mem[_67 + _65 + 81 len ceil32(_83) + 32]
}

function sub_8b9b3b63(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    require arg2 == address(arg2)
    mem[0] = msg.sender
    mem[32] = 101
    if stor101[address(msg.sender)].field_160 >= 100:
        if stor101[address(arg2)].field_0 != address(arg2):
            stor102.length++
            stor4650[stor102.length] = address(arg2)
        if stor101[address(arg2)].field_160 >= uint32(arg1):
            revert with 0, 'Account has role already'
        if uint32(arg1) > stor101[msg.sender].field_160:
            revert with 0, 'Account is below required role'
        stor101[address(arg2)].field_0 = address(arg2)
        stor101[address(arg2)].field_160 = uint32(arg1)
        stor101[address(arg2)].field_192 = 1
        emit 0x8b5a40e1: uint32(arg1), address(arg2), msg.sender
    mem[96] = 66
    mem[64] = 224
    mem[128 len 66] = call.data[calldata.size len 66]
    mem[128 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
    mem[129 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
    mem[193 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0))), ('add', -11, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0)), 4), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0))), ('add', -11, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0)), 4), 0) - 256
    if not var44001:
        revert with 0, 17
    idx = var48001
    s = var48006
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= mem[96]:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if s:
        revert with 0, 'Strings: hex length insufficient'
    _84 = mem[64]
    mem[mem[64] + 32] = 0x4d697373696e6720726f6c652000000000000000000000000000000000000000
    _86 = mem[96]
    mem[mem[64] + 45 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _99 = mem[64]
        mem[mem[64]] = mem[96] + 13
        mem[64] = _86 + mem[64] + 45
        mem[_86 + _84 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_86 + _84 + 49] = 32
        _100 = mem[_99]
        mem[_86 + _84 + 81] = mem[_99]
        mem[_86 + _84 + 113 len ceil32(_100)] = mem[_99 + 32 len ceil32(_100)]
        if ceil32(_100) > _100:
            mem[_86 + _84 + _100 + 113] = 0
        revert with 0, 32, mem[_86 + _84 + 81 len ceil32(_100) + 32]
    mem[mem[64] + mem[96] + 45] = 0
    _101 = mem[64]
    mem[mem[64]] = _86 + _84 + -mem[64] + 13
    mem[64] = _86 + _84 + 45
    mem[_86 + _84 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_86 + _84 + 49] = 32
    _102 = mem[_101]
    mem[_86 + _84 + 81] = mem[_101]
    mem[_86 + _84 + 113 len ceil32(_102)] = mem[_101 + 32 len ceil32(_102)]
    if ceil32(_102) > _102:
        mem[_86 + _84 + _102 + 113] = 0
    revert with 0, 32, mem[_86 + _84 + 81 len ceil32(_102) + 32]
}

function upgradeToAndCall(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if stor101[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg2.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    if not ext_code.size(arg1):
        revert with 0, 'ERC1967: new implementation is not a contract'
    address(stor3608) = arg1
    if not ext_code.size(arg1):
        revert with 0, 'Address: delegate call to non-contract'
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(ceil32(arg2.length)) + arg2.length + 97] = 0
    delegate arg1.mem[ceil32(ceil32(arg2.length)) + 97 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + 101 len arg2.length - 4]
    if not return_data.size:
        if not delegate.return_code:
            if arg2.length:
                revert with arg2[all]
            revert with 0, 
                        32,
                        39,
                        0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + 168 len 25] >> 56,
                        0
        if not stor4910:
            stor4910 = 1
            if not ext_code.size(arg1):
                revert with 0, 'Address: delegate call to non-contract'
            mem[ceil32(ceil32(arg2.length)) + 261 len 64] = 0, address(stor3608), mem[ceil32(ceil32(arg2.length)) + 261 len 28]
            delegate arg1.mem[ceil32(ceil32(arg2.length)) + 261 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg2.length)) + 265]
            if not return_data.size:
                if not delegate.return_code:
                    if arg2.length:
                        revert with arg2[all]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + 332 len 25] >> 56,
                                0
            else:
                if not delegate.return_code:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 333 len 25] >> 56,
                                0
            ('bool', 'delegate.return_code')
            stor4910 = 0
            if address(stor3608) != address(stor3608):
                revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
            if not ext_code.size(arg1):
                revert with 0, 'ERC1967: new implementation is not a contract'
            address(stor3608) = arg1
            emit Upgraded(arg1);
    else:
        if not delegate.return_code:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 
                        32,
                        39,
                        0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 169 len 25] >> 56,
                        0
        if not stor4910:
            stor4910 = 1
            if not ext_code.size(arg1):
                revert with 0, 'Address: delegate call to non-contract'
            mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 262 len 64] = 0, address(stor3608), mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 262 len 28]
            delegate arg1.mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 262 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 266]
            if not return_data.size:
                if not delegate.return_code:
                    if arg2.length:
                        revert with arg2[all]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 333 len 25] >> 56,
                                0
            else:
                if not delegate.return_code:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 334 len 25] >> 56,
                                0
            ('bool', 'delegate.return_code')
            stor4910 = 0
            if address(stor3608) != address(stor3608):
                revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
            if not ext_code.size(arg1):
                revert with 0, 'ERC1967: new implementation is not a contract'
            address(stor3608) = arg1
            emit Upgraded(arg1);
}

function initialize() {
    if uint8(stor0.field_8):
        stor101[address(msg.sender)].field_0 = msg.sender
        stor101[address(msg.sender)].field_160 = 1000
        stor101[address(msg.sender)].field_176 = 0
        stor101[address(msg.sender)].field_192 = 1
        stor102.length++
        stor4650[stor102.length] = msg.sender
        stor101[address(msg.sender)].field_0 = msg.sender
        stor101[address(msg.sender)].field_160 = 1000
        stor101[address(msg.sender)].field_176 = 0
        stor101[address(msg.sender)].field_192 = 1
        stor102.length++
        stor4650[stor102.length] = msg.sender
        sub_9f9ab26f = 100
        uint256(stor205) = msg.sender or Mask(96, 160, uint256(stor205))
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            stor101[address(msg.sender)].field_0 = msg.sender
            stor101[address(msg.sender)].field_160 = 1000
            stor101[address(msg.sender)].field_176 = 0
            stor101[address(msg.sender)].field_192 = 1
            stor102.length++
            stor4650[stor102.length] = msg.sender
            stor101[address(msg.sender)].field_0 = msg.sender
            stor101[address(msg.sender)].field_160 = 1000
            stor101[address(msg.sender)].field_176 = 0
            stor101[address(msg.sender)].field_192 = 1
            stor102.length++
            stor4650[stor102.length] = msg.sender
            sub_9f9ab26f = 100
            uint256(stor205) = msg.sender or Mask(96, 160, uint256(stor205))
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                stor101[address(msg.sender)].field_0 = msg.sender
                stor101[address(msg.sender)].field_160 = 1000
                stor101[address(msg.sender)].field_176 = 0
                stor101[address(msg.sender)].field_192 = 1
                stor102.length++
                stor4650[stor102.length] = msg.sender
                stor101[address(msg.sender)].field_0 = msg.sender
                stor101[address(msg.sender)].field_160 = 1000
                stor101[address(msg.sender)].field_176 = 0
                stor101[address(msg.sender)].field_192 = 1
                stor102.length++
                stor4650[stor102.length] = msg.sender
                sub_9f9ab26f = 100
                uint256(stor205) = msg.sender or Mask(96, 160, uint256(stor205))
            else:
                uint16(stor0.field_0) = 257
                stor101[address(msg.sender)].field_0 = msg.sender
                stor101[address(msg.sender)].field_160 = 1000
                stor101[address(msg.sender)].field_176 = 0
                stor101[address(msg.sender)].field_192 = 1
                stor102.length++
                stor4650[stor102.length] = msg.sender
                uint8(stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    stor101[address(msg.sender)].field_0 = msg.sender
                    stor101[address(msg.sender)].field_160 = 1000
                    stor101[address(msg.sender)].field_176 = 0
                    stor101[address(msg.sender)].field_192 = 1
                    stor102.length++
                    stor4650[stor102.length] = msg.sender
                    sub_9f9ab26f = 100
                    uint256(stor205) = msg.sender or Mask(96, 160, uint256(stor205))
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        stor101[address(msg.sender)].field_0 = msg.sender
                        stor101[address(msg.sender)].field_160 = 1000
                        stor101[address(msg.sender)].field_176 = 0
                        stor101[address(msg.sender)].field_192 = 1
                        stor102.length++
                        stor4650[stor102.length] = msg.sender
                        sub_9f9ab26f = 100
                        uint256(stor205) = msg.sender or Mask(96, 160, uint256(stor205))
                    else:
                        uint16(stor0.field_0) = 257
                        uint8(stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            stor101[address(msg.sender)].field_0 = msg.sender
                            stor101[address(msg.sender)].field_160 = 1000
                            stor101[address(msg.sender)].field_176 = 0
                            stor101[address(msg.sender)].field_192 = 1
                            stor102.length++
                            stor4650[stor102.length] = msg.sender
                            sub_9f9ab26f = 100
                            uint256(stor205) = msg.sender or Mask(96, 160, uint256(stor205))
                        else:
                            uint16(stor0.field_0) = 257
                            if uint8(stor0.field_0):
                                revert with 0, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                stor101[address(msg.sender)].field_0 = msg.sender
                                stor101[address(msg.sender)].field_160 = 1000
                                stor101[address(msg.sender)].field_176 = 0
                                stor101[address(msg.sender)].field_192 = 1
                                stor102.length++
                                stor4650[stor102.length] = msg.sender
                                sub_9f9ab26f = 100
                                uint256(stor205) = msg.sender or Mask(96, 160, uint256(stor205))
                            else:
                                uint16(stor0.field_0) = 257
                                uint8(stor0.field_8) = 0
                                if uint8(stor0.field_0):
                                    revert with 0, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    stor101[address(msg.sender)].field_0 = msg.sender
                                    stor101[address(msg.sender)].field_160 = 1000
                                    stor101[address(msg.sender)].field_176 = 0
                                    stor101[address(msg.sender)].field_192 = 1
                                    stor102.length++
                                    stor4650[stor102.length] = msg.sender
                                    sub_9f9ab26f = 100
                                    uint256(stor205) = msg.sender or Mask(96, 160, uint256(stor205))
                                else:
                                    uint16(stor0.field_0) = 257
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if uint8(stor0.field_0):
                                        revert with 0, 'Initializable: contract is already initialized'
                                    if uint8(stor0.field_8):
                                        stor101[address(msg.sender)].field_0 = msg.sender
                                        stor101[address(msg.sender)].field_160 = 1000
                                        stor101[address(msg.sender)].field_176 = 0
                                        stor101[address(msg.sender)].field_192 = 1
                                        stor102.length++
                                        stor4650[stor102.length] = msg.sender
                                        sub_9f9ab26f = 100
                                        uint256(stor205) = msg.sender or Mask(96, 160, uint256(stor205))
                                    else:
                                        uint16(stor0.field_0) = 257
                                        stor101[address(msg.sender)].field_0 = msg.sender
                                        stor101[address(msg.sender)].field_160 = 1000
                                        stor101[address(msg.sender)].field_176 = 0
                                        stor101[address(msg.sender)].field_192 = 1
                                        stor102.length++
                                        stor4650[stor102.length] = msg.sender
                                        sub_9f9ab26f = 100
                                        uint256(stor205) = msg.sender or Mask(96, 160, uint256(stor205))
                                        uint8(stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
}

function sub_0d9ac480(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor203)
    staticcall stor203.0x18160ddd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    t = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(stor203)
        staticcall stor203.0x6352211e with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _114 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _116 = mem[_114]
        require mem[_114] == mem[_114 + 12 len 20]
        if uint32(ext_code.size(mem[_114])):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_114]
            t = t
            continue 
        mem[0] = mem[_114 + 12 len 20]
        mem[32] = 206
        if stor206[mem[0]]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _116
            t = t
            continue 
        if t == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _116
        t = t + 1
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _113 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _115 = mem[_113]
    if mem[_113] and sub_9f9ab26f > -1 / mem[_113]:
        revert with 0, 17
    _118 = mem[64]
    mem[mem[64] + 36] = address(sub_07732927Address)
    mem[mem[64] + 68] = _115 * sub_9f9ab26f / 1000
    _119 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = transfer(address arg1, uint256 arg2)
    mem[64] = mem[64] + 164
    mem[_118 + 100] = 32
    mem[_118 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(arg1)):
        revert with 0, 'Address: call to non-contract'
    _126 = mem[_119]
    mem[_118 + 164 len ceil32(mem[_119])] = mem[_119 + 32 len ceil32(mem[_119])]
    if ceil32(_126) <= _126:
        call address(arg1) with:
             gas gas_remaining wei
            args mem[_118 + 168 len _126 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if not mem[96]:
                mem[_118 + 168] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_118 + 164] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _118 + ceil32(return_data.size) + 164
                require return_data.size >= 32
                if not t:
                    revert with 0, 18
                idx = 0
                u = s
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(stor203)
                    staticcall stor203.0x6352211e with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1406 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1419 = mem[_1406]
                    require mem[_1406] == mem[_1406 + 12 len 20]
                    if uint32(ext_code.size(mem[_1406])):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = mem[_1406]
                        continue 
                    mem[0] = mem[_1406 + 12 len 20]
                    mem[32] = 206
                    if not stor206[mem[0]]:
                        _1438 = mem[64]
                        mem[mem[64] + 36] = address(_1419)
                        mem[mem[64] + 68] = ext_call.return_data[0] / t
                        _1439 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1439 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1439 + 36 len 28]
                        mem[64] = _1438 + 164
                        mem[_1438 + 100] = 32
                        mem[_1438 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(arg1)):
                            revert with 0, 'Address: call to non-contract'
                        _1502 = mem[_1439]
                        s = 0
                        while s < _1502:
                            mem[s + _1438 + 164] = mem[s + _1439 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1502) > _1502:
                            mem[_1438 + _1502 + 164] = 0
                        call address(arg1).mem[_1438 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1438 + 168 len _1502 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1438 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1438 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1438 + 232] = mem[idx + _1438 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1438 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _1438 + ceil32(return_data.size) + 165
                            mem[_1438 + 164] = return_data.size
                            mem[_1438 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1438 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1438 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1438 + ceil32(return_data.size) + 233] = mem[idx + _1438 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1438 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1438 + 196] == bool(mem[_1438 + 196])
                                if not mem[_1438 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _1419
                    continue 
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_118 + 168] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_118 + 164] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _118 + ceil32(return_data.size) + 164
                require return_data.size >= 32
                if not t:
                    revert with 0, 18
                idx = 0
                u = s
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(stor203)
                    staticcall stor203.0x6352211e with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1407 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1420 = mem[_1407]
                    require mem[_1407] == mem[_1407 + 12 len 20]
                    if uint32(ext_code.size(mem[_1407])):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = mem[_1407]
                        continue 
                    mem[0] = mem[_1407 + 12 len 20]
                    mem[32] = 206
                    if not stor206[mem[0]]:
                        _1441 = mem[64]
                        mem[mem[64] + 36] = address(_1420)
                        mem[mem[64] + 68] = ext_call.return_data[0] / t
                        _1442 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1442 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1442 + 36 len 28]
                        mem[64] = _1441 + 164
                        mem[_1441 + 100] = 32
                        mem[_1441 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(arg1)):
                            revert with 0, 'Address: call to non-contract'
                        _1504 = mem[_1442]
                        s = 0
                        while s < _1504:
                            mem[s + _1441 + 164] = mem[s + _1442 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1504) > _1504:
                            mem[_1441 + _1504 + 164] = 0
                        call address(arg1).mem[_1441 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1441 + 168 len _1504 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1441 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1441 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1441 + 232] = mem[idx + _1441 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1441 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _1441 + ceil32(return_data.size) + 165
                            mem[_1441 + 164] = return_data.size
                            mem[_1441 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1441 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1441 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1441 + ceil32(return_data.size) + 233] = mem[idx + _1441 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1441 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1441 + 196] == bool(mem[_1441 + 196])
                                if not mem[_1441 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _1420
                    continue 
        else:
            mem[_118 + 164] = return_data.size
            mem[_118 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                mem[_118 + ceil32(return_data.size) + 169] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_118 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _118 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                require return_data.size >= 32
                if not t:
                    revert with 0, 18
                idx = 0
                u = s
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(stor203)
                    staticcall stor203.0x6352211e with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1408 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1422 = mem[_1408]
                    require mem[_1408] == mem[_1408 + 12 len 20]
                    if uint32(ext_code.size(mem[_1408])):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = mem[_1408]
                        continue 
                    mem[0] = mem[_1408 + 12 len 20]
                    mem[32] = 206
                    if not stor206[mem[0]]:
                        _1444 = mem[64]
                        mem[mem[64] + 36] = address(_1422)
                        mem[mem[64] + 68] = ext_call.return_data[0] / t
                        _1445 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1445 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1445 + 36 len 28]
                        mem[64] = _1444 + 164
                        mem[_1444 + 100] = 32
                        mem[_1444 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(arg1)):
                            revert with 0, 'Address: call to non-contract'
                        _1506 = mem[_1445]
                        s = 0
                        while s < _1506:
                            mem[s + _1444 + 164] = mem[s + _1445 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1506) > _1506:
                            mem[_1444 + _1506 + 164] = 0
                        call address(arg1).mem[_1444 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1444 + 168 len _1506 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1444 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1444 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1444 + 232] = mem[idx + _1444 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1444 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _1444 + ceil32(return_data.size) + 165
                            mem[_1444 + 164] = return_data.size
                            mem[_1444 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1444 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1444 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1444 + ceil32(return_data.size) + 233] = mem[idx + _1444 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1444 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1444 + 196] == bool(mem[_1444 + 196])
                                if not mem[_1444 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _1422
                    continue 
            else:
                require return_data.size >= 32
                require mem[_118 + 196] == bool(mem[_118 + 196])
                if not mem[_118 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_118 + ceil32(return_data.size) + 169] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_118 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _118 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                require return_data.size >= 32
                if not t:
                    revert with 0, 18
                idx = 0
                u = s
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(stor203)
                    staticcall stor203.0x6352211e with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1409 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1423 = mem[_1409]
                    require mem[_1409] == mem[_1409 + 12 len 20]
                    if uint32(ext_code.size(mem[_1409])):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = mem[_1409]
                        continue 
                    mem[0] = mem[_1409 + 12 len 20]
                    mem[32] = 206
                    if not stor206[mem[0]]:
                        _1447 = mem[64]
                        mem[mem[64] + 36] = address(_1423)
                        mem[mem[64] + 68] = ext_call.return_data[0] / t
                        _1448 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1448 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1448 + 36 len 28]
                        mem[64] = _1447 + 164
                        mem[_1447 + 100] = 32
                        mem[_1447 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(arg1)):
                            revert with 0, 'Address: call to non-contract'
                        _1508 = mem[_1448]
                        s = 0
                        while s < _1508:
                            mem[s + _1447 + 164] = mem[s + _1448 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1508) > _1508:
                            mem[_1447 + _1508 + 164] = 0
                        call address(arg1).mem[_1447 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1447 + 168 len _1508 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1447 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1447 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1447 + 232] = mem[idx + _1447 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1447 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _1447 + ceil32(return_data.size) + 165
                            mem[_1447 + 164] = return_data.size
                            mem[_1447 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1447 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1447 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1447 + ceil32(return_data.size) + 233] = mem[idx + _1447 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1447 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1447 + 196] == bool(mem[_1447 + 196])
                                if not mem[_1447 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _1423
                    continue 
    else:
        mem[_118 + _126 + 164] = 0
        call address(arg1) with:
             gas gas_remaining wei
            args mem[_118 + 168 len _126 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if not mem[96]:
                mem[_118 + 168] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_118 + 164] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _118 + ceil32(return_data.size) + 164
                require return_data.size >= 32
                if not t:
                    revert with 0, 18
                idx = 0
                u = s
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(stor203)
                    staticcall stor203.0x6352211e with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1410 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1425 = mem[_1410]
                    require mem[_1410] == mem[_1410 + 12 len 20]
                    if uint32(ext_code.size(mem[_1410])):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = mem[_1410]
                        continue 
                    mem[0] = mem[_1410 + 12 len 20]
                    mem[32] = 206
                    if not stor206[mem[0]]:
                        _1450 = mem[64]
                        mem[mem[64] + 36] = address(_1425)
                        mem[mem[64] + 68] = ext_call.return_data[0] / t
                        _1451 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1451 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1451 + 36 len 28]
                        mem[64] = _1450 + 164
                        mem[_1450 + 100] = 32
                        mem[_1450 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(arg1)):
                            revert with 0, 'Address: call to non-contract'
                        _1510 = mem[_1451]
                        s = 0
                        while s < _1510:
                            mem[s + _1450 + 164] = mem[s + _1451 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1510) > _1510:
                            mem[_1450 + _1510 + 164] = 0
                        call address(arg1).mem[_1450 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1450 + 168 len _1510 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1450 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1450 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1450 + 232] = mem[idx + _1450 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1450 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _1450 + ceil32(return_data.size) + 165
                            mem[_1450 + 164] = return_data.size
                            mem[_1450 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1450 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1450 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1450 + ceil32(return_data.size) + 233] = mem[idx + _1450 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1450 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1450 + 196] == bool(mem[_1450 + 196])
                                if not mem[_1450 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _1425
                    continue 
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_118 + 168] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_118 + 164] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _118 + ceil32(return_data.size) + 164
                require return_data.size >= 32
                if not t:
                    revert with 0, 18
                idx = 0
                u = s
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(stor203)
                    staticcall stor203.0x6352211e with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1411 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1426 = mem[_1411]
                    require mem[_1411] == mem[_1411 + 12 len 20]
                    if uint32(ext_code.size(mem[_1411])):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = mem[_1411]
                        continue 
                    mem[0] = mem[_1411 + 12 len 20]
                    mem[32] = 206
                    if not stor206[mem[0]]:
                        _1453 = mem[64]
                        mem[mem[64] + 36] = address(_1426)
                        mem[mem[64] + 68] = ext_call.return_data[0] / t
                        _1454 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1454 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1454 + 36 len 28]
                        mem[64] = _1453 + 164
                        mem[_1453 + 100] = 32
                        mem[_1453 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(arg1)):
                            revert with 0, 'Address: call to non-contract'
                        _1512 = mem[_1454]
                        s = 0
                        while s < _1512:
                            mem[s + _1453 + 164] = mem[s + _1454 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1512) > _1512:
                            mem[_1453 + _1512 + 164] = 0
                        call address(arg1).mem[_1453 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1453 + 168 len _1512 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1453 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1453 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1453 + 232] = mem[idx + _1453 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1453 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _1453 + ceil32(return_data.size) + 165
                            mem[_1453 + 164] = return_data.size
                            mem[_1453 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1453 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1453 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1453 + ceil32(return_data.size) + 233] = mem[idx + _1453 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1453 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1453 + 196] == bool(mem[_1453 + 196])
                                if not mem[_1453 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _1426
                    continue 
        else:
            mem[_118 + 164] = return_data.size
            mem[_118 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                mem[_118 + ceil32(return_data.size) + 169] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_118 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _118 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                require return_data.size >= 32
                if not t:
                    revert with 0, 18
                idx = 0
                u = s
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(stor203)
                    staticcall stor203.0x6352211e with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1412 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1428 = mem[_1412]
                    require mem[_1412] == mem[_1412 + 12 len 20]
                    if uint32(ext_code.size(mem[_1412])):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = mem[_1412]
                        continue 
                    mem[0] = mem[_1412 + 12 len 20]
                    mem[32] = 206
                    if not stor206[mem[0]]:
                        _1456 = mem[64]
                        mem[mem[64] + 36] = address(_1428)
                        mem[mem[64] + 68] = ext_call.return_data[0] / t
                        _1457 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1457 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1457 + 36 len 28]
                        mem[64] = _1456 + 164
                        mem[_1456 + 100] = 32
                        mem[_1456 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(arg1)):
                            revert with 0, 'Address: call to non-contract'
                        _1514 = mem[_1457]
                        s = 0
                        while s < _1514:
                            mem[s + _1456 + 164] = mem[s + _1457 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1514) > _1514:
                            mem[_1456 + _1514 + 164] = 0
                        call address(arg1).mem[_1456 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1456 + 168 len _1514 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1456 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1456 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1456 + 232] = mem[idx + _1456 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1456 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _1456 + ceil32(return_data.size) + 165
                            mem[_1456 + 164] = return_data.size
                            mem[_1456 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1456 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1456 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1456 + ceil32(return_data.size) + 233] = mem[idx + _1456 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1456 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1456 + 196] == bool(mem[_1456 + 196])
                                if not mem[_1456 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _1428
                    continue 
            else:
                require return_data.size >= 32
                require mem[_118 + 196] == bool(mem[_118 + 196])
                if not mem[_118 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_118 + ceil32(return_data.size) + 169] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_118 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _118 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                require return_data.size >= 32
                if not t:
                    revert with 0, 18
                idx = 0
                u = s
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(stor203)
                    staticcall stor203.0x6352211e with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1413 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1429 = mem[_1413]
                    require mem[_1413] == mem[_1413 + 12 len 20]
                    if uint32(ext_code.size(mem[_1413])):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = mem[_1413]
                        continue 
                    mem[0] = mem[_1413 + 12 len 20]
                    mem[32] = 206
                    if not stor206[mem[0]]:
                        _1459 = mem[64]
                        mem[mem[64] + 36] = address(_1429)
                        mem[mem[64] + 68] = ext_call.return_data[0] / t
                        _1460 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1460 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1460 + 36 len 28]
                        mem[64] = _1459 + 164
                        mem[_1459 + 100] = 32
                        mem[_1459 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(arg1)):
                            revert with 0, 'Address: call to non-contract'
                        _1516 = mem[_1460]
                        s = 0
                        while s < _1516:
                            mem[s + _1459 + 164] = mem[s + _1460 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1516) > _1516:
                            mem[_1459 + _1516 + 164] = 0
                        call address(arg1).mem[_1459 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1459 + 168 len _1516 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1459 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1459 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1459 + 232] = mem[idx + _1459 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1459 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _1459 + ceil32(return_data.size) + 165
                            mem[_1459 + 164] = return_data.size
                            mem[_1459 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1459 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1459 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1459 + ceil32(return_data.size) + 233] = mem[idx + _1459 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1459 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1459 + 196] == bool(mem[_1459 + 196])
                                if not mem[_1459 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _1429
                    continue 
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x7c0f6b35(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xa7ccabdf(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xf3290d75(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xf3290d75(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if stor101[address(msg.sender)].field_160 < 1000:
                            idx = 65
                            s = 1000
                            while idx > 1:
                                if s % 16 >= 16:
                                    revert with 0, 50
                                if idx >= 66:
                                    revert with 0, 50
                                mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                if not idx:
                                    revert with 0, 17
                                idx = idx - 1
                                s = Mask(252, 0, s) * 0.0625
                                continue 
                            revert with 0, 'Strings: hex length insufficient'
                        stor206[address(arg1)] = 1
                    if unknown_0xf466fe5a(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == uint32(arg1)
                        require arg2 == address(arg2)
                        if stor101[address(arg2)].field_160 < uint32(arg1):
                            return 0
                        return 1
                    if uint32(call.func_hash) >> 224 != unknown_0xf7fb07b0(?????):
                        require unknown_0xff677c7b(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return 100
                    require not msg.value
                    require ext_code.size(stor203)
                    staticcall stor203.0x18160ddd with:
                            gas gas_remaining wei
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    require ext_code.size(stor203)
                    staticcall stor203.0x18160ddd with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    idx = 0
                    s = 0
                    while idx < ext_call.return_data[0]:
                        mem[mem[64] + 4] = idx
                        require ext_code.size(stor203)
                        staticcall stor203.0x6352211e with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1410 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1410] == mem[_1410 + 12 len 20]
                        if uint32(ext_code.size(mem[_1410])):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        mem[0] = mem[_1410 + 12 len 20]
                        mem[32] = 206
                        if stor206[mem[0]]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s == -1:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        continue 
                    if eth.balance(this.address) and sub_9f9ab26f > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if eth.balance(this.address) < eth.balance(this.address) * sub_9f9ab26f / 1000:
                        revert with 0, 17
                    if not s:
                        revert with 0, 18
                    return (eth.balance(this.address) - (eth.balance(this.address) * sub_9f9ab26f / 1000) / s)
                if unknown_0xa7ccabdf(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if stor101[address(msg.sender)].field_160 < 1000:
                        idx = 65
                        s = 1000
                        while idx > 1:
                            if s % 16 >= 16:
                                revert with 0, 50
                            if idx >= 66:
                                revert with 0, 50
                            mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if not idx:
                                revert with 0, 17
                            idx = idx - 1
                            s = Mask(252, 0, s) * 0.0625
                            continue 
                        revert with 0, 'Strings: hex length insufficient'
                    stor203 = address(arg1)
                if uint32(call.func_hash) >> 224 != unknown_0xbcb85b24(?????):
                    require unknown_0xe4bc7f98(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return 0
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == bool(arg2)
                mem[0] = msg.sender
                mem[32] = 101
                if stor101[address(msg.sender)].field_160 >= 100:
                    stor101[address(arg1)].field_192 = uint64(bool(arg2))
                mem[128] = 66
                mem[64] = 256
                mem[160 len 66] = call.data[calldata.size len 66]
                mem[160 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                mem[161 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                mem[225 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0))), ('add', -11, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0)), 4), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0))), ('add', -11, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0)), 4), 0) - 256
                if not var52001:
                    revert with 0, 17
                idx = var56001
                s = var56006
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= mem[128]:
                        revert with 0, 50
                    mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if s:
                    revert with 0, 'Strings: hex length insufficient'
                _5484 = mem[64]
                mem[mem[64] + 32] = 0x4d697373696e6720726f6c652000000000000000000000000000000000000000
                _5496 = mem[128]
                mem[mem[64] + 45 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                if ceil32(_5496) <= _5496:
                    _6007 = mem[64]
                    mem[mem[64]] = _5496 + 13
                    mem[64] = _5496 + mem[64] + 45
                    mem[_5496 + _5484 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5496 + _5484 + 49] = 32
                    _6044 = mem[_6007]
                    mem[_5496 + _5484 + 81] = mem[_6007]
                    mem[_5496 + _5484 + 113 len ceil32(_6044)] = mem[_6007 + 32 len ceil32(_6044)]
                    if ceil32(_6044) > _6044:
                        mem[_5496 + _5484 + _6044 + 113] = 0
                    revert with 0, 32, mem[_5496 + _5484 + 81 len ceil32(_6044) + 32]
                mem[mem[64] + _5496 + 45] = 0
                _6045 = mem[64]
                mem[mem[64]] = _5496 + _5484 + -mem[64] + 13
                mem[64] = _5496 + _5484 + 45
                mem[_5496 + _5484 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_5496 + _5484 + 49] = 32
                _6048 = mem[_6045]
                mem[_5496 + _5484 + 81] = mem[_6045]
                mem[_5496 + _5484 + 113 len ceil32(_6048)] = mem[_6045 + 32 len ceil32(_6048)]
                if ceil32(_6048) > _6048:
                    mem[_5496 + _5484 + _6048 + 113] = 0
                revert with 0, 32, mem[_5496 + _5484 + 81 len ceil32(_6048) + 32]
            if unknown_0x7c0f6b35(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if stor102.length > test266151307():
                    revert with 0, 65
                mem[128] = stor102.length
                mem[64] = (32 * stor102.length) + 160
                if not stor102.length:
                    idx = 0
                    while idx < stor102.length:
                        mem[0] = stor102[idx]
                        mem[32] = 101
                        if stor101[stor102[idx]].field_192:
                            if idx >= stor102.length:
                                revert with 0, 50
                            mem[0] = stor102[idx]
                            mem[32] = 101
                            _1420 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1420] = stor101[stor102[idx]].field_0
                            mem[_1420 + 32] = stor101[stor102[idx]].field_160
                            mem[_1420 + 64] = bool(stor101[stor102[idx]].field_192)
                            if idx >= mem[128]:
                                revert with 0, 50
                            mem[(32 * idx) + 160] = _1420
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _1379 = mem[64]
                    mem[mem[64]] = 32
                    _1401 = mem[128]
                    mem[mem[64] + 32] = mem[128]
                    idx = 0
                    s = 160
                    t = mem[64] + 64
                    while idx < _1401:
                        _3195 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_3195 + 60 len 4]
                        mem[t + 64] = bool(mem[_3195 + 64])
                        idx = idx + 1
                        s = s + 32
                        t = t + 96
                        continue 
                    return memory
                      from mem[64]
                       len _1379 + (96 * _1401) + -mem[64] + 64
                mem[64] = (32 * stor102.length) + 256
                mem[(32 * stor102.length) + 160] = 0
                mem[(32 * stor102.length) + 192] = 0
                mem[(32 * stor102.length) + 224] = 0
                mem[160] = (32 * stor102.length) + 160
                s = 160
                idx = stor102.length
                while idx - 1:
                    mem[64] = mem[64] + 96
                    mem[(32 * stor102.length) + 160] = 0
                    mem[(32 * stor102.length) + 192] = 0
                    mem[(32 * stor102.length) + 224] = 0
                    mem[s + 32] = (32 * stor102.length) + 160
                    s = s + 32
                    idx = idx - 1
                    continue 
                idx = 0
                while idx < stor102.length:
                    mem[0] = stor102[idx]
                    mem[32] = 101
                    if stor101[stor102[idx]].field_192:
                        if idx >= stor102.length:
                            revert with 0, 50
                        mem[0] = stor102[idx]
                        mem[32] = 101
                        _3245 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3245] = stor101[stor102[idx]].field_0
                        mem[_3245 + 32] = stor101[stor102[idx]].field_160
                        mem[_3245 + 64] = bool(stor101[stor102[idx]].field_192)
                        if idx >= mem[128]:
                            revert with 0, 50
                        mem[(32 * idx) + 160] = _3245
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _3204 = mem[64]
                mem[mem[64]] = 32
                _3208 = mem[128]
                mem[mem[64] + 32] = mem[128]
                idx = 0
                s = 160
                t = mem[64] + 64
                while idx < _3208:
                    _4745 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_4745 + 60 len 4]
                    mem[t + 64] = bool(mem[_4745 + 64])
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                return memory
                  from mem[64]
                   len _3204 + (96 * _3208) + -mem[64] + 64
            if uint32(call.func_hash) >> 224 != unknown_0x8129fc1c(?????):
                if unknown_0x862b50c2(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if stor101[address(msg.sender)].field_160 < 1000:
                        idx = 65
                        s = 1000
                        while idx > 1:
                            if s % 16 >= 16:
                                revert with 0, 50
                            if idx >= 66:
                                revert with 0, 50
                            mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if not idx:
                                revert with 0, 17
                            idx = idx - 1
                            s = Mask(252, 0, s) * 0.0625
                            continue 
                        revert with 0, 'Strings: hex length insufficient'
                    sub_9f9ab26f = arg1
                if uint32(call.func_hash) >> 224 != unknown_0x8b9b3b63(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x9a8d4aa4(?????):
                        require unknown_0x9f9ab26f(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return sub_9f9ab26f
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if stor101[address(msg.sender)].field_160 < 1000:
                        idx = 65
                        s = 1000
                        while idx > 1:
                            if s % 16 >= 16:
                                revert with 0, 50
                            if idx >= 66:
                                revert with 0, 50
                            mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if not idx:
                                revert with 0, 17
                            idx = idx - 1
                            s = Mask(252, 0, s) * 0.0625
                            continue 
                        revert with 0, 'Strings: hex length insufficient'
                    address(sub_07732927Address) = address(arg1)
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == uint32(arg1)
                require arg2 == address(arg2)
                mem[0] = msg.sender
                mem[32] = 101
                if stor101[address(msg.sender)].field_160 >= 100:
                    if stor101[address(arg2)].field_0 != address(arg2):
                        stor102.length++
                        stor4650[stor102.length] = address(arg2)
                    if stor101[address(arg2)].field_160 >= uint32(arg1):
                        revert with 0, 'Account has role already'
                    if uint32(arg1) > stor101[msg.sender].field_160:
                        revert with 0, 'Account is below required role'
                    stor101[address(arg2)].field_0 = address(arg2)
                    stor101[address(arg2)].field_160 = uint32(arg1)
                    stor101[address(arg2)].field_192 = 1
                    emit 0x8b5a40e1: uint32(arg1), address(arg2), msg.sender
                mem[128] = 66
                mem[64] = 256
                mem[160 len 66] = call.data[calldata.size len 66]
                mem[160 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                mem[161 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                mem[225 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0))), ('add', -11, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0)), 4), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0))), ('add', -11, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0)), 4), 0) - 256
                if not var51001:
                    revert with 0, 17
                idx = var55001
                s = var55006
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= mem[128]:
                        revert with 0, 50
                    mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if s:
                    revert with 0, 'Strings: hex length insufficient'
                _5482 = mem[64]
                mem[mem[64] + 32] = 0x4d697373696e6720726f6c652000000000000000000000000000000000000000
                _5495 = mem[128]
                mem[mem[64] + 45 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                if ceil32(_5495) <= _5495:
                    _6006 = mem[64]
                    mem[mem[64]] = _5495 + 13
                    mem[64] = _5495 + mem[64] + 45
                    mem[_5495 + _5482 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5495 + _5482 + 49] = 32
                    _6042 = mem[_6006]
                    mem[_5495 + _5482 + 81] = mem[_6006]
                    mem[_5495 + _5482 + 113 len ceil32(_6042)] = mem[_6006 + 32 len ceil32(_6042)]
                    if ceil32(_6042) > _6042:
                        mem[_5495 + _5482 + _6042 + 113] = 0
                    revert with 0, 32, mem[_5495 + _5482 + 81 len ceil32(_6042) + 32]
                mem[mem[64] + _5495 + 45] = 0
                _6043 = mem[64]
                mem[mem[64]] = _5495 + 13
                mem[64] = _5495 + mem[64] + 45
                mem[_5495 + _5482 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_5495 + _5482 + 49] = 32
                _6047 = mem[_6043]
                mem[_5495 + _5482 + 81] = mem[_6043]
                mem[_5495 + _5482 + 113 len ceil32(_6047)] = mem[_6043 + 32 len ceil32(_6047)]
                if ceil32(_6047) > _6047:
                    mem[_5495 + _5482 + _6047 + 113] = 0
                revert with 0, 32, mem[_5495 + _5482 + 81 len ceil32(_6047) + 32]
            require not msg.value
            if uint8(stor0.field_8):
                stor101[address(msg.sender)].field_0 = msg.sender
                stor101[address(msg.sender)].field_160 = 1000
                stor101[address(msg.sender)].field_176 = 0
                stor101[address(msg.sender)].field_192 = 1
                stor102.length++
                stor4650[stor102.length] = msg.sender
                stor101[address(msg.sender)].field_0 = msg.sender
                stor101[address(msg.sender)].field_160 = 1000
                stor101[address(msg.sender)].field_176 = 0
                stor101[address(msg.sender)].field_192 = 1
                stor102.length++
                stor4650[stor102.length] = msg.sender
                sub_9f9ab26f = 100
                uint256(stor205) = msg.sender or Mask(96, 160, uint256(stor205))
            else:
                if uint8(stor0.field_0):
                    revert with 0, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    stor101[address(msg.sender)].field_0 = msg.sender
                    stor101[address(msg.sender)].field_160 = 1000
                    stor101[address(msg.sender)].field_176 = 0
                    stor101[address(msg.sender)].field_192 = 1
                    stor102.length++
                    stor4650[stor102.length] = msg.sender
                    stor101[address(msg.sender)].field_0 = msg.sender
                    stor101[address(msg.sender)].field_160 = 1000
                    stor101[address(msg.sender)].field_176 = 0
                    stor101[address(msg.sender)].field_192 = 1
                    stor102.length++
                    stor4650[stor102.length] = msg.sender
                    sub_9f9ab26f = 100
                    uint256(stor205) = msg.sender or Mask(96, 160, uint256(stor205))
                else:
                    uint16(stor0.field_0) = 257
                    if uint8(stor0.field_0):
                        revert with 0, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        stor101[address(msg.sender)].field_0 = msg.sender
                        stor101[address(msg.sender)].field_160 = 1000
                        stor101[address(msg.sender)].field_176 = 0
                        stor101[address(msg.sender)].field_192 = 1
                        stor102.length++
                        stor4650[stor102.length] = msg.sender
                        stor101[address(msg.sender)].field_0 = msg.sender
                        stor101[address(msg.sender)].field_160 = 1000
                        stor101[address(msg.sender)].field_176 = 0
                        stor101[address(msg.sender)].field_192 = 1
                        stor102.length++
                        stor4650[stor102.length] = msg.sender
                        sub_9f9ab26f = 100
                        uint256(stor205) = msg.sender or Mask(96, 160, uint256(stor205))
                    else:
                        uint16(stor0.field_0) = 257
                        stor101[address(msg.sender)].field_0 = msg.sender
                        stor101[address(msg.sender)].field_160 = 1000
                        stor101[address(msg.sender)].field_176 = 0
                        stor101[address(msg.sender)].field_192 = 1
                        stor102.length++
                        stor4650[stor102.length] = msg.sender
                        uint8(stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            stor101[address(msg.sender)].field_0 = msg.sender
                            stor101[address(msg.sender)].field_160 = 1000
                            stor101[address(msg.sender)].field_176 = 0
                            stor101[address(msg.sender)].field_192 = 1
                            stor102.length++
                            stor4650[stor102.length] = msg.sender
                            sub_9f9ab26f = 100
                            uint256(stor205) = msg.sender or Mask(96, 160, uint256(stor205))
                        else:
                            uint16(stor0.field_0) = 257
                            uint8(stor0.field_8) = 0
                            if uint8(stor0.field_0):
                                revert with 0, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                stor101[address(msg.sender)].field_0 = msg.sender
                                stor101[address(msg.sender)].field_160 = 1000
                                stor101[address(msg.sender)].field_176 = 0
                                stor101[address(msg.sender)].field_192 = 1
                                stor102.length++
                                stor4650[stor102.length] = msg.sender
                                sub_9f9ab26f = 100
                                uint256(stor205) = msg.sender or Mask(96, 160, uint256(stor205))
                            else:
                                uint16(stor0.field_0) = 257
                                uint8(stor0.field_8) = 0
                                if uint8(stor0.field_0):
                                    revert with 0, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    stor101[address(msg.sender)].field_0 = msg.sender
                                    stor101[address(msg.sender)].field_160 = 1000
                                    stor101[address(msg.sender)].field_176 = 0
                                    stor101[address(msg.sender)].field_192 = 1
                                    stor102.length++
                                    stor4650[stor102.length] = msg.sender
                                    sub_9f9ab26f = 100
                                    uint256(stor205) = msg.sender or Mask(96, 160, uint256(stor205))
                                else:
                                    uint16(stor0.field_0) = 257
                                    if uint8(stor0.field_0):
                                        revert with 0, 'Initializable: contract is already initialized'
                                    if uint8(stor0.field_8):
                                        stor101[address(msg.sender)].field_0 = msg.sender
                                        stor101[address(msg.sender)].field_160 = 1000
                                        stor101[address(msg.sender)].field_176 = 0
                                        stor101[address(msg.sender)].field_192 = 1
                                        stor102.length++
                                        stor4650[stor102.length] = msg.sender
                                        sub_9f9ab26f = 100
                                        uint256(stor205) = msg.sender or Mask(96, 160, uint256(stor205))
                                    else:
                                        uint16(stor0.field_0) = 257
                                        uint8(stor0.field_8) = 0
                                        if uint8(stor0.field_0):
                                            revert with 0, 'Initializable: contract is already initialized'
                                        if uint8(stor0.field_8):
                                            stor101[address(msg.sender)].field_0 = msg.sender
                                            stor101[address(msg.sender)].field_160 = 1000
                                            stor101[address(msg.sender)].field_176 = 0
                                            stor101[address(msg.sender)].field_192 = 1
                                            stor102.length++
                                            stor4650[stor102.length] = msg.sender
                                            sub_9f9ab26f = 100
                                            uint256(stor205) = msg.sender or Mask(96, 160, uint256(stor205))
                                        else:
                                            uint16(stor0.field_0) = 257
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if uint8(stor0.field_0):
                                                revert with 0, 'Initializable: contract is already initialized'
                                            if uint8(stor0.field_8):
                                                stor101[address(msg.sender)].field_0 = msg.sender
                                                stor101[address(msg.sender)].field_160 = 1000
                                                stor101[address(msg.sender)].field_176 = 0
                                                stor101[address(msg.sender)].field_192 = 1
                                                stor102.length++
                                                stor4650[stor102.length] = msg.sender
                                                sub_9f9ab26f = 100
                                                uint256(stor205) = msg.sender or Mask(96, 160, uint256(stor205))
                                            else:
                                                uint16(stor0.field_0) = 257
                                                stor101[address(msg.sender)].field_0 = msg.sender
                                                stor101[address(msg.sender)].field_160 = 1000
                                                stor101[address(msg.sender)].field_176 = 0
                                                stor101[address(msg.sender)].field_192 = 1
                                                stor102.length++
                                                stor4650[stor102.length] = msg.sender
                                                sub_9f9ab26f = 100
                                                uint256(stor205) = msg.sender or Mask(96, 160, uint256(stor205))
                                                uint8(stor0.field_8) = 0
                                                uint8(stor0.field_8) = 0
        else:
            if unknown_0x3659cfe6(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x4f1ef286(?????) > uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != unknown_0x3659cfe6(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x372500ab(?????):
                            require unknown_0x41566585(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            if stor101[address(msg.sender)].field_160 < 1000:
                                idx = 65
                                s = 1000
                                while idx > 1:
                                    if s % 16 >= 16:
                                        revert with 0, 50
                                    if idx >= 66:
                                        revert with 0, 50
                                    mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if not idx:
                                        revert with 0, 17
                                    idx = idx - 1
                                    s = Mask(252, 0, s) * 0.0625
                                    continue 
                                revert with 0, 'Strings: hex length insufficient'
                            stor206[address(arg1)] = 0
                        else:
                            require not msg.value
                            require ext_code.size(stor203)
                            staticcall stor203.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 128
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            t = 0
                            while idx < ext_call.return_data[0]:
                                mem[mem[64] + 4] = idx
                                require ext_code.size(stor203)
                                staticcall stor203.0x6352211e with:
                                        gas gas_remaining wei
                                       args idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1396 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1436 = mem[_1396]
                                require mem[_1396] == mem[_1396 + 12 len 20]
                                if uint32(ext_code.size(mem[_1396])):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = mem[_1396]
                                    t = t
                                    continue 
                                mem[0] = mem[_1396 + 12 len 20]
                                mem[32] = 206
                                if stor206[mem[0]]:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = _1436
                                    t = t
                                    continue 
                                if t == -1:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1436
                                t = t + 1
                                continue 
                            if eth.balance(this.address) and sub_9f9ab26f > -1 / eth.balance(this.address):
                                revert with 0, 17
                            call address(sub_07732927Address) with:
                               value eth.balance(this.address) * sub_9f9ab26f / 1000 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not t:
                                revert with 0, 18
                            idx = 0
                            u = s
                            while idx < ext_call.return_data[0]:
                                mem[mem[64] + 4] = idx
                                require ext_code.size(stor203)
                                staticcall stor203.0x6352211e with:
                                        gas gas_remaining wei
                                       args idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3207 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3277 = mem[_3207]
                                require mem[_3207] == mem[_3207 + 12 len 20]
                                if uint32(ext_code.size(mem[_3207])):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    u = mem[_3207]
                                    continue 
                                mem[0] = mem[_3207 + 12 len 20]
                                mem[32] = 206
                                if not stor206[mem[0]]:
                                    call address(_3277) with:
                                       value eth.balance(this.address) / t wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _3277
                                continue 
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if stor101[address(msg.sender)].field_160 < 1000:
                            idx = 65
                            s = 1000
                            while idx > 1:
                                if s % 16 >= 16:
                                    revert with 0, 50
                                if idx >= 66:
                                    revert with 0, 50
                                mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                if not idx:
                                    revert with 0, 17
                                idx = idx - 1
                                s = Mask(252, 0, s) * 0.0625
                                continue 
                            revert with 0, 'Strings: hex length insufficient'
                        mem[128] = 0
                        if not ext_code.size(arg1):
                            revert with 0, 'ERC1967: new implementation is not a contract'
                        address(stor3608) = address(arg1)
                        if not stor4910:
                            stor4910 = 1
                            mem[196] = address(stor3608)
                            mem[160] = 36
                            mem[196 len 28] = Mask(224, 0, stor3608)
                            mem[192 len 4] = unknown_0x3659cfe6(?????)
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: delegate call to non-contract'
                            mem[228 len 64] = unknown_0x3659cfe6(?????), Mask(224, 0, stor3608), uint32(stor3608), mem[228 len 28]
                            delegate address(arg1).mem[228 len 4] with:
                                 gas gas_remaining wei
                                args mem[232]
                            if return_data.size:
                                if not delegate.return_code:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                32,
                                                39,
                                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(return_data.size) + 300 len 25] >> 56,
                                                0
                            else:
                                mem[228] = 39
                                mem[260 len 39] = 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                                if not delegate.return_code:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 32, 39, 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[299 len 25] >> 56, 0
                            ('bool', 'delegate.return_code')
                            stor4910 = 0
                            if address(stor3608) != address(stor3608):
                                revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
                            if not ext_code.size(arg1):
                                revert with 0, 'ERC1967: new implementation is not a contract'
                            address(stor3608) = address(arg1)
                            emit Upgraded(address(arg1));
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x4f1ef286(?????):
                        if unknown_0x5d1a42a1(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return 500
                        if unknown_0x72c69e8b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return 1000
                        require unknown_0x78e3f414(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == uint32(arg1)
                        require arg2 == address(arg2)
                        if address(arg2) != msg.sender:
                            revert with 0, 'Address is not sender'
                        if stor101[address(arg2)].field_160 < uint32(arg1):
                            revert with 0, 'Missing role'
                        if uint32(arg1) > stor101[msg.sender].field_160:
                            revert with 0, 'Account is below role'
                        stor101[address(arg2)].field_160 = 0
                        emit 0x45a0aeb9: uint32(arg1), address(arg2), msg.sender
                    else:
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 <= test266151307()
                        require arg2 + 35 < calldata.size
                        if arg2.length > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(arg2.length)) + 129 < 128 or ceil32(ceil32(arg2.length)) + 129 > test266151307():
                            revert with 0, 65
                        mem[128] = arg2.length
                        require arg2 + arg2.length + 36 <= calldata.size
                        mem[160 len arg2.length] = arg2[all]
                        mem[arg2.length + 160] = 0
                        if stor101[address(msg.sender)].field_160 < 1000:
                            idx = 65
                            s = 1000
                            while idx > 1:
                                if s % 16 >= 16:
                                    revert with 0, 50
                                if idx >= 66:
                                    revert with 0, 50
                                mem[idx + ceil32(ceil32(arg2.length)) + 161 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                if not idx:
                                    revert with 0, 17
                                idx = idx - 1
                                s = Mask(252, 0, s) * 0.0625
                                continue 
                            revert with 0, 'Strings: hex length insufficient'
                        if not ext_code.size(arg1):
                            revert with 0, 'ERC1967: new implementation is not a contract'
                        address(stor3608) = address(arg1)
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: delegate call to non-contract'
                        mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 160 len ceil32(arg2.length) - arg2.length]
                        if ceil32(arg2.length) > arg2.length:
                            mem[ceil32(ceil32(arg2.length)) + arg2.length + 129] = 0
                        delegate address(arg1).mem[ceil32(ceil32(arg2.length)) + 129 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(ceil32(arg2.length)) + 133 len arg2.length - 4]
                        if not return_data.size:
                            mem[ceil32(ceil32(arg2.length)) + 129] = 39
                            mem[ceil32(ceil32(arg2.length)) + 161 len 39] = 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                            if not delegate.return_code:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + 200 len 25] >> 56,
                                            0
                            if not stor4910:
                                stor4910 = 1
                                mem[ceil32(ceil32(arg2.length)) + 261] = address(stor3608)
                                mem[ceil32(ceil32(arg2.length)) + 225] = 36
                                mem[ceil32(ceil32(arg2.length)) + 257 len 4] = unknown_0x3659cfe6(?????)
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: delegate call to non-contract'
                                mem[ceil32(ceil32(arg2.length)) + 293 len 64] = 0, address(stor3608), mem[ceil32(ceil32(arg2.length)) + 293 len 28]
                                delegate address(arg1).mem[ceil32(ceil32(arg2.length)) + 293 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(ceil32(arg2.length)) + 297]
                                if return_data.size:
                                    if not delegate.return_code:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    39,
                                                    0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 365 len 25] >> 56,
                                                    0
                                else:
                                    mem[ceil32(ceil32(arg2.length)) + 293] = 39
                                    mem[ceil32(ceil32(arg2.length)) + 325 len 39] = 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                                    if not delegate.return_code:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 
                                                    32,
                                                    39,
                                                    0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + 364 len 25] >> 56,
                                                    0
                                ('bool', 'delegate.return_code')
                                stor4910 = 0
                                if address(stor3608) != address(stor3608):
                                    revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
                                if not ext_code.size(arg1):
                                    revert with 0, 'ERC1967: new implementation is not a contract'
                                address(stor3608) = address(arg1)
                                emit Upgraded(address(arg1));
                        else:
                            mem[ceil32(ceil32(arg2.length)) + 129] = return_data.size
                            mem[ceil32(ceil32(arg2.length)) + 161 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 130] = 39
                            mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 162 len 39] = 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                            if not delegate.return_code:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            39,
                                            0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 201 len 25] >> 56,
                                            0
                            if not stor4910:
                                stor4910 = 1
                                mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 262] = address(stor3608)
                                mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 226] = 36
                                mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 258 len 4] = unknown_0x3659cfe6(?????)
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: delegate call to non-contract'
                                mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 294 len 64] = 0, address(stor3608), mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 294 len 28]
                                delegate address(arg1).mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 294 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 298]
                                if return_data.size:
                                    if not delegate.return_code:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    39,
                                                    0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 366 len 25] >> 56,
                                                    0
                                else:
                                    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 294] = 39
                                    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 326 len 39] = 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                                    if not delegate.return_code:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 
                                                    32,
                                                    39,
                                                    0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 365 len 25] >> 56,
                                                    0
                                ('bool', 'delegate.return_code')
                                stor4910 = 0
                                if address(stor3608) != address(stor3608):
                                    revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
                                if not ext_code.size(arg1):
                                    revert with 0, 'ERC1967: new implementation is not a contract'
                                address(stor3608) = address(arg1)
                                emit Upgraded(address(arg1));
            else:
                if supportsInterface(bytes4 arg1) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == Mask(32, 224, arg1)
                    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
                if unknown_0x07732927(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return address(sub_07732927Address)
                if uint32(call.func_hash) >> 224 != unknown_0x0d9ac480(?????):
                    if unknown_0x16279055(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return bool(uint32(ext_code.size(arg1)))
                    if uint32(call.func_hash) >> 224 != unknown_0x284299b8(?????):
                        require unknown_0x2c3eafc1(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == uint32(arg1)
                        require arg2 == address(arg2)
                        mem[0] = msg.sender
                        mem[32] = 101
                        if stor101[address(msg.sender)].field_160 >= 100:
                            if stor101[address(arg2)].field_160 < uint32(arg1):
                                revert with 0, 'Missing role'
                            if uint32(arg1) > stor101[msg.sender].field_160:
                                revert with 0, 'Account is below role'
                            stor101[address(arg2)].field_160 = 0
                            emit 0x45a0aeb9: uint32(arg1), address(arg2), msg.sender
                        mem[128] = 66
                        mem[64] = 256
                        mem[160 len 66] = call.data[calldata.size len 66]
                        mem[160 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                        mem[161 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                        mem[225 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0))), ('add', -11, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0)), 4), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0))), ('add', -11, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0)), 4), 0) - 256
                        if not var53001:
                            revert with 0, 17
                        idx = var57001
                        s = var57006
                        while idx > 1:
                            if s % 16 >= 16:
                                revert with 0, 50
                            if idx >= mem[128]:
                                revert with 0, 50
                            mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if not idx:
                                revert with 0, 17
                            idx = idx - 1
                            s = Mask(252, 0, s) * 0.0625
                            continue 
                        if s:
                            revert with 0, 'Strings: hex length insufficient'
                        _5480 = mem[64]
                        mem[mem[64] + 32] = 0x4d697373696e6720726f6c652000000000000000000000000000000000000000
                        _5494 = mem[128]
                        mem[mem[64] + 45 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                        if ceil32(_5494) <= _5494:
                            _6005 = mem[64]
                            mem[mem[64]] = _5494 + 13
                            mem[64] = _5494 + mem[64] + 45
                            mem[_5494 + _5480 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5494 + _5480 + 49] = 32
                            _6040 = mem[_6005]
                            mem[_5494 + _5480 + 81] = mem[_6005]
                            mem[_5494 + _5480 + 113 len ceil32(_6040)] = mem[_6005 + 32 len ceil32(_6040)]
                            if ceil32(_6040) > _6040:
                                mem[_5494 + _5480 + _6040 + 113] = 0
                            revert with 0, 32, mem[_5494 + _5480 + 81 len ceil32(_6040) + 32]
                        mem[mem[64] + _5494 + 45] = 0
                        _6041 = mem[64]
                        mem[mem[64]] = _5494 + _5480 + -mem[64] + 13
                        mem[64] = _5494 + _5480 + 45
                        mem[_5494 + _5480 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5494 + _5480 + 49] = 32
                        _6046 = mem[_6041]
                        mem[_5494 + _5480 + 81] = mem[_6041]
                        mem[_5494 + _5480 + 113 len ceil32(_6046)] = mem[_6041 + 32 len ceil32(_6046)]
                        if ceil32(_6046) > _6046:
                            mem[_5494 + _5480 + _6046 + 113] = 0
                        revert with 0, 32, mem[_5494 + _5480 + 81 len ceil32(_6046) + 32]
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    require ext_code.size(stor203)
                    staticcall stor203.0x18160ddd with:
                            gas gas_remaining wei
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    require ext_code.size(stor203)
                    staticcall stor203.0x18160ddd with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    idx = 0
                    s = 0
                    while idx < ext_call.return_data[0]:
                        mem[mem[64] + 4] = idx
                        require ext_code.size(stor203)
                        staticcall stor203.0x6352211e with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1393 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1393] == mem[_1393 + 12 len 20]
                        if uint32(ext_code.size(mem[_1393])):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        mem[0] = mem[_1393 + 12 len 20]
                        mem[32] = 206
                        if stor206[mem[0]]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s == -1:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1392 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1428 = mem[_1392]
                    if mem[_1392] and sub_9f9ab26f > -1 / mem[_1392]:
                        revert with 0, 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1643 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1643] < _1428 * sub_9f9ab26f / 1000:
                        revert with 0, 17
                    if not s:
                        revert with 0, 18
                    mem[mem[64]] = mem[_1643] - (_1428 * sub_9f9ab26f / 1000) / s
                    return memory
                      from mem[64]
                       len 32
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                require ext_code.size(stor203)
                staticcall stor203.0x18160ddd with:
                        gas gas_remaining wei
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 128
                require return_data.size >= 32
                idx = 0
                s = 0
                t = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(stor203)
                    staticcall stor203.0x6352211e with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1391 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1427 = mem[_1391]
                    require mem[_1391] == mem[_1391 + 12 len 20]
                    if uint32(ext_code.size(mem[_1391])):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_1391]
                        t = t
                        continue 
                    mem[0] = mem[_1391 + 12 len 20]
                    mem[32] = 206
                    if stor206[mem[0]]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1427
                        t = t
                        continue 
                    if t == -1:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1427
                    t = t + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1390 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1426 = mem[_1390]
                if mem[_1390] and sub_9f9ab26f > -1 / mem[_1390]:
                    revert with 0, 17
                _1604 = mem[64]
                mem[mem[64] + 36] = address(sub_07732927Address)
                mem[mem[64] + 68] = _1426 * sub_9f9ab26f / 1000
                _1605 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = transfer(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_1604 + 100] = 32
                mem[_1604 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg1)):
                    revert with 0, 'Address: call to non-contract'
                _1823 = mem[_1605]
                mem[_1604 + 164 len ceil32(mem[_1605])] = mem[_1605 + 32 len ceil32(mem[_1605])]
                if ceil32(_1823) <= _1823:
                    call address(arg1) with:
                         gas gas_remaining wei
                        args mem[_1604 + 168 len _1823 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            mem[_1604 + 168] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[_1604 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1604 + ceil32(return_data.size) + 164
                            require return_data.size >= 32
                            if not t:
                                revert with 0, 18
                            idx = 0
                            u = s
                            while idx < ext_call.return_data[0]:
                                mem[mem[64] + 4] = idx
                                require ext_code.size(stor203)
                                staticcall stor203.0x6352211e with:
                                        gas gas_remaining wei
                                       args idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4758 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4845 = mem[_4758]
                                require mem[_4758] == mem[_4758 + 12 len 20]
                                if uint32(ext_code.size(mem[_4758])):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    u = mem[_4758]
                                    continue 
                                mem[0] = mem[_4758 + 12 len 20]
                                mem[32] = 206
                                if not stor206[mem[0]]:
                                    _4941 = mem[64]
                                    mem[mem[64] + 36] = address(_4845)
                                    mem[mem[64] + 68] = ext_call.return_data[0] / t
                                    _4942 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4942 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4942 + 36 len 28]
                                    mem[64] = _4941 + 164
                                    mem[_4941 + 100] = 32
                                    mem[_4941 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(address(arg1)):
                                        revert with 0, 'Address: call to non-contract'
                                    _5017 = mem[_4942]
                                    s = 0
                                    while s < _5017:
                                        mem[s + _4941 + 164] = mem[s + _4942 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_5017) > _5017:
                                        mem[_4941 + _5017 + 164] = 0
                                    call address(arg1).mem[_4941 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_4941 + 168 len _5017 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_4941 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4941 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4941 + 232] = mem[idx + _4941 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4941 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _4941 + ceil32(return_data.size) + 165
                                        mem[_4941 + 164] = return_data.size
                                        mem[_4941 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_4941 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4941 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4941 + ceil32(return_data.size) + 233] = mem[idx + _4941 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4941 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_4941 + 196] == bool(mem[_4941 + 196])
                                            if not mem[_4941 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _4845
                                continue 
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_1604 + 168] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[_1604 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1604 + ceil32(return_data.size) + 164
                            require return_data.size >= 32
                            if not t:
                                revert with 0, 18
                            idx = 0
                            u = s
                            while idx < ext_call.return_data[0]:
                                mem[mem[64] + 4] = idx
                                require ext_code.size(stor203)
                                staticcall stor203.0x6352211e with:
                                        gas gas_remaining wei
                                       args idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4759 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4846 = mem[_4759]
                                require mem[_4759] == mem[_4759 + 12 len 20]
                                if uint32(ext_code.size(mem[_4759])):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    u = mem[_4759]
                                    continue 
                                mem[0] = mem[_4759 + 12 len 20]
                                mem[32] = 206
                                if not stor206[mem[0]]:
                                    _4944 = mem[64]
                                    mem[mem[64] + 36] = address(_4846)
                                    mem[mem[64] + 68] = ext_call.return_data[0] / t
                                    _4945 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4945 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4945 + 36 len 28]
                                    mem[64] = _4944 + 164
                                    mem[_4944 + 100] = 32
                                    mem[_4944 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(address(arg1)):
                                        revert with 0, 'Address: call to non-contract'
                                    _5019 = mem[_4945]
                                    s = 0
                                    while s < _5019:
                                        mem[s + _4944 + 164] = mem[s + _4945 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_5019) > _5019:
                                        mem[_4944 + _5019 + 164] = 0
                                    call address(arg1).mem[_4944 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_4944 + 168 len _5019 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_4944 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4944 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4944 + 232] = mem[idx + _4944 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4944 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _4944 + ceil32(return_data.size) + 165
                                        mem[_4944 + 164] = return_data.size
                                        mem[_4944 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_4944 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4944 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4944 + ceil32(return_data.size) + 233] = mem[idx + _4944 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4944 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_4944 + 196] == bool(mem[_4944 + 196])
                                            if not mem[_4944 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _4846
                                continue 
                    else:
                        mem[_1604 + 164] = return_data.size
                        mem[_1604 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            mem[_1604 + ceil32(return_data.size) + 169] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[_1604 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1604 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                            require return_data.size >= 32
                            if not t:
                                revert with 0, 18
                            idx = 0
                            u = s
                            while idx < ext_call.return_data[0]:
                                mem[mem[64] + 4] = idx
                                require ext_code.size(stor203)
                                staticcall stor203.0x6352211e with:
                                        gas gas_remaining wei
                                       args idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4760 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4848 = mem[_4760]
                                require mem[_4760] == mem[_4760 + 12 len 20]
                                if uint32(ext_code.size(mem[_4760])):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    u = mem[_4760]
                                    continue 
                                mem[0] = mem[_4760 + 12 len 20]
                                mem[32] = 206
                                if not stor206[mem[0]]:
                                    _4947 = mem[64]
                                    mem[mem[64] + 36] = address(_4848)
                                    mem[mem[64] + 68] = ext_call.return_data[0] / t
                                    _4948 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4948 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4948 + 36 len 28]
                                    mem[64] = _4947 + 164
                                    mem[_4947 + 100] = 32
                                    mem[_4947 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(address(arg1)):
                                        revert with 0, 'Address: call to non-contract'
                                    _5021 = mem[_4948]
                                    s = 0
                                    while s < _5021:
                                        mem[s + _4947 + 164] = mem[s + _4948 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_5021) > _5021:
                                        mem[_4947 + _5021 + 164] = 0
                                    call address(arg1).mem[_4947 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_4947 + 168 len _5021 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_4947 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4947 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4947 + 232] = mem[idx + _4947 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4947 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _4947 + ceil32(return_data.size) + 165
                                        mem[_4947 + 164] = return_data.size
                                        mem[_4947 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_4947 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4947 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4947 + ceil32(return_data.size) + 233] = mem[idx + _4947 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4947 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_4947 + 196] == bool(mem[_4947 + 196])
                                            if not mem[_4947 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _4848
                                continue 
                        else:
                            require return_data.size >= 32
                            require mem[_1604 + 196] == bool(mem[_1604 + 196])
                            if not mem[_1604 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_1604 + ceil32(return_data.size) + 169] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[_1604 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1604 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                            require return_data.size >= 32
                            if not t:
                                revert with 0, 18
                            idx = 0
                            u = s
                            while idx < ext_call.return_data[0]:
                                mem[mem[64] + 4] = idx
                                require ext_code.size(stor203)
                                staticcall stor203.0x6352211e with:
                                        gas gas_remaining wei
                                       args idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4761 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4849 = mem[_4761]
                                require mem[_4761] == mem[_4761 + 12 len 20]
                                if uint32(ext_code.size(mem[_4761])):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    u = mem[_4761]
                                    continue 
                                mem[0] = mem[_4761 + 12 len 20]
                                mem[32] = 206
                                if not stor206[mem[0]]:
                                    _4950 = mem[64]
                                    mem[mem[64] + 36] = address(_4849)
                                    mem[mem[64] + 68] = ext_call.return_data[0] / t
                                    _4951 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4951 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4951 + 36 len 28]
                                    mem[64] = _4950 + 164
                                    mem[_4950 + 100] = 32
                                    mem[_4950 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(address(arg1)):
                                        revert with 0, 'Address: call to non-contract'
                                    _5023 = mem[_4951]
                                    s = 0
                                    while s < _5023:
                                        mem[s + _4950 + 164] = mem[s + _4951 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_5023) > _5023:
                                        mem[_4950 + _5023 + 164] = 0
                                    call address(arg1).mem[_4950 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_4950 + 168 len _5023 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_4950 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4950 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4950 + 232] = mem[idx + _4950 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4950 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _4950 + ceil32(return_data.size) + 165
                                        mem[_4950 + 164] = return_data.size
                                        mem[_4950 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_4950 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4950 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4950 + ceil32(return_data.size) + 233] = mem[idx + _4950 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4950 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_4950 + 196] == bool(mem[_4950 + 196])
                                            if not mem[_4950 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _4849
                                continue 
                else:
                    mem[_1604 + _1823 + 164] = 0
                    call address(arg1) with:
                         gas gas_remaining wei
                        args mem[_1604 + 168 len _1823 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            mem[_1604 + 168] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[_1604 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1604 + ceil32(return_data.size) + 164
                            require return_data.size >= 32
                            if not t:
                                revert with 0, 18
                            idx = 0
                            u = s
                            while idx < ext_call.return_data[0]:
                                mem[mem[64] + 4] = idx
                                require ext_code.size(stor203)
                                staticcall stor203.0x6352211e with:
                                        gas gas_remaining wei
                                       args idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4762 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4851 = mem[_4762]
                                require mem[_4762] == mem[_4762 + 12 len 20]
                                if uint32(ext_code.size(mem[_4762])):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    u = mem[_4762]
                                    continue 
                                mem[0] = mem[_4762 + 12 len 20]
                                mem[32] = 206
                                if not stor206[mem[0]]:
                                    _4953 = mem[64]
                                    mem[mem[64] + 36] = address(_4851)
                                    mem[mem[64] + 68] = ext_call.return_data[0] / t
                                    _4954 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4954 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4954 + 36 len 28]
                                    mem[64] = _4953 + 164
                                    mem[_4953 + 100] = 32
                                    mem[_4953 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(address(arg1)):
                                        revert with 0, 'Address: call to non-contract'
                                    _5025 = mem[_4954]
                                    s = 0
                                    while s < _5025:
                                        mem[s + _4953 + 164] = mem[s + _4954 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_5025) > _5025:
                                        mem[_4953 + _5025 + 164] = 0
                                    call address(arg1).mem[_4953 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_4953 + 168 len _5025 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_4953 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4953 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4953 + 232] = mem[idx + _4953 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4953 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _4953 + ceil32(return_data.size) + 165
                                        mem[_4953 + 164] = return_data.size
                                        mem[_4953 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_4953 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4953 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4953 + ceil32(return_data.size) + 233] = mem[idx + _4953 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4953 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_4953 + 196] == bool(mem[_4953 + 196])
                                            if not mem[_4953 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _4851
                                continue 
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_1604 + 168] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[_1604 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1604 + ceil32(return_data.size) + 164
                            require return_data.size >= 32
                            if not t:
                                revert with 0, 18
                            idx = 0
                            u = s
                            while idx < ext_call.return_data[0]:
                                mem[mem[64] + 4] = idx
                                require ext_code.size(stor203)
                                staticcall stor203.0x6352211e with:
                                        gas gas_remaining wei
                                       args idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4763 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4852 = mem[_4763]
                                require mem[_4763] == mem[_4763 + 12 len 20]
                                if uint32(ext_code.size(mem[_4763])):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    u = mem[_4763]
                                    continue 
                                mem[0] = mem[_4763 + 12 len 20]
                                mem[32] = 206
                                if not stor206[mem[0]]:
                                    _4956 = mem[64]
                                    mem[mem[64] + 36] = address(_4852)
                                    mem[mem[64] + 68] = ext_call.return_data[0] / t
                                    _4957 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4957 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4957 + 36 len 28]
                                    mem[64] = _4956 + 164
                                    mem[_4956 + 100] = 32
                                    mem[_4956 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(address(arg1)):
                                        revert with 0, 'Address: call to non-contract'
                                    _5027 = mem[_4957]
                                    s = 0
                                    while s < _5027:
                                        mem[s + _4956 + 164] = mem[s + _4957 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_5027) > _5027:
                                        mem[_4956 + _5027 + 164] = 0
                                    call address(arg1).mem[_4956 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_4956 + 168 len _5027 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_4956 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4956 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4956 + 232] = mem[idx + _4956 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4956 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _4956 + ceil32(return_data.size) + 165
                                        mem[_4956 + 164] = return_data.size
                                        mem[_4956 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_4956 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4956 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4956 + ceil32(return_data.size) + 233] = mem[idx + _4956 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4956 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_4956 + 196] == bool(mem[_4956 + 196])
                                            if not mem[_4956 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _4852
                                continue 
                    else:
                        mem[_1604 + 164] = return_data.size
                        mem[_1604 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            mem[_1604 + ceil32(return_data.size) + 169] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[_1604 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1604 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                            require return_data.size >= 32
                            if not t:
                                revert with 0, 18
                            idx = 0
                            u = s
                            while idx < ext_call.return_data[0]:
                                mem[mem[64] + 4] = idx
                                require ext_code.size(stor203)
                                staticcall stor203.0x6352211e with:
                                        gas gas_remaining wei
                                       args idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4764 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4854 = mem[_4764]
                                require mem[_4764] == mem[_4764 + 12 len 20]
                                if uint32(ext_code.size(mem[_4764])):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    u = mem[_4764]
                                    continue 
                                mem[0] = mem[_4764 + 12 len 20]
                                mem[32] = 206
                                if not stor206[mem[0]]:
                                    _4959 = mem[64]
                                    mem[mem[64] + 36] = address(_4854)
                                    mem[mem[64] + 68] = ext_call.return_data[0] / t
                                    _4960 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4960 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4960 + 36 len 28]
                                    mem[64] = _4959 + 164
                                    mem[_4959 + 100] = 32
                                    mem[_4959 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(address(arg1)):
                                        revert with 0, 'Address: call to non-contract'
                                    _5029 = mem[_4960]
                                    s = 0
                                    while s < _5029:
                                        mem[s + _4959 + 164] = mem[s + _4960 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_5029) > _5029:
                                        mem[_4959 + _5029 + 164] = 0
                                    call address(arg1).mem[_4959 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_4959 + 168 len _5029 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_4959 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4959 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4959 + 232] = mem[idx + _4959 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4959 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _4959 + ceil32(return_data.size) + 165
                                        mem[_4959 + 164] = return_data.size
                                        mem[_4959 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_4959 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4959 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4959 + ceil32(return_data.size) + 233] = mem[idx + _4959 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4959 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_4959 + 196] == bool(mem[_4959 + 196])
                                            if not mem[_4959 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _4854
                                continue 
                        else:
                            require return_data.size >= 32
                            require mem[_1604 + 196] == bool(mem[_1604 + 196])
                            if not mem[_1604 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_1604 + ceil32(return_data.size) + 169] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[_1604 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1604 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                            require return_data.size >= 32
                            if not t:
                                revert with 0, 18
                            idx = 0
                            u = s
                            while idx < ext_call.return_data[0]:
                                mem[mem[64] + 4] = idx
                                require ext_code.size(stor203)
                                staticcall stor203.0x6352211e with:
                                        gas gas_remaining wei
                                       args idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4765 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4855 = mem[_4765]
                                require mem[_4765] == mem[_4765 + 12 len 20]
                                if uint32(ext_code.size(mem[_4765])):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    u = mem[_4765]
                                    continue 
                                mem[0] = mem[_4765 + 12 len 20]
                                mem[32] = 206
                                if not stor206[mem[0]]:
                                    _4962 = mem[64]
                                    mem[mem[64] + 36] = address(_4855)
                                    mem[mem[64] + 68] = ext_call.return_data[0] / t
                                    _4963 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4963 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4963 + 36 len 28]
                                    mem[64] = _4962 + 164
                                    mem[_4962 + 100] = 32
                                    mem[_4962 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(address(arg1)):
                                        revert with 0, 'Address: call to non-contract'
                                    _5031 = mem[_4963]
                                    s = 0
                                    while s < _5031:
                                        mem[s + _4962 + 164] = mem[s + _4963 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_5031) > _5031:
                                        mem[_4962 + _5031 + 164] = 0
                                    call address(arg1).mem[_4962 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_4962 + 168 len _5031 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_4962 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4962 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4962 + 232] = mem[idx + _4962 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4962 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _4962 + ceil32(return_data.size) + 165
                                        mem[_4962 + 164] = return_data.size
                                        mem[_4962 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_4962 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4962 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _4962 + ceil32(return_data.size) + 233] = mem[idx + _4962 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4962 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_4962 + 196] == bool(mem[_4962 + 196])
                                            if not mem[_4962 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _4855
                                continue 
}



}
