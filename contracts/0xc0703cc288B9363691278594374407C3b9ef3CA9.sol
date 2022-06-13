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
address nFTContractAddress;
uint256 reflectionBalance;
uint256 totalDividend;
mapping of uint256 lastDividendAt;
uint32 stor3608;
address stor3608;
uint256 stor3608;
array of address stor31803416089537561239136862248731574845551118351359000136225178771603843531604;
uint8 stor4910;

function NFTContract() {
    return nFTContractAddress
}

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
    if stor101[address(arg2)].field_160 < uint32(arg1):
        revert with 0, 'Missing role'
    if uint32(arg1) > stor101[msg.sender].field_160:
        revert with 0, 'Account is below role'
    stor101[address(arg2)].field_160 = 0
    emit 0x45a0aeb9: uint32(arg1), address(arg2), msg.sender
}

function sub_aaa0c759(?) {
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
    totalDividend = arg1
}

function getReflectionBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if totalDividend < lastDividendAt[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000 and lastDividendAt[arg1] >= 0:
        revert with 0, 17
    if lastDividendAt[arg1] < 0 and totalDividend > lastDividendAt[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if totalDividend - lastDividendAt[arg1] < 0:
        return 0
    if totalDividend < lastDividendAt[arg1]:
        revert with 0, 17
    return (totalDividend - lastDividendAt[arg1])
}

function sub_1724bcda(?) {
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
    reflectionBalance = arg1
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
    nFTContractAddress = arg1
}

function getCurrentRate() {
    require ext_code.size(nFTContractAddress)
    staticcall nFTContractAddress.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(nFTContractAddress)
    staticcall nFTContractAddress.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 18
    return (reflectionBalance / ext_call.return_data[0])
}

function withdrawAll() {
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
    reflectionBalance = 0
    totalDividend = 0
    require ext_code.size(nFTContractAddress)
    staticcall nFTContractAddress.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[0] = idx
        mem[32] = 206
        if lastDividendAt[idx]:
            mem[0] = idx
            mem[32] = 206
            lastDividendAt[idx] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function reflectToOwners() payable {
    if msg.value:
        require ext_code.size(nFTContractAddress)
        staticcall nFTContractAddress.totalSupply() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(nFTContractAddress)
        staticcall nFTContractAddress.totalSupply() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if msg.value / ext_call.return_data[0] and ext_call.return_data[0] > -1 / msg.value / ext_call.return_data[0]:
            revert with 0, 17
        if msg.value / ext_call.return_data[0] * ext_call.return_data[0] <= msg.value:
            if reflectionBalance > !(msg.value / ext_call.return_data[0] * ext_call.return_data[0]):
                revert with 0, 17
            reflectionBalance += msg.value / ext_call.return_data[0] * ext_call.return_data[0]
        else:
            if reflectionBalance > !msg.value:
                revert with 0, 17
            reflectionBalance += msg.value
        if totalDividend > !(msg.value / ext_call.return_data[0]):
            revert with 0, 17
        totalDividend += msg.value / ext_call.return_data[0]
}

function getReflectionBalances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = arg1
    require ext_code.size(nFTContractAddress)
    staticcall nFTContractAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = idx
        require ext_code.size(nFTContractAddress)
        staticcall nFTContractAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg1), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _18 = mem[_17]
        mem[0] = mem[_17]
        mem[32] = 206
        if totalDividend < lastDividendAt[mem[0]] - 0x8000000000000000000000000000000000000000000000000000000000000000 and lastDividendAt[mem[0]] >= 0:
            revert with 0, 17
        if lastDividendAt[mem[0]] < 0 and totalDividend > lastDividendAt[mem[0]] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if totalDividend - lastDividendAt[mem[0]] >= 0:
            mem[0] = _18
            mem[32] = 206
            if totalDividend < lastDividendAt[_18]:
                revert with 0, 17
            if 0 > !(totalDividend - lastDividendAt[_18]):
                revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
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

function claimReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(nFTContractAddress)
    staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(nFTContractAddress)
        staticcall nFTContractAddress.getApproved(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'Only owner or approved can claim rewards'
    if totalDividend < lastDividendAt[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000 and lastDividendAt[arg1] >= 0:
        revert with 0, 17
    if lastDividendAt[arg1] < 0 and totalDividend > lastDividendAt[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if totalDividend - lastDividendAt[arg1] < 0:
        require ext_code.size(nFTContractAddress)
        staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        call ext_call.return_data[12 len 20] with:
             gas 2300 wei
    else:
        if totalDividend < lastDividendAt[arg1]:
            revert with 0, 17
        require ext_code.size(nFTContractAddress)
        staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
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

function claimRewards() {
    mem[100] = msg.sender
    require ext_code.size(nFTContractAddress)
    staticcall nFTContractAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(nFTContractAddress)
        staticcall nFTContractAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _26 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _28 = mem[_26]
        mem[0] = mem[_26]
        if totalDividend < lastDividendAt[mem[0]] - 0x8000000000000000000000000000000000000000000000000000000000000000 and lastDividendAt[mem[0]] >= 0:
            revert with 0, 17
        if lastDividendAt[mem[0]] < 0 and totalDividend > lastDividendAt[mem[0]] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if totalDividend - lastDividendAt[mem[0]] >= 0:
            if totalDividend < lastDividendAt[_28]:
                revert with 0, 17
            if 0 > !(totalDividend - lastDividendAt[_28]):
                revert with 0, 17
        mem[0] = _28
        mem[32] = 206
        lastDividendAt[_28] = totalDividend
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if 0 <= eth.balance(this.address):
        call msg.sender with:
             gas 2300 wei
    else:
        reflectionBalance = 0
        totalDividend = 0
        require ext_code.size(nFTContractAddress)
        staticcall nFTContractAddress.totalSupply() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _27 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _29 = mem[_27]
        idx = 0
        while idx < _29:
            mem[0] = idx
            mem[32] = 206
            if lastDividendAt[idx]:
                mem[0] = idx
                mem[32] = 206
                lastDividendAt[idx] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function reflectDividend(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 101
    if stor101[address(msg.sender)].field_160 >= 100:
        if arg1:
            require ext_code.size(nFTContractAddress)
            staticcall nFTContractAddress.totalSupply() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(nFTContractAddress)
            staticcall nFTContractAddress.totalSupply() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / arg1 / ext_call.return_data[0]:
                revert with 0, 17
            if arg1 / ext_call.return_data[0] * ext_call.return_data[0] <= arg1:
                if reflectionBalance > !(arg1 / ext_call.return_data[0] * ext_call.return_data[0]):
                    revert with 0, 17
                reflectionBalance += arg1 / ext_call.return_data[0] * ext_call.return_data[0]
            else:
                if reflectionBalance > !arg1:
                    revert with 0, 17
                reflectionBalance += arg1
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
    _71 = mem[64]
    mem[mem[64] + 32] = 0x4d697373696e6720726f6c652000000000000000000000000000000000000000
    _73 = mem[96]
    mem[mem[64] + 45 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _86 = mem[64]
        mem[mem[64]] = mem[96] + 13
        mem[64] = _73 + mem[64] + 45
        mem[_73 + _71 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_73 + _71 + 49] = 32
        _87 = mem[_86]
        mem[_73 + _71 + 81] = mem[_86]
        mem[_73 + _71 + 113 len ceil32(_87)] = mem[_86 + 32 len ceil32(_87)]
        if ceil32(_87) > _87:
            mem[_73 + _71 + _87 + 113] = 0
        revert with 0, 32, mem[_73 + _71 + 81 len ceil32(_87) + 32]
    mem[mem[64] + mem[96] + 45] = 0
    _88 = mem[64]
    mem[mem[64]] = _73 + _71 + -mem[64] + 13
    mem[64] = _73 + _71 + 45
    mem[_73 + _71 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_73 + _71 + 49] = 32
    _89 = mem[_88]
    mem[_73 + _71 + 81] = mem[_88]
    mem[_73 + _71 + 113 len ceil32(_89)] = mem[_88 + 32 len ceil32(_89)]
    if ceil32(_89) > _89:
        mem[_73 + _71 + _89 + 113] = 0
    revert with 0, 32, mem[_73 + _71 + 81 len ceil32(_89) + 32]
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
                                    else:
                                        uint16(stor0.field_0) = 257
                                        stor101[address(msg.sender)].field_0 = msg.sender
                                        stor101[address(msg.sender)].field_160 = 1000
                                        stor101[address(msg.sender)].field_176 = 0
                                        stor101[address(msg.sender)].field_192 = 1
                                        stor102.length++
                                        stor4650[stor102.length] = msg.sender
                                        uint8(stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
}

function withdraw(uint256 arg1) {
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
    if eth.balance(this.address) >= arg1:
        if reflectionBalance < arg1 - 0x8000000000000000000000000000000000000000000000000000000000000000 and arg1 >= 0:
            revert with 0, 17
        if arg1 < 0 and reflectionBalance > arg1 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if reflectionBalance - arg1 < 0:
            reflectionBalance = 0
            totalDividend = 0
            require ext_code.size(nFTContractAddress)
            staticcall nFTContractAddress.totalSupply() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[0] = idx
                mem[32] = 206
                if lastDividendAt[idx]:
                    mem[0] = idx
                    mem[32] = 206
                    lastDividendAt[idx] = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            require ext_code.size(nFTContractAddress)
            staticcall nFTContractAddress.totalSupply() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] == -1 and arg1 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if totalDividend < (arg1 / ext_call.return_data[0]) - 0x8000000000000000000000000000000000000000000000000000000000000000 and arg1 / ext_call.return_data[0] >= 0:
                revert with 0, 17
            if arg1 / ext_call.return_data[0] < 0 and totalDividend > (arg1 / ext_call.return_data[0]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if totalDividend - (arg1 / ext_call.return_data[0]) < 0:
                reflectionBalance = 0
                totalDividend = 0
                require ext_code.size(nFTContractAddress)
                staticcall nFTContractAddress.totalSupply() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 0
                while idx < ext_call.return_data[0]:
                    mem[0] = idx
                    mem[32] = 206
                    if lastDividendAt[idx]:
                        mem[0] = idx
                        mem[32] = 206
                        lastDividendAt[idx] = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if reflectionBalance < arg1:
                    revert with 0, 17
                reflectionBalance -= arg1
                require ext_code.size(nFTContractAddress)
                staticcall nFTContractAddress.totalSupply() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if totalDividend < arg1 / ext_call.return_data[0]:
                    revert with 0, 17
                totalDividend -= arg1 / ext_call.return_data[0]
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        if reflectionBalance < eth.balance(this.address) - 0x8000000000000000000000000000000000000000000000000000000000000000 and eth.balance(this.address) >= 0:
            revert with 0, 17
        if eth.balance(this.address) < 0 and reflectionBalance > eth.balance(this.address) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if reflectionBalance - eth.balance(this.address) < 0:
            reflectionBalance = 0
            totalDividend = 0
            require ext_code.size(nFTContractAddress)
            staticcall nFTContractAddress.totalSupply() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[0] = idx
                mem[32] = 206
                if lastDividendAt[idx]:
                    mem[0] = idx
                    mem[32] = 206
                    lastDividendAt[idx] = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            require ext_code.size(nFTContractAddress)
            staticcall nFTContractAddress.totalSupply() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] == -1 and eth.balance(this.address) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if totalDividend < (eth.balance(this.address) / ext_call.return_data[0]) - 0x8000000000000000000000000000000000000000000000000000000000000000 and eth.balance(this.address) / ext_call.return_data[0] >= 0:
                revert with 0, 17
            if eth.balance(this.address) / ext_call.return_data[0] < 0 and totalDividend > (eth.balance(this.address) / ext_call.return_data[0]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if totalDividend - (eth.balance(this.address) / ext_call.return_data[0]) < 0:
                reflectionBalance = 0
                totalDividend = 0
                require ext_code.size(nFTContractAddress)
                staticcall nFTContractAddress.totalSupply() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 0
                while idx < ext_call.return_data[0]:
                    mem[0] = idx
                    mem[32] = 206
                    if lastDividendAt[idx]:
                        mem[0] = idx
                        mem[32] = 206
                        lastDividendAt[idx] = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if reflectionBalance < eth.balance(this.address):
                    revert with 0, 17
                reflectionBalance -= eth.balance(this.address)
                require ext_code.size(nFTContractAddress)
                staticcall nFTContractAddress.totalSupply() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if totalDividend < eth.balance(this.address) / ext_call.return_data[0]:
                    revert with 0, 17
                totalDividend -= eth.balance(this.address) / ext_call.return_data[0]
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x78e3f414(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x31c2273b(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x117164d7(?????) > uint32(call.func_hash) >> 224:
                    if getReflectionBalance(uint256 arg1) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if totalDividend < lastDividendAt[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000 and lastDividendAt[arg1] >= 0:
                            revert with 0, 17
                        if lastDividendAt[arg1] < 0 and totalDividend > lastDividendAt[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if totalDividend - lastDividendAt[arg1] < 0:
                            return 0
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
                    require reflectToOwners() == uint32(call.func_hash) >> 224
                    if msg.value:
                        require ext_code.size(nFTContractAddress)
                        staticcall nFTContractAddress.totalSupply() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        require ext_code.size(nFTContractAddress)
                        staticcall nFTContractAddress.totalSupply() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if msg.value / ext_call.return_data[0] and ext_call.return_data[0] > -1 / msg.value / ext_call.return_data[0]:
                            revert with 0, 17
                        if msg.value / ext_call.return_data[0] * ext_call.return_data[0] <= msg.value:
                            if reflectionBalance > !(msg.value / ext_call.return_data[0] * ext_call.return_data[0]):
                                revert with 0, 17
                            reflectionBalance += msg.value / ext_call.return_data[0] * ext_call.return_data[0]
                        else:
                            if reflectionBalance > !msg.value:
                                revert with 0, 17
                            reflectionBalance += msg.value
                        if totalDividend > !(msg.value / ext_call.return_data[0]):
                            revert with 0, 17
                        totalDividend += msg.value / ext_call.return_data[0]
                if unknown_0x117164d7(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    mem[0] = msg.sender
                    mem[32] = 101
                    if stor101[address(msg.sender)].field_160 >= 100:
                        if arg1:
                            require ext_code.size(nFTContractAddress)
                            staticcall nFTContractAddress.totalSupply() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            require ext_code.size(nFTContractAddress)
                            staticcall nFTContractAddress.totalSupply() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / arg1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if arg1 / ext_call.return_data[0] * ext_call.return_data[0] <= arg1:
                                if reflectionBalance > !(arg1 / ext_call.return_data[0] * ext_call.return_data[0]):
                                    revert with 0, 17
                                reflectionBalance += arg1 / ext_call.return_data[0] * ext_call.return_data[0]
                            else:
                                if reflectionBalance > !arg1:
                                    revert with 0, 17
                                reflectionBalance += arg1
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
                    if not var45001:
                        revert with 0, 17
                    idx = var49001
                    s = var49006
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
                    _3711 = mem[64]
                    mem[mem[64] + 32] = 0x4d697373696e6720726f6c652000000000000000000000000000000000000000
                    _3719 = mem[128]
                    mem[mem[64] + 45 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                    if ceil32(_3719) <= _3719:
                        _3771 = mem[64]
                        mem[mem[64]] = _3719 + 13
                        mem[64] = _3719 + mem[64] + 45
                        mem[_3719 + _3711 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3719 + _3711 + 49] = 32
                        _3775 = mem[_3771]
                        mem[_3719 + _3711 + 81] = mem[_3771]
                        mem[_3719 + _3711 + 113 len ceil32(_3775)] = mem[_3771 + 32 len ceil32(_3775)]
                        if ceil32(_3775) > _3775:
                            mem[_3719 + _3711 + _3775 + 113] = 0
                        revert with 0, 32, mem[_3719 + _3711 + 81 len ceil32(_3775) + 32]
                    mem[mem[64] + _3719 + 45] = 0
                    _3776 = mem[64]
                    mem[mem[64]] = _3719 + _3711 + -mem[64] + 13
                    mem[64] = _3719 + _3711 + 45
                    mem[_3719 + _3711 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3719 + _3711 + 49] = 32
                    _3783 = mem[_3776]
                    mem[_3719 + _3711 + 81] = mem[_3776]
                    mem[_3719 + _3711 + 113 len ceil32(_3783)] = mem[_3776 + 32 len ceil32(_3783)]
                    if ceil32(_3783) > _3783:
                        mem[_3719 + _3711 + _3783 + 113] = 0
                    revert with 0, 32, mem[_3719 + _3711 + 81 len ceil32(_3783) + 32]
                if unknown_0x1724bcda(?????) == uint32(call.func_hash) >> 224:
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
                    reflectionBalance = arg1
                if uint32(call.func_hash) >> 224 != unknown_0x2c3eafc1(?????):
                    require unknown_0x2e1a7d4d(?????) == uint32(call.func_hash) >> 224
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
                    if eth.balance(this.address) >= arg1:
                        if reflectionBalance < arg1 - 0x8000000000000000000000000000000000000000000000000000000000000000 and arg1 >= 0:
                            revert with 0, 17
                        if arg1 < 0 and reflectionBalance > arg1 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if reflectionBalance - arg1 < 0:
                            reflectionBalance = 0
                            totalDividend = 0
                            require ext_code.size(nFTContractAddress)
                            staticcall nFTContractAddress.totalSupply() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            while idx < ext_call.return_data[0]:
                                mem[0] = idx
                                mem[32] = 206
                                if lastDividendAt[idx]:
                                    mem[0] = idx
                                    mem[32] = 206
                                    lastDividendAt[idx] = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            require ext_code.size(nFTContractAddress)
                            staticcall nFTContractAddress.totalSupply() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if ext_call.return_data[0] == -1 and arg1 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 17
                            if totalDividend < (arg1 / ext_call.return_data[0]) - 0x8000000000000000000000000000000000000000000000000000000000000000 and arg1 / ext_call.return_data[0] >= 0:
                                revert with 0, 17
                            if arg1 / ext_call.return_data[0] < 0 and totalDividend > (arg1 / ext_call.return_data[0]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if totalDividend - (arg1 / ext_call.return_data[0]) < 0:
                                reflectionBalance = 0
                                totalDividend = 0
                                require ext_code.size(nFTContractAddress)
                                staticcall nFTContractAddress.totalSupply() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = 0
                                while idx < ext_call.return_data[0]:
                                    mem[0] = idx
                                    mem[32] = 206
                                    if lastDividendAt[idx]:
                                        mem[0] = idx
                                        mem[32] = 206
                                        lastDividendAt[idx] = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if reflectionBalance < arg1:
                                    revert with 0, 17
                                reflectionBalance -= arg1
                                require ext_code.size(nFTContractAddress)
                                staticcall nFTContractAddress.totalSupply() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if totalDividend < arg1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                totalDividend -= arg1 / ext_call.return_data[0]
                        call msg.sender with:
                           value arg1 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if reflectionBalance < eth.balance(this.address) - 0x8000000000000000000000000000000000000000000000000000000000000000 and eth.balance(this.address) >= 0:
                            revert with 0, 17
                        if eth.balance(this.address) < 0 and reflectionBalance > eth.balance(this.address) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if reflectionBalance - eth.balance(this.address) < 0:
                            reflectionBalance = 0
                            totalDividend = 0
                            require ext_code.size(nFTContractAddress)
                            staticcall nFTContractAddress.totalSupply() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            while idx < ext_call.return_data[0]:
                                mem[0] = idx
                                mem[32] = 206
                                if lastDividendAt[idx]:
                                    mem[0] = idx
                                    mem[32] = 206
                                    lastDividendAt[idx] = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            require ext_code.size(nFTContractAddress)
                            staticcall nFTContractAddress.totalSupply() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if ext_call.return_data[0] == -1 and eth.balance(this.address) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 17
                            if totalDividend < (eth.balance(this.address) / ext_call.return_data[0]) - 0x8000000000000000000000000000000000000000000000000000000000000000 and eth.balance(this.address) / ext_call.return_data[0] >= 0:
                                revert with 0, 17
                            if eth.balance(this.address) / ext_call.return_data[0] < 0 and totalDividend > (eth.balance(this.address) / ext_call.return_data[0]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if totalDividend - (eth.balance(this.address) / ext_call.return_data[0]) < 0:
                                reflectionBalance = 0
                                totalDividend = 0
                                require ext_code.size(nFTContractAddress)
                                staticcall nFTContractAddress.totalSupply() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = 0
                                while idx < ext_call.return_data[0]:
                                    mem[0] = idx
                                    mem[32] = 206
                                    if lastDividendAt[idx]:
                                        mem[0] = idx
                                        mem[32] = 206
                                        lastDividendAt[idx] = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if reflectionBalance < eth.balance(this.address):
                                    revert with 0, 17
                                reflectionBalance -= eth.balance(this.address)
                                require ext_code.size(nFTContractAddress)
                                staticcall nFTContractAddress.totalSupply() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if totalDividend < eth.balance(this.address) / ext_call.return_data[0]:
                                    revert with 0, 17
                                totalDividend -= eth.balance(this.address) / ext_call.return_data[0]
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
                _3713 = mem[64]
                mem[mem[64] + 32] = 0x4d697373696e6720726f6c652000000000000000000000000000000000000000
                _3720 = mem[128]
                mem[mem[64] + 45 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                if ceil32(_3720) <= _3720:
                    _3772 = mem[64]
                    mem[mem[64]] = _3720 + 13
                    mem[64] = _3720 + mem[64] + 45
                    mem[_3720 + _3713 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3720 + _3713 + 49] = 32
                    _3777 = mem[_3772]
                    mem[_3720 + _3713 + 81] = mem[_3772]
                    mem[_3720 + _3713 + 113 len ceil32(_3777)] = mem[_3772 + 32 len ceil32(_3777)]
                    if ceil32(_3777) > _3777:
                        mem[_3720 + _3713 + _3777 + 113] = 0
                    revert with 0, 32, mem[_3720 + _3713 + 81 len ceil32(_3777) + 32]
                mem[mem[64] + _3720 + 45] = 0
                _3778 = mem[64]
                mem[mem[64]] = _3720 + _3713 + -mem[64] + 13
                mem[64] = _3720 + _3713 + 45
                mem[_3720 + _3713 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3720 + _3713 + 49] = 32
                _3784 = mem[_3778]
                mem[_3720 + _3713 + 81] = mem[_3778]
                mem[_3720 + _3713 + 113 len ceil32(_3784)] = mem[_3778 + 32 len ceil32(_3784)]
                if ceil32(_3784) > _3784:
                    mem[_3720 + _3713 + _3784 + 113] = 0
                revert with 0, 32, mem[_3720 + _3713 + 81 len ceil32(_3784) + 32]
            if unknown_0x4b6acafb(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x31c2273b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return nFTContractAddress
                if uint32(call.func_hash) >> 224 != unknown_0x3659cfe6(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x372500ab(?????):
                        require unknown_0x4131ff99(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return reflectionBalance
                    require not msg.value
                    mem[132] = msg.sender
                    require ext_code.size(nFTContractAddress)
                    staticcall nFTContractAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    idx = 0
                    while idx < ext_call.return_data[0]:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = idx
                        require ext_code.size(nFTContractAddress)
                        staticcall nFTContractAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args msg.sender, idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1427 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1463 = mem[_1427]
                        mem[0] = mem[_1427]
                        if totalDividend < lastDividendAt[mem[0]] - 0x8000000000000000000000000000000000000000000000000000000000000000 and lastDividendAt[mem[0]] >= 0:
                            revert with 0, 17
                        if lastDividendAt[mem[0]] < 0 and totalDividend > lastDividendAt[mem[0]] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if totalDividend - lastDividendAt[mem[0]] >= 0:
                            if totalDividend < lastDividendAt[_1463]:
                                revert with 0, 17
                            if 0 > !(totalDividend - lastDividendAt[_1463]):
                                revert with 0, 17
                        mem[0] = _1463
                        mem[32] = 206
                        lastDividendAt[_1463] = totalDividend
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if 0 <= eth.balance(this.address):
                        call msg.sender with:
                             gas 2300 wei
                    else:
                        reflectionBalance = 0
                        totalDividend = 0
                        require ext_code.size(nFTContractAddress)
                        staticcall nFTContractAddress.totalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1462 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1511 = mem[_1462]
                        idx = 0
                        while idx < _1511:
                            mem[0] = idx
                            mem[32] = 206
                            if lastDividendAt[idx]:
                                mem[0] = idx
                                mem[32] = 206
                                lastDividendAt[idx] = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
            if unknown_0xaaa0c759(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xe4bc7f98(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xe4bc7f98(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return 0
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
                    require ext_code.size(nFTContractAddress)
                    staticcall nFTContractAddress.totalSupply() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    require ext_code.size(nFTContractAddress)
                    staticcall nFTContractAddress.totalSupply() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return (reflectionBalance / ext_call.return_data[0])
                if unknown_0xaaa0c759(?????) == uint32(call.func_hash) >> 224:
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
                    totalDividend = arg1
                if unknown_0xae169a50(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require ext_code.size(nFTContractAddress)
                    staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != msg.sender:
                        require ext_code.size(nFTContractAddress)
                        staticcall nFTContractAddress.getApproved(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] != msg.sender:
                            revert with 0, 'Only owner or approved can claim rewards'
                    if totalDividend < lastDividendAt[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000 and lastDividendAt[arg1] >= 0:
                        revert with 0, 17
                    if lastDividendAt[arg1] < 0 and totalDividend > lastDividendAt[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if totalDividend - lastDividendAt[arg1] < 0:
                        require ext_code.size(nFTContractAddress)
                        staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        call ext_call.return_data[12 len 20] with:
                             gas 2300 wei
                    else:
                        if totalDividend < lastDividendAt[arg1]:
                            revert with 0, 17
                        require ext_code.size(nFTContractAddress)
                        staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
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
                if stor101[address(msg.sender)].field_160 >= 100:
                    stor101[address(arg1)].field_192 = uint64(bool(arg2))
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
                _3717 = mem[64]
                mem[mem[64] + 32] = 0x4d697373696e6720726f6c652000000000000000000000000000000000000000
                _3722 = mem[128]
                mem[mem[64] + 45 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                if ceil32(_3722) <= _3722:
                    _3774 = mem[64]
                    mem[mem[64]] = _3722 + 13
                    mem[64] = _3722 + mem[64] + 45
                    mem[_3722 + _3717 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3722 + _3717 + 49] = 32
                    _3781 = mem[_3774]
                    mem[_3722 + _3717 + 81] = mem[_3774]
                    mem[_3722 + _3717 + 113 len ceil32(_3781)] = mem[_3774 + 32 len ceil32(_3781)]
                    if ceil32(_3781) > _3781:
                        mem[_3722 + _3717 + _3781 + 113] = 0
                    revert with 0, 32, mem[_3722 + _3717 + 81 len ceil32(_3781) + 32]
                mem[mem[64] + _3722 + 45] = 0
                _3782 = mem[64]
                mem[mem[64]] = _3722 + _3717 + -mem[64] + 13
                mem[64] = _3722 + _3717 + 45
                mem[_3722 + _3717 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3722 + _3717 + 49] = 32
                _3786 = mem[_3782]
                mem[_3722 + _3717 + 81] = mem[_3782]
                mem[_3722 + _3717 + 113 len ceil32(_3786)] = mem[_3782 + 32 len ceil32(_3786)]
                if ceil32(_3786) > _3786:
                    mem[_3722 + _3717 + _3786 + 113] = 0
                revert with 0, 32, mem[_3722 + _3717 + 81 len ceil32(_3786) + 32]
            if unknown_0x853828b6(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x853828b6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
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
                    reflectionBalance = 0
                    totalDividend = 0
                    require ext_code.size(nFTContractAddress)
                    staticcall nFTContractAddress.totalSupply() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    while idx < ext_call.return_data[0]:
                        mem[0] = idx
                        mem[32] = 206
                        if lastDividendAt[idx]:
                            mem[0] = idx
                            mem[32] = 206
                            lastDividendAt[idx] = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    call msg.sender with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if uint32(call.func_hash) >> 224 != unknown_0x8b9b3b63(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xa708d404(?????):
                        require unknown_0xa7ccabdf(?????) == uint32(call.func_hash) >> 224
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
                        nFTContractAddress = address(arg1)
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    mem[132] = address(arg1)
                    require ext_code.size(nFTContractAddress)
                    staticcall nFTContractAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    idx = 0
                    while idx < ext_call.return_data[0]:
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = idx
                        require ext_code.size(nFTContractAddress)
                        staticcall nFTContractAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args address(arg1), idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1434 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1477 = mem[_1434]
                        mem[0] = mem[_1434]
                        mem[32] = 206
                        if totalDividend < lastDividendAt[mem[0]] - 0x8000000000000000000000000000000000000000000000000000000000000000 and lastDividendAt[mem[0]] >= 0:
                            revert with 0, 17
                        if lastDividendAt[mem[0]] < 0 and totalDividend > lastDividendAt[mem[0]] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if totalDividend - lastDividendAt[mem[0]] >= 0:
                            mem[0] = _1477
                            mem[32] = 206
                            if totalDividend < lastDividendAt[_1477]:
                                revert with 0, 17
                            if 0 > !(totalDividend - lastDividendAt[_1477]):
                                revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    return 0
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
                _3715 = mem[64]
                mem[mem[64] + 32] = 0x4d697373696e6720726f6c652000000000000000000000000000000000000000
                _3721 = mem[128]
                mem[mem[64] + 45 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                if ceil32(_3721) <= _3721:
                    _3773 = mem[64]
                    mem[mem[64]] = _3721 + 13
                    mem[64] = _3721 + mem[64] + 45
                    mem[_3721 + _3715 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3721 + _3715 + 49] = 32
                    _3779 = mem[_3773]
                    mem[_3721 + _3715 + 81] = mem[_3773]
                    mem[_3721 + _3715 + 113 len ceil32(_3779)] = mem[_3773 + 32 len ceil32(_3779)]
                    if ceil32(_3779) > _3779:
                        mem[_3721 + _3715 + _3779 + 113] = 0
                    revert with 0, 32, mem[_3721 + _3715 + 81 len ceil32(_3779) + 32]
                mem[mem[64] + _3721 + 45] = 0
                _3780 = mem[64]
                mem[mem[64]] = _3721 + _3715 + -mem[64] + 13
                mem[64] = _3721 + _3715 + 45
                mem[_3721 + _3715 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3721 + _3715 + 49] = 32
                _3785 = mem[_3780]
                mem[_3721 + _3715 + 81] = mem[_3780]
                mem[_3721 + _3715 + 113 len ceil32(_3785)] = mem[_3780 + 32 len ceil32(_3785)]
                if ceil32(_3785) > _3785:
                    mem[_3721 + _3715 + _3785 + 113] = 0
                revert with 0, 32, mem[_3721 + _3715 + 81 len ceil32(_3785) + 32]
            if unknown_0x78e3f414(?????) == uint32(call.func_hash) >> 224:
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
                                _1449 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1449] = stor101[stor102[idx]].field_0
                                mem[_1449 + 32] = stor101[stor102[idx]].field_160
                                mem[_1449 + 64] = bool(stor101[stor102[idx]].field_192)
                                if idx >= mem[128]:
                                    revert with 0, 50
                                mem[(32 * idx) + 160] = _1449
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _1403 = mem[64]
                        mem[mem[64]] = 32
                        _1430 = mem[128]
                        mem[mem[64] + 32] = mem[128]
                        idx = 0
                        s = 160
                        t = mem[64] + 64
                        while idx < _1430:
                            _2587 = mem[s]
                            mem[t] = mem[mem[s] + 12 len 20]
                            mem[t + 32] = mem[_2587 + 60 len 4]
                            mem[t + 64] = bool(mem[_2587 + 64])
                            idx = idx + 1
                            s = s + 32
                            t = t + 96
                            continue 
                        return memory
                          from mem[64]
                           len _1403 + (96 * _1430) + -mem[64] + 64
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
                            _2639 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2639] = stor101[stor102[idx]].field_0
                            mem[_2639 + 32] = stor101[stor102[idx]].field_160
                            mem[_2639 + 64] = bool(stor101[stor102[idx]].field_192)
                            if idx >= mem[128]:
                                revert with 0, 50
                            mem[(32 * idx) + 160] = _2639
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _2597 = mem[64]
                    mem[mem[64]] = 32
                    _2600 = mem[128]
                    mem[mem[64] + 32] = mem[128]
                    idx = 0
                    s = 160
                    t = mem[64] + 64
                    while idx < _2600:
                        _3504 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_3504 + 60 len 4]
                        mem[t + 64] = bool(mem[_3504 + 64])
                        idx = idx + 1
                        s = s + 32
                        t = t + 96
                        continue 
                    return memory
                      from mem[64]
                       len _2597 + (96 * _2600) + -mem[64] + 64
                require unknown_0x8129fc1c(?????) == uint32(call.func_hash) >> 224
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
                                                else:
                                                    uint16(stor0.field_0) = 257
                                                    stor101[address(msg.sender)].field_0 = msg.sender
                                                    stor101[address(msg.sender)].field_160 = 1000
                                                    stor101[address(msg.sender)].field_176 = 0
                                                    stor101[address(msg.sender)].field_192 = 1
                                                    stor102.length++
                                                    stor4650[stor102.length] = msg.sender
                                                    uint8(stor0.field_8) = 0
                                                    uint8(stor0.field_8) = 0
}



}
