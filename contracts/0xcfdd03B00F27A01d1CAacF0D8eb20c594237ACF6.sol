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
uint256 reflectionBalance;
uint256 totalDividend;
mapping of uint256 lastDividendAt;
uint32 stor3608;
address stor3608;
uint256 stor3608;
array of address stor31803416089537561239136862248731574845551118351359000136225178771603843531604;
uint8 stor4910;

function reflectionBalance() {
    return reflectionBalance
}

function totalDividend() {
    return totalDividend
}

function lastDividendAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    return lastDividendAt[arg1]
}

function getReflectionBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if totalDividend < lastDividendAt[arg1]:
        revert with 0, 17
    return (totalDividend - lastDividendAt[arg1])
}

function sub_f466fe5a(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    require arg2 == address(arg2)
    if uint32(stor101[address(arg2)].field_160) < uint32(arg1):
        return 0
    return 1
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        return True
    return (0xe2f73de700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function sub_78e3f414(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    require arg2 == address(arg2)
    if address(arg2) != msg.sender:
        revert with 0, 'Address is not sender'
    if uint32(stor101[address(arg2)].field_160) < uint32(arg1):
        revert with 0, 'Missing role'
    if uint32(arg1) > uint32(stor101[msg.sender].field_160):
        revert with 0, 'Account is below role'
    uint32(stor101[address(arg2)].field_160) = 0
    emit 0x45a0aeb9: uint32(arg1), address(arg2), msg.sender
}

function setNFTContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint32(stor101[address(msg.sender)].field_160) < 1000:
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

function reflectToOwners() payable {
    if msg.value:
        if reflectionBalance > !msg.value:
            revert with 0, 17
        reflectionBalance += msg.value
        require ext_code.size(stor203)
        staticcall stor203.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 18
        if totalDividend > !(msg.value / ext_call.return_data[0]):
            revert with 0, 17
        totalDividend += msg.value / ext_call.return_data[0]
}

function getCurrentRate() {
    require ext_code.size(stor203)
    staticcall stor203.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(stor203)
    staticcall stor203.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 18
    return (reflectionBalance / ext_call.return_data[0])
}

function claimReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor203)
    staticcall stor203.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(stor203)
        staticcall stor203.getApproved(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'Only owner or approved can claim rewards'
    if totalDividend < lastDividendAt[arg1]:
        revert with 0, 17
    require ext_code.size(stor203)
    staticcall stor203.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call ext_call.return_data[12 len 20] with:
       value totalDividend - lastDividendAt[arg1] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    lastDividendAt[arg1] = totalDividend
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint32(stor101[address(msg.sender)].field_160) < 1000:
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

function sub_bcb85b24(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    mem[0] = msg.sender
    mem[32] = 101
    if uint32(stor101[address(msg.sender)].field_160) >= 100:
        uint64(stor101[address(arg1)].field_192) = uint64(bool(arg2))
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
            if uint8(stor101[stor102[idx]].field_192):
                if idx >= stor102.length:
                    revert with 0, 50
                mem[0] = stor102[idx]
                mem[32] = 101
                _36 = mem[64]
                mem[64] = mem[64] + 96
                mem[_36] = address(stor101[stor102[idx]].field_0)
                mem[_36 + 32] = uint32(stor101[stor102[idx]].field_160)
                mem[_36 + 64] = bool(uint8(stor101[stor102[idx]].field_192))
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
        if uint8(stor101[stor102[idx]].field_192):
            if idx >= stor102.length:
                revert with 0, 50
            mem[0] = stor102[idx]
            mem[32] = 101
            _67 = mem[64]
            mem[64] = mem[64] + 96
            mem[_67] = address(stor101[stor102[idx]].field_0)
            mem[_67 + 32] = uint32(stor101[stor102[idx]].field_160)
            mem[_67 + 64] = bool(uint8(stor101[stor102[idx]].field_192))
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
    if uint32(stor101[address(msg.sender)].field_160) >= 100:
        if uint32(stor101[address(arg2)].field_160) < uint32(arg1):
            revert with 0, 'Missing role'
        if uint32(arg1) > uint32(stor101[msg.sender].field_160):
            revert with 0, 'Account is below role'
        uint32(stor101[address(arg2)].field_160) = 0
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

function getReflectionBalances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = arg1
    require ext_code.size(stor203)
    staticcall stor203.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = idx
        require ext_code.size(stor203)
        staticcall stor203.0x2f745c59 with:
                gas gas_remaining wei
               args address(arg1), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[0] = mem[_16]
        mem[32] = 206
        if totalDividend < lastDividendAt[mem[0]]:
            revert with 0, 17
        if s > !(totalDividend - lastDividendAt[mem[0]]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + totalDividend - lastDividendAt[mem[0]]
        continue 
    return (s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0])
}

function reflectDividend(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 101
    if uint32(stor101[address(msg.sender)].field_160) >= 100:
        if arg1:
            if reflectionBalance > !arg1:
                revert with 0, 17
            reflectionBalance += arg1
            require ext_code.size(stor203)
            staticcall stor203.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 18
            if totalDividend > !(arg1 / ext_call.return_data[0]):
                revert with 0, 17
            totalDividend += arg1 / ext_call.return_data[0]
        return 1
    mem[96] = 66
    mem[64] = 224
    mem[128 len 66] = call.data[calldata.size len 66]
    mem[128 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
    mem[129 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
    mem[193 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0))), ('add', -11, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0)), 4), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0))), ('add', -11, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0)), 4), 0) - 256
    if not var40001:
        revert with 0, 17
    idx = var44001
    s = var44006
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
    if uint32(stor101[address(msg.sender)].field_160) >= 100:
        if address(stor101[address(arg2)].field_0) != address(arg2):
            stor102.length++
            stor4650[stor102.length] = address(arg2)
        if uint32(stor101[address(arg2)].field_160) >= uint32(arg1):
            revert with 0, 'Account has role already'
        if uint32(arg1) > uint32(stor101[msg.sender].field_160):
            revert with 0, 'Account is below required role'
        address(stor101[address(arg2)].field_0) = address(arg2)
        uint32(stor101[address(arg2)].field_160) = uint32(arg1)
        uint64(stor101[address(arg2)].field_192) = 1
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

function claimRewards() {
    mem[100] = msg.sender
    require ext_code.size(stor203)
    staticcall stor203.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(stor203)
        staticcall stor203.0x2f745c59 with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _16 = mem[_15]
        mem[0] = mem[_15]
        _17 = sha3(mem[0], 206)
        if totalDividend < lastDividendAt[mem[0]]:
            revert with 0, 17
        if s > !(totalDividend - lastDividendAt[mem[0]]):
            revert with 0, 17
        mem[0] = _16
        mem[32] = 206
        lastDividendAt[_16] = totalDividend
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + totalDividend - stor[_17]
        continue 
    call msg.sender with:
       value s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    if uint32(stor101[address(msg.sender)].field_160) < 1000:
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
        address(stor101[address(msg.sender)].field_0) = msg.sender
        uint16(stor101[address(msg.sender)].field_160) = 1000
        uint16(stor101[address(msg.sender)].field_176) = 0
        uint64(stor101[address(msg.sender)].field_192) = 1
        stor102.length++
        stor4650[stor102.length] = msg.sender
        address(stor101[address(msg.sender)].field_0) = msg.sender
        uint16(stor101[address(msg.sender)].field_160) = 1000
        uint16(stor101[address(msg.sender)].field_176) = 0
        uint64(stor101[address(msg.sender)].field_192) = 1
        stor102.length++
        stor4650[stor102.length] = msg.sender
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            address(stor101[address(msg.sender)].field_0) = msg.sender
            uint16(stor101[address(msg.sender)].field_160) = 1000
            uint16(stor101[address(msg.sender)].field_176) = 0
            uint64(stor101[address(msg.sender)].field_192) = 1
            stor102.length++
            stor4650[stor102.length] = msg.sender
            address(stor101[address(msg.sender)].field_0) = msg.sender
            uint16(stor101[address(msg.sender)].field_160) = 1000
            uint16(stor101[address(msg.sender)].field_176) = 0
            uint64(stor101[address(msg.sender)].field_192) = 1
            stor102.length++
            stor4650[stor102.length] = msg.sender
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                address(stor101[address(msg.sender)].field_0) = msg.sender
                uint16(stor101[address(msg.sender)].field_160) = 1000
                uint16(stor101[address(msg.sender)].field_176) = 0
                uint64(stor101[address(msg.sender)].field_192) = 1
                stor102.length++
                stor4650[stor102.length] = msg.sender
                address(stor101[address(msg.sender)].field_0) = msg.sender
                uint16(stor101[address(msg.sender)].field_160) = 1000
                uint16(stor101[address(msg.sender)].field_176) = 0
                uint64(stor101[address(msg.sender)].field_192) = 1
                stor102.length++
                stor4650[stor102.length] = msg.sender
            else:
                uint16(stor0.field_0) = 257
                address(stor101[address(msg.sender)].field_0) = msg.sender
                uint16(stor101[address(msg.sender)].field_160) = 1000
                uint16(stor101[address(msg.sender)].field_176) = 0
                uint64(stor101[address(msg.sender)].field_192) = 1
                stor102.length++
                stor4650[stor102.length] = msg.sender
                uint8(stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    address(stor101[address(msg.sender)].field_0) = msg.sender
                    uint16(stor101[address(msg.sender)].field_160) = 1000
                    uint16(stor101[address(msg.sender)].field_176) = 0
                    uint64(stor101[address(msg.sender)].field_192) = 1
                    stor102.length++
                    stor4650[stor102.length] = msg.sender
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        address(stor101[address(msg.sender)].field_0) = msg.sender
                        uint16(stor101[address(msg.sender)].field_160) = 1000
                        uint16(stor101[address(msg.sender)].field_176) = 0
                        uint64(stor101[address(msg.sender)].field_192) = 1
                        stor102.length++
                        stor4650[stor102.length] = msg.sender
                    else:
                        uint16(stor0.field_0) = 257
                        uint8(stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            address(stor101[address(msg.sender)].field_0) = msg.sender
                            uint16(stor101[address(msg.sender)].field_160) = 1000
                            uint16(stor101[address(msg.sender)].field_176) = 0
                            uint64(stor101[address(msg.sender)].field_192) = 1
                            stor102.length++
                            stor4650[stor102.length] = msg.sender
                        else:
                            uint16(stor0.field_0) = 257
                            if uint8(stor0.field_0):
                                revert with 0, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                address(stor101[address(msg.sender)].field_0) = msg.sender
                                uint16(stor101[address(msg.sender)].field_160) = 1000
                                uint16(stor101[address(msg.sender)].field_176) = 0
                                uint64(stor101[address(msg.sender)].field_192) = 1
                                stor102.length++
                                stor4650[stor102.length] = msg.sender
                            else:
                                uint16(stor0.field_0) = 257
                                uint8(stor0.field_8) = 0
                                if uint8(stor0.field_0):
                                    revert with 0, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    address(stor101[address(msg.sender)].field_0) = msg.sender
                                    uint16(stor101[address(msg.sender)].field_160) = 1000
                                    uint16(stor101[address(msg.sender)].field_176) = 0
                                    uint64(stor101[address(msg.sender)].field_192) = 1
                                    stor102.length++
                                    stor4650[stor102.length] = msg.sender
                                else:
                                    uint16(stor0.field_0) = 257
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if uint8(stor0.field_0):
                                        revert with 0, 'Initializable: contract is already initialized'
                                    if uint8(stor0.field_8):
                                        address(stor101[address(msg.sender)].field_0) = msg.sender
                                        uint16(stor101[address(msg.sender)].field_160) = 1000
                                        uint16(stor101[address(msg.sender)].field_176) = 0
                                        uint64(stor101[address(msg.sender)].field_192) = 1
                                        stor102.length++
                                        stor4650[stor102.length] = msg.sender
                                    else:
                                        uint16(stor0.field_0) = 257
                                        address(stor101[address(msg.sender)].field_0) = msg.sender
                                        uint16(stor101[address(msg.sender)].field_160) = 1000
                                        uint16(stor101[address(msg.sender)].field_176) = 0
                                        uint64(stor101[address(msg.sender)].field_192) = 1
                                        stor102.length++
                                        stor4650[stor102.length] = msg.sender
                                        uint8(stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x78e3f414(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x372500ab(?????) > uint32(call.func_hash) >> 224:
                if getReflectionBalance(uint256 arg1) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if totalDividend < lastDividendAt[arg1]:
                        revert with 0, 17
                    return (totalDividend - lastDividendAt[arg1])
                if supportsInterface(bytes4 arg1) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == Mask(32, 224, arg1)
                    if Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
                        return True
                    return (0xe2f73de700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
                if reflectToOwners() == uint32(call.func_hash) >> 224:
                    if msg.value:
                        if reflectionBalance > !msg.value:
                            revert with 0, 17
                        reflectionBalance += msg.value
                        require ext_code.size(stor203)
                        staticcall stor203.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if totalDividend > !(msg.value / ext_call.return_data[0]):
                            revert with 0, 17
                        totalDividend += msg.value / ext_call.return_data[0]
                if unknown_0x117164d7(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    mem[0] = msg.sender
                    mem[32] = 101
                    if uint32(stor101[address(msg.sender)].field_160) >= 100:
                        if arg1:
                            if reflectionBalance > !arg1:
                                revert with 0, 17
                            reflectionBalance += arg1
                            require ext_code.size(stor203)
                            staticcall stor203.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if totalDividend > !(arg1 / ext_call.return_data[0]):
                                revert with 0, 17
                            totalDividend += arg1 / ext_call.return_data[0]
                        return 1
                    mem[128] = 66
                    mem[64] = 256
                    mem[160 len 66] = call.data[calldata.size len 66]
                    mem[160 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                    mem[161 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                    mem[225 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0))), ('add', -11, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0)), 4), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0))), ('add', -11, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0)), 4), 0) - 256
                    if not var47001:
                        revert with 0, 17
                    idx = var51001
                    s = var51006
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
                    _3437 = mem[64]
                    mem[mem[64] + 32] = 0x4d697373696e6720726f6c652000000000000000000000000000000000000000
                    _3445 = mem[128]
                    mem[mem[64] + 45 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                    if ceil32(_3445) <= _3445:
                        _3497 = mem[64]
                        mem[mem[64]] = _3445 + 13
                        mem[64] = _3445 + mem[64] + 45
                        mem[_3445 + _3437 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3445 + _3437 + 49] = 32
                        _3501 = mem[_3497]
                        mem[_3445 + _3437 + 81] = mem[_3497]
                        mem[_3445 + _3437 + 113 len ceil32(_3501)] = mem[_3497 + 32 len ceil32(_3501)]
                        if ceil32(_3501) > _3501:
                            mem[_3445 + _3437 + _3501 + 113] = 0
                        revert with 0, 32, mem[_3445 + _3437 + 81 len ceil32(_3501) + 32]
                    mem[mem[64] + _3445 + 45] = 0
                    _3502 = mem[64]
                    mem[mem[64]] = _3445 + _3437 + -mem[64] + 13
                    mem[64] = _3445 + _3437 + 45
                    mem[_3445 + _3437 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3445 + _3437 + 49] = 32
                    _3509 = mem[_3502]
                    mem[_3445 + _3437 + 81] = mem[_3502]
                    mem[_3445 + _3437 + 113 len ceil32(_3509)] = mem[_3502 + 32 len ceil32(_3509)]
                    if ceil32(_3509) > _3509:
                        mem[_3445 + _3437 + _3509 + 113] = 0
                    revert with 0, 32, mem[_3445 + _3437 + 81 len ceil32(_3509) + 32]
                if uint32(call.func_hash) >> 224 != unknown_0x2c3eafc1(?????):
                    require unknown_0x3659cfe6(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if uint32(stor101[address(msg.sender)].field_160) < 1000:
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
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == uint32(arg1)
                require arg2 == address(arg2)
                mem[0] = msg.sender
                mem[32] = 101
                if uint32(stor101[address(msg.sender)].field_160) >= 100:
                    if uint32(stor101[address(arg2)].field_160) < uint32(arg1):
                        revert with 0, 'Missing role'
                    if uint32(arg1) > uint32(stor101[msg.sender].field_160):
                        revert with 0, 'Account is below role'
                    uint32(stor101[address(arg2)].field_160) = 0
                    emit 0x45a0aeb9: uint32(arg1), address(arg2), msg.sender
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
                _3439 = mem[64]
                mem[mem[64] + 32] = 0x4d697373696e6720726f6c652000000000000000000000000000000000000000
                _3446 = mem[128]
                mem[mem[64] + 45 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                if ceil32(_3446) <= _3446:
                    _3498 = mem[64]
                    mem[mem[64]] = _3446 + 13
                    mem[64] = _3446 + mem[64] + 45
                    mem[_3446 + _3439 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3446 + _3439 + 49] = 32
                    _3503 = mem[_3498]
                    mem[_3446 + _3439 + 81] = mem[_3498]
                    mem[_3446 + _3439 + 113 len ceil32(_3503)] = mem[_3498 + 32 len ceil32(_3503)]
                    if ceil32(_3503) > _3503:
                        mem[_3446 + _3439 + _3503 + 113] = 0
                    revert with 0, 32, mem[_3446 + _3439 + 81 len ceil32(_3503) + 32]
                mem[mem[64] + _3446 + 45] = 0
                _3504 = mem[64]
                mem[mem[64]] = _3446 + _3439 + -mem[64] + 13
                mem[64] = _3446 + _3439 + 45
                mem[_3446 + _3439 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3446 + _3439 + 49] = 32
                _3510 = mem[_3504]
                mem[_3446 + _3439 + 81] = mem[_3504]
                mem[_3446 + _3439 + 113 len ceil32(_3510)] = mem[_3504 + 32 len ceil32(_3510)]
                if ceil32(_3510) > _3510:
                    mem[_3446 + _3439 + _3510 + 113] = 0
                revert with 0, 32, mem[_3446 + _3439 + 81 len ceil32(_3510) + 32]
            if unknown_0x372500ab(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                mem[132] = msg.sender
                require ext_code.size(stor203)
                staticcall stor203.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 128
                require return_data.size >= 32
                idx = 0
                s = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = idx
                    require ext_code.size(stor203)
                    staticcall stor203.0x2f745c59 with:
                            gas gas_remaining wei
                           args msg.sender, idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1284 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1311 = mem[_1284]
                    mem[0] = mem[_1284]
                    _1357 = sha3(mem[0], 206)
                    if totalDividend < lastDividendAt[mem[0]]:
                        revert with 0, 17
                    if s > !(totalDividend - lastDividendAt[mem[0]]):
                        revert with 0, 17
                    mem[0] = _1311
                    mem[32] = 206
                    lastDividendAt[_1311] = totalDividend
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + totalDividend - stor[_1357]
                    continue 
                call msg.sender with:
                   value s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0x4131ff99(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return reflectionBalance
                if unknown_0x4b6acafb(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalDividend
                if uint32(call.func_hash) >> 224 != unknown_0x4f1ef286(?????):
                    if unknown_0x5d1a42a1(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return 500
                    require unknown_0x72c69e8b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return 1000
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
                if uint32(stor101[address(msg.sender)].field_160) < 1000:
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
            if unknown_0xae169a50(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xe4bc7f98(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xe4bc7f98(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return 0
                    if unknown_0xf466fe5a(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == uint32(arg1)
                        require arg2 == address(arg2)
                        if uint32(stor101[address(arg2)].field_160) < uint32(arg1):
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
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    require ext_code.size(stor203)
                    staticcall stor203.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return (reflectionBalance / ext_call.return_data[0])
                if unknown_0xae169a50(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require ext_code.size(stor203)
                    staticcall stor203.0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != msg.sender:
                        require ext_code.size(stor203)
                        staticcall stor203.getApproved(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] != msg.sender:
                            revert with 0, 'Only owner or approved can claim rewards'
                    if totalDividend < lastDividendAt[arg1]:
                        revert with 0, 17
                    require ext_code.size(stor203)
                    staticcall stor203.0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    call ext_call.return_data[12 len 20] with:
                       value totalDividend - lastDividendAt[arg1] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    lastDividendAt[arg1] = totalDividend
                if uint32(call.func_hash) >> 224 != unknown_0xbcb85b24(?????):
                    require unknown_0xd2068857(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    return lastDividendAt[arg1]
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == bool(arg2)
                mem[0] = msg.sender
                mem[32] = 101
                if uint32(stor101[address(msg.sender)].field_160) >= 100:
                    uint64(stor101[address(arg1)].field_192) = uint64(bool(arg2))
                mem[128] = 66
                mem[64] = 256
                mem[160 len 66] = call.data[calldata.size len 66]
                mem[160 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                mem[161 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                mem[225 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0))), ('add', -11, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0)), 4), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0))), ('add', -11, (2724742338242959531295527451044037484577054111885111183851832432573236117504, 0)), 4), 0) - 256
                if not var50001:
                    revert with 0, 17
                idx = var54001
                s = var54006
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
                _3443 = mem[64]
                mem[mem[64] + 32] = 0x4d697373696e6720726f6c652000000000000000000000000000000000000000
                _3448 = mem[128]
                mem[mem[64] + 45 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                if ceil32(_3448) <= _3448:
                    _3500 = mem[64]
                    mem[mem[64]] = _3448 + 13
                    mem[64] = _3448 + mem[64] + 45
                    mem[_3448 + _3443 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3448 + _3443 + 49] = 32
                    _3507 = mem[_3500]
                    mem[_3448 + _3443 + 81] = mem[_3500]
                    mem[_3448 + _3443 + 113 len ceil32(_3507)] = mem[_3500 + 32 len ceil32(_3507)]
                    if ceil32(_3507) > _3507:
                        mem[_3448 + _3443 + _3507 + 113] = 0
                    revert with 0, 32, mem[_3448 + _3443 + 81 len ceil32(_3507) + 32]
                mem[mem[64] + _3448 + 45] = 0
                _3508 = mem[64]
                mem[mem[64]] = _3448 + _3443 + -mem[64] + 13
                mem[64] = _3448 + _3443 + 45
                mem[_3448 + _3443 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3448 + _3443 + 49] = 32
                _3512 = mem[_3508]
                mem[_3448 + _3443 + 81] = mem[_3508]
                mem[_3448 + _3443 + 113 len ceil32(_3512)] = mem[_3508 + 32 len ceil32(_3512)]
                if ceil32(_3512) > _3512:
                    mem[_3448 + _3443 + _3512 + 113] = 0
                revert with 0, 32, mem[_3448 + _3443 + 81 len ceil32(_3512) + 32]
            if unknown_0x78e3f414(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == uint32(arg1)
                require arg2 == address(arg2)
                if address(arg2) != msg.sender:
                    revert with 0, 'Address is not sender'
                if uint32(stor101[address(arg2)].field_160) < uint32(arg1):
                    revert with 0, 'Missing role'
                if uint32(arg1) > uint32(stor101[msg.sender].field_160):
                    revert with 0, 'Account is below role'
                uint32(stor101[address(arg2)].field_160) = 0
                emit 0x45a0aeb9: uint32(arg1), address(arg2), msg.sender
            else:
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
                            if uint8(stor101[stor102[idx]].field_192):
                                if idx >= stor102.length:
                                    revert with 0, 50
                                mem[0] = stor102[idx]
                                mem[32] = 101
                                _1300 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1300] = address(stor101[stor102[idx]].field_0)
                                mem[_1300 + 32] = uint32(stor101[stor102[idx]].field_160)
                                mem[_1300 + 64] = bool(uint8(stor101[stor102[idx]].field_192))
                                if idx >= mem[128]:
                                    revert with 0, 50
                                mem[(32 * idx) + 160] = _1300
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _1276 = mem[64]
                        mem[mem[64]] = 32
                        _1287 = mem[128]
                        mem[mem[64] + 32] = mem[128]
                        idx = 0
                        s = 160
                        t = mem[64] + 64
                        while idx < _1287:
                            _2381 = mem[s]
                            mem[t] = mem[mem[s] + 12 len 20]
                            mem[t + 32] = mem[_2381 + 60 len 4]
                            mem[t + 64] = bool(mem[_2381 + 64])
                            idx = idx + 1
                            s = s + 32
                            t = t + 96
                            continue 
                        return memory
                          from mem[64]
                           len _1276 + (96 * _1287) + -mem[64] + 64
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
                        if uint8(stor101[stor102[idx]].field_192):
                            if idx >= stor102.length:
                                revert with 0, 50
                            mem[0] = stor102[idx]
                            mem[32] = 101
                            _2427 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2427] = address(stor101[stor102[idx]].field_0)
                            mem[_2427 + 32] = uint32(stor101[stor102[idx]].field_160)
                            mem[_2427 + 64] = bool(uint8(stor101[stor102[idx]].field_192))
                            if idx >= mem[128]:
                                revert with 0, 50
                            mem[(32 * idx) + 160] = _2427
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _2387 = mem[64]
                    mem[mem[64]] = 32
                    _2390 = mem[128]
                    mem[mem[64] + 32] = mem[128]
                    idx = 0
                    s = 160
                    t = mem[64] + 64
                    while idx < _2390:
                        _3250 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_3250 + 60 len 4]
                        mem[t + 64] = bool(mem[_3250 + 64])
                        idx = idx + 1
                        s = s + 32
                        t = t + 96
                        continue 
                    return memory
                      from mem[64]
                       len _2387 + (96 * _2390) + -mem[64] + 64
                if uint32(call.func_hash) >> 224 != unknown_0x8129fc1c(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x8b9b3b63(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xa708d404(?????):
                            require unknown_0xa7ccabdf(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            if uint32(stor101[address(msg.sender)].field_160) < 1000:
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
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        mem[132] = address(arg1)
                        require ext_code.size(stor203)
                        staticcall stor203.0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        while idx < ext_call.return_data[0]:
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = idx
                            require ext_code.size(stor203)
                            staticcall stor203.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(arg1), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1289 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[0] = mem[_1289]
                            mem[32] = 206
                            if totalDividend < lastDividendAt[mem[0]]:
                                revert with 0, 17
                            if s > !(totalDividend - lastDividendAt[mem[0]]):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + totalDividend - lastDividendAt[mem[0]]
                            continue 
                        return (s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0])
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == uint32(arg1)
                    require arg2 == address(arg2)
                    mem[0] = msg.sender
                    mem[32] = 101
                    if uint32(stor101[address(msg.sender)].field_160) >= 100:
                        if address(stor101[address(arg2)].field_0) != address(arg2):
                            stor102.length++
                            stor4650[stor102.length] = address(arg2)
                        if uint32(stor101[address(arg2)].field_160) >= uint32(arg1):
                            revert with 0, 'Account has role already'
                        if uint32(arg1) > uint32(stor101[msg.sender].field_160):
                            revert with 0, 'Account is below required role'
                        address(stor101[address(arg2)].field_0) = address(arg2)
                        uint32(stor101[address(arg2)].field_160) = uint32(arg1)
                        uint64(stor101[address(arg2)].field_192) = 1
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
                    _3441 = mem[64]
                    mem[mem[64] + 32] = 0x4d697373696e6720726f6c652000000000000000000000000000000000000000
                    _3447 = mem[128]
                    mem[mem[64] + 45 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                    if ceil32(_3447) <= _3447:
                        _3499 = mem[64]
                        mem[mem[64]] = _3447 + 13
                        mem[64] = _3447 + mem[64] + 45
                        mem[_3447 + _3441 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3447 + _3441 + 49] = 32
                        _3505 = mem[_3499]
                        mem[_3447 + _3441 + 81] = mem[_3499]
                        mem[_3447 + _3441 + 113 len ceil32(_3505)] = mem[_3499 + 32 len ceil32(_3505)]
                        if ceil32(_3505) > _3505:
                            mem[_3447 + _3441 + _3505 + 113] = 0
                        revert with 0, 32, mem[_3447 + _3441 + 81 len ceil32(_3505) + 32]
                    mem[mem[64] + _3447 + 45] = 0
                    _3506 = mem[64]
                    mem[mem[64]] = _3447 + _3441 + -mem[64] + 13
                    mem[64] = _3447 + _3441 + 45
                    mem[_3447 + _3441 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3447 + _3441 + 49] = 32
                    _3511 = mem[_3506]
                    mem[_3447 + _3441 + 81] = mem[_3506]
                    mem[_3447 + _3441 + 113 len ceil32(_3511)] = mem[_3506 + 32 len ceil32(_3511)]
                    if ceil32(_3511) > _3511:
                        mem[_3447 + _3441 + _3511 + 113] = 0
                    revert with 0, 32, mem[_3447 + _3441 + 81 len ceil32(_3511) + 32]
                require not msg.value
                if uint8(stor0.field_8):
                    address(stor101[address(msg.sender)].field_0) = msg.sender
                    uint16(stor101[address(msg.sender)].field_160) = 1000
                    uint16(stor101[address(msg.sender)].field_176) = 0
                    uint64(stor101[address(msg.sender)].field_192) = 1
                    stor102.length++
                    stor4650[stor102.length] = msg.sender
                    address(stor101[address(msg.sender)].field_0) = msg.sender
                    uint16(stor101[address(msg.sender)].field_160) = 1000
                    uint16(stor101[address(msg.sender)].field_176) = 0
                    uint64(stor101[address(msg.sender)].field_192) = 1
                    stor102.length++
                    stor4650[stor102.length] = msg.sender
                else:
                    if uint8(stor0.field_0):
                        revert with 0, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        address(stor101[address(msg.sender)].field_0) = msg.sender
                        uint16(stor101[address(msg.sender)].field_160) = 1000
                        uint16(stor101[address(msg.sender)].field_176) = 0
                        uint64(stor101[address(msg.sender)].field_192) = 1
                        stor102.length++
                        stor4650[stor102.length] = msg.sender
                        address(stor101[address(msg.sender)].field_0) = msg.sender
                        uint16(stor101[address(msg.sender)].field_160) = 1000
                        uint16(stor101[address(msg.sender)].field_176) = 0
                        uint64(stor101[address(msg.sender)].field_192) = 1
                        stor102.length++
                        stor4650[stor102.length] = msg.sender
                    else:
                        uint16(stor0.field_0) = 257
                        if uint8(stor0.field_0):
                            revert with 0, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            address(stor101[address(msg.sender)].field_0) = msg.sender
                            uint16(stor101[address(msg.sender)].field_160) = 1000
                            uint16(stor101[address(msg.sender)].field_176) = 0
                            uint64(stor101[address(msg.sender)].field_192) = 1
                            stor102.length++
                            stor4650[stor102.length] = msg.sender
                            address(stor101[address(msg.sender)].field_0) = msg.sender
                            uint16(stor101[address(msg.sender)].field_160) = 1000
                            uint16(stor101[address(msg.sender)].field_176) = 0
                            uint64(stor101[address(msg.sender)].field_192) = 1
                            stor102.length++
                            stor4650[stor102.length] = msg.sender
                        else:
                            uint16(stor0.field_0) = 257
                            address(stor101[address(msg.sender)].field_0) = msg.sender
                            uint16(stor101[address(msg.sender)].field_160) = 1000
                            uint16(stor101[address(msg.sender)].field_176) = 0
                            uint64(stor101[address(msg.sender)].field_192) = 1
                            stor102.length++
                            stor4650[stor102.length] = msg.sender
                            uint8(stor0.field_8) = 0
                            if uint8(stor0.field_0):
                                revert with 0, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                address(stor101[address(msg.sender)].field_0) = msg.sender
                                uint16(stor101[address(msg.sender)].field_160) = 1000
                                uint16(stor101[address(msg.sender)].field_176) = 0
                                uint64(stor101[address(msg.sender)].field_192) = 1
                                stor102.length++
                                stor4650[stor102.length] = msg.sender
                            else:
                                uint16(stor0.field_0) = 257
                                uint8(stor0.field_8) = 0
                                if uint8(stor0.field_0):
                                    revert with 0, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    address(stor101[address(msg.sender)].field_0) = msg.sender
                                    uint16(stor101[address(msg.sender)].field_160) = 1000
                                    uint16(stor101[address(msg.sender)].field_176) = 0
                                    uint64(stor101[address(msg.sender)].field_192) = 1
                                    stor102.length++
                                    stor4650[stor102.length] = msg.sender
                                else:
                                    uint16(stor0.field_0) = 257
                                    uint8(stor0.field_8) = 0
                                    if uint8(stor0.field_0):
                                        revert with 0, 'Initializable: contract is already initialized'
                                    if uint8(stor0.field_8):
                                        address(stor101[address(msg.sender)].field_0) = msg.sender
                                        uint16(stor101[address(msg.sender)].field_160) = 1000
                                        uint16(stor101[address(msg.sender)].field_176) = 0
                                        uint64(stor101[address(msg.sender)].field_192) = 1
                                        stor102.length++
                                        stor4650[stor102.length] = msg.sender
                                    else:
                                        uint16(stor0.field_0) = 257
                                        if uint8(stor0.field_0):
                                            revert with 0, 'Initializable: contract is already initialized'
                                        if uint8(stor0.field_8):
                                            address(stor101[address(msg.sender)].field_0) = msg.sender
                                            uint16(stor101[address(msg.sender)].field_160) = 1000
                                            uint16(stor101[address(msg.sender)].field_176) = 0
                                            uint64(stor101[address(msg.sender)].field_192) = 1
                                            stor102.length++
                                            stor4650[stor102.length] = msg.sender
                                        else:
                                            uint16(stor0.field_0) = 257
                                            uint8(stor0.field_8) = 0
                                            if uint8(stor0.field_0):
                                                revert with 0, 'Initializable: contract is already initialized'
                                            if uint8(stor0.field_8):
                                                address(stor101[address(msg.sender)].field_0) = msg.sender
                                                uint16(stor101[address(msg.sender)].field_160) = 1000
                                                uint16(stor101[address(msg.sender)].field_176) = 0
                                                uint64(stor101[address(msg.sender)].field_192) = 1
                                                stor102.length++
                                                stor4650[stor102.length] = msg.sender
                                            else:
                                                uint16(stor0.field_0) = 257
                                                uint8(stor0.field_8) = 0
                                                uint8(stor0.field_8) = 0
                                                if uint8(stor0.field_0):
                                                    revert with 0, 'Initializable: contract is already initialized'
                                                if uint8(stor0.field_8):
                                                    address(stor101[address(msg.sender)].field_0) = msg.sender
                                                    uint16(stor101[address(msg.sender)].field_160) = 1000
                                                    uint16(stor101[address(msg.sender)].field_176) = 0
                                                    uint64(stor101[address(msg.sender)].field_192) = 1
                                                    stor102.length++
                                                    stor4650[stor102.length] = msg.sender
                                                else:
                                                    uint16(stor0.field_0) = 257
                                                    address(stor101[address(msg.sender)].field_0) = msg.sender
                                                    uint16(stor101[address(msg.sender)].field_160) = 1000
                                                    uint16(stor101[address(msg.sender)].field_176) = 0
                                                    uint64(stor101[address(msg.sender)].field_192) = 1
                                                    stor102.length++
                                                    stor4650[stor102.length] = msg.sender
                                                    uint8(stor0.field_8) = 0
                                                    uint8(stor0.field_8) = 0
}



}
