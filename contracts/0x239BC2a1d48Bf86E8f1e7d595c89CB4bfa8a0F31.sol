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
uint256 sub_9f9ab26f;
address sub_07732927Address;
uint256 stor205;
mapping of uint8 stor206;
mapping of uint8 stor207;
uint32 stor3608;
address stor3608;
uint256 stor3608;
array of address stor31803416089537561239136862248731574845551118351359000136225178771603843531604;
uint8 stor4910;

function sub_07732927(?) {
    return address(sub_07732927Address)
}

function NFTContract() {
    return nFTContractAddress
}

function sub_9f9ab26f(?) {
    return sub_9f9ab26f
}

function donate() payable {
  stop
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

function blacklistToken(uint256 arg1) {
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
    stor207[arg1] = 1
}

function whitelistToken(uint256 arg1) {
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
    stor207[arg1] = 0
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
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    require ext_code.size(nFTContractAddress)
    staticcall nFTContractAddress.0x18160ddd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(nFTContractAddress)
    staticcall nFTContractAddress.0x18160ddd with:
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
        require ext_code.size(nFTContractAddress)
        staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_19] == mem[_19 + 12 len 20]
        if uint32(ext_code.size(mem[_19])):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[_19 + 12 len 20]
        mem[32] = 206
        if stor206[mem[0]]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 207
        if stor207[idx]:
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
        _75 = mem[_73]
        mem[_60 + _58 + 81] = mem[_73]
        mem[_60 + _58 + 113 len ceil32(_75)] = mem[_73 + 32 len ceil32(_75)]
        if ceil32(_75) > _75:
            mem[_75 + _60 + _58 + 113] = 0
        revert with 0, 32, mem[_60 + _58 + 81 len ceil32(_75) + 32]
    mem[mem[96] + mem[64] + 45] = 0
    _74 = mem[64]
    mem[mem[64]] = mem[96] + 13
    mem[64] = _60 + mem[64] + 45
    mem[_60 + _58 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_60 + _58 + 49] = 32
    _76 = mem[_74]
    mem[_60 + _58 + 81] = mem[_74]
    mem[_60 + _58 + 113 len ceil32(_76)] = mem[_74 + 32 len ceil32(_76)]
    if ceil32(_76) > _76:
        mem[_76 + _60 + _58 + 113] = 0
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

function sub_857abbd4(?) {
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
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(arg1)):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call address(arg1) with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
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
        _82 = mem[_80]
        mem[_67 + _65 + 81] = mem[_80]
        mem[_67 + _65 + 113 len ceil32(_82)] = mem[_80 + 32 len ceil32(_82)]
        if ceil32(_82) > _82:
            mem[_82 + _67 + _65 + 113] = 0
        revert with 0, 32, mem[_67 + _65 + 81 len ceil32(_82) + 32]
    mem[mem[96] + mem[64] + 45] = 0
    _81 = mem[64]
    mem[mem[64]] = mem[96] + 13
    mem[64] = _67 + mem[64] + 45
    mem[_67 + _65 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_67 + _65 + 49] = 32
    _83 = mem[_81]
    mem[_67 + _65 + 81] = mem[_81]
    mem[_67 + _65 + 113 len ceil32(_83)] = mem[_81 + 32 len ceil32(_83)]
    if ceil32(_83) > _83:
        mem[_83 + _67 + _65 + 113] = 0
    revert with 0, 32, mem[_67 + _65 + 81 len ceil32(_83) + 32]
}

function sub_284299b8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(nFTContractAddress)
    staticcall nFTContractAddress.0x18160ddd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(nFTContractAddress)
    staticcall nFTContractAddress.0x18160ddd with:
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
        require ext_code.size(nFTContractAddress)
        staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _30 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_30] == mem[_30 + 12 len 20]
        if uint32(ext_code.size(mem[_30])):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[_30 + 12 len 20]
        mem[32] = 206
        if stor206[mem[0]]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 207
        if stor207[idx]:
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
    _29 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _31 = mem[_29]
    if mem[_29] and sub_9f9ab26f > -1 / mem[_29]:
        revert with 0, 17
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _37 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_37] < _31 * sub_9f9ab26f / 1000:
        revert with 0, 17
    if not s:
        revert with 0, 18
    mem[mem[64]] = mem[_37] - (_31 * sub_9f9ab26f / 1000) / s
    return memory
      from mem[64]
       len 32
}

function claimRewards() {
    require ext_code.size(nFTContractAddress)
    staticcall nFTContractAddress.0x18160ddd with:
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
        require ext_code.size(nFTContractAddress)
        staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _14 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _15 = mem[_14]
        require mem[_14] == mem[_14 + 12 len 20]
        if uint32(ext_code.size(mem[_14])):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_14]
            t = t
            continue 
        mem[0] = mem[_14 + 12 len 20]
        mem[32] = 206
        if stor206[mem[0]]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _15
            t = t
            continue 
        mem[0] = idx
        mem[32] = 207
        if stor207[idx]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _15
            t = t
            continue 
        if t == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _15
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
        require ext_code.size(nFTContractAddress)
        staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _27 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _28 = mem[_27]
        require mem[_27] == mem[_27 + 12 len 20]
        if uint32(ext_code.size(mem[_27])):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = mem[_27]
            continue 
        mem[0] = mem[_27 + 12 len 20]
        mem[32] = 206
        if not stor206[mem[0]]:
            call address(_28) with:
               value eth.balance(this.address) / t wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        u = _28
        continue 
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
        _101 = mem[_99]
        mem[_86 + _84 + 81] = mem[_99]
        mem[_86 + _84 + 113 len ceil32(_101)] = mem[_99 + 32 len ceil32(_101)]
        if ceil32(_101) > _101:
            mem[_101 + _86 + _84 + 113] = 0
        revert with 0, 32, mem[_86 + _84 + 81 len ceil32(_101) + 32]
    mem[mem[96] + mem[64] + 45] = 0
    _100 = mem[64]
    mem[mem[64]] = mem[96] + 13
    mem[64] = _86 + mem[64] + 45
    mem[_86 + _84 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_86 + _84 + 49] = 32
    _102 = mem[_100]
    mem[_86 + _84 + 81] = mem[_100]
    mem[_86 + _84 + 113 len ceil32(_102)] = mem[_100 + 32 len ceil32(_102)]
    if ceil32(_102) > _102:
        mem[_102 + _86 + _84 + 113] = 0
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
        mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = 0
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
        sub_9f9ab26f = 0
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
            sub_9f9ab26f = 0
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
                sub_9f9ab26f = 0
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
                    sub_9f9ab26f = 0
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
                        sub_9f9ab26f = 0
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
                            sub_9f9ab26f = 0
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
                                sub_9f9ab26f = 0
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
                                    sub_9f9ab26f = 0
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
                                        sub_9f9ab26f = 0
                                        uint256(stor205) = msg.sender or Mask(96, 160, uint256(stor205))
                                    else:
                                        uint16(stor0.field_0) = 257
                                        stor101[address(msg.sender)].field_0 = msg.sender
                                        stor101[address(msg.sender)].field_160 = 1000
                                        stor101[address(msg.sender)].field_176 = 0
                                        stor101[address(msg.sender)].field_192 = 1
                                        stor102.length++
                                        stor4650[stor102.length] = msg.sender
                                        sub_9f9ab26f = 0
                                        uint256(stor205) = msg.sender or Mask(96, 160, uint256(stor205))
                                        uint8(stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
}

function sub_0d9ac480(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(nFTContractAddress)
    staticcall nFTContractAddress.0x18160ddd with:
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
        require ext_code.size(nFTContractAddress)
        staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _115 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _117 = mem[_115]
        require mem[_115] == mem[_115 + 12 len 20]
        if uint32(ext_code.size(mem[_115])):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_115]
            t = t
            continue 
        mem[0] = mem[_115 + 12 len 20]
        mem[32] = 206
        if stor206[mem[0]]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _117
            t = t
            continue 
        mem[0] = idx
        mem[32] = 207
        if stor207[idx]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _117
            t = t
            continue 
        if t == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _117
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
    _114 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _116 = mem[_114]
    if mem[_114] and sub_9f9ab26f > -1 / mem[_114]:
        revert with 0, 17
    _120 = mem[64]
    mem[mem[64] + 36] = address(sub_07732927Address)
    mem[mem[64] + 68] = _116 * sub_9f9ab26f / 1000
    _121 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_120 + 100] = 32
    mem[_120 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(arg1)):
        revert with 0, 'Address: call to non-contract'
    _128 = mem[_121]
    mem[_120 + 164 len ceil32(mem[_121])] = mem[_121 + 32 len ceil32(mem[_121])]
    if ceil32(_128) <= _128:
        call address(arg1) with:
             gas gas_remaining wei
            args mem[_120 + 168 len _128 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if not mem[96]:
                mem[_120 + 168] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_120 + 164] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _120 + ceil32(return_data.size) + 164
                require return_data.size >= 32
                if not t:
                    revert with 0, 18
                idx = 0
                u = s
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(nFTContractAddress)
                    staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1408 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1424 = mem[_1408]
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
                        _1440 = mem[64]
                        mem[mem[64] + 36] = address(_1424)
                        mem[mem[64] + 68] = ext_call.return_data[0] / t
                        _1441 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1441 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1441 + 36 len 28]
                        mem[64] = _1440 + 164
                        mem[_1440 + 100] = 32
                        mem[_1440 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(arg1)):
                            revert with 0, 'Address: call to non-contract'
                        _1504 = mem[_1441]
                        s = 0
                        while s < _1504:
                            mem[s + _1440 + 164] = mem[s + _1441 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1504) > _1504:
                            mem[_1504 + _1440 + 164] = 0
                        call address(arg1).mem[_1440 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1440 + 168 len _1504 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1440 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1440 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1440 + 232] = mem[idx + _1440 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1440 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _1440 + ceil32(return_data.size) + 165
                            mem[_1440 + 164] = return_data.size
                            mem[_1440 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1440 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1440 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1440 + ceil32(return_data.size) + 233] = mem[idx + _1440 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1440 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1440 + 196] == bool(mem[_1440 + 196])
                                if not mem[_1440 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _1424
                    continue 
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_120 + 168] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_120 + 164] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _120 + ceil32(return_data.size) + 164
                require return_data.size >= 32
                if not t:
                    revert with 0, 18
                idx = 0
                u = s
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(nFTContractAddress)
                    staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1409 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1425 = mem[_1409]
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
                        _1443 = mem[64]
                        mem[mem[64] + 36] = address(_1425)
                        mem[mem[64] + 68] = ext_call.return_data[0] / t
                        _1444 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1444 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1444 + 36 len 28]
                        mem[64] = _1443 + 164
                        mem[_1443 + 100] = 32
                        mem[_1443 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(arg1)):
                            revert with 0, 'Address: call to non-contract'
                        _1506 = mem[_1444]
                        s = 0
                        while s < _1506:
                            mem[s + _1443 + 164] = mem[s + _1444 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1506) > _1506:
                            mem[_1506 + _1443 + 164] = 0
                        call address(arg1).mem[_1443 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1443 + 168 len _1506 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1443 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1443 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1443 + 232] = mem[idx + _1443 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1443 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _1443 + ceil32(return_data.size) + 165
                            mem[_1443 + 164] = return_data.size
                            mem[_1443 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1443 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1443 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1443 + ceil32(return_data.size) + 233] = mem[idx + _1443 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1443 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1443 + 196] == bool(mem[_1443 + 196])
                                if not mem[_1443 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _1425
                    continue 
        else:
            mem[_120 + 164] = return_data.size
            mem[_120 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                mem[_120 + ceil32(return_data.size) + 169] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_120 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _120 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                require return_data.size >= 32
                if not t:
                    revert with 0, 18
                idx = 0
                u = s
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(nFTContractAddress)
                    staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1410 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1426 = mem[_1410]
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
                        _1446 = mem[64]
                        mem[mem[64] + 36] = address(_1426)
                        mem[mem[64] + 68] = ext_call.return_data[0] / t
                        _1447 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1447 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1447 + 36 len 28]
                        mem[64] = _1446 + 164
                        mem[_1446 + 100] = 32
                        mem[_1446 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(arg1)):
                            revert with 0, 'Address: call to non-contract'
                        _1508 = mem[_1447]
                        s = 0
                        while s < _1508:
                            mem[s + _1446 + 164] = mem[s + _1447 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1508) > _1508:
                            mem[_1508 + _1446 + 164] = 0
                        call address(arg1).mem[_1446 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1446 + 168 len _1508 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1446 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1446 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1446 + 232] = mem[idx + _1446 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1446 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _1446 + ceil32(return_data.size) + 165
                            mem[_1446 + 164] = return_data.size
                            mem[_1446 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1446 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1446 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1446 + ceil32(return_data.size) + 233] = mem[idx + _1446 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1446 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1446 + 196] == bool(mem[_1446 + 196])
                                if not mem[_1446 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _1426
                    continue 
            else:
                require return_data.size >= 32
                require mem[_120 + 196] == bool(mem[_120 + 196])
                if not mem[_120 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_120 + ceil32(return_data.size) + 169] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_120 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _120 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                require return_data.size >= 32
                if not t:
                    revert with 0, 18
                idx = 0
                u = s
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(nFTContractAddress)
                    staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1411 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1427 = mem[_1411]
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
                        _1449 = mem[64]
                        mem[mem[64] + 36] = address(_1427)
                        mem[mem[64] + 68] = ext_call.return_data[0] / t
                        _1450 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1450 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1450 + 36 len 28]
                        mem[64] = _1449 + 164
                        mem[_1449 + 100] = 32
                        mem[_1449 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(arg1)):
                            revert with 0, 'Address: call to non-contract'
                        _1510 = mem[_1450]
                        s = 0
                        while s < _1510:
                            mem[s + _1449 + 164] = mem[s + _1450 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1510) > _1510:
                            mem[_1510 + _1449 + 164] = 0
                        call address(arg1).mem[_1449 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1449 + 168 len _1510 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1449 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1449 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1449 + 232] = mem[idx + _1449 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1449 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _1449 + ceil32(return_data.size) + 165
                            mem[_1449 + 164] = return_data.size
                            mem[_1449 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1449 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1449 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1449 + ceil32(return_data.size) + 233] = mem[idx + _1449 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1449 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1449 + 196] == bool(mem[_1449 + 196])
                                if not mem[_1449 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _1427
                    continue 
    else:
        mem[_128 + _120 + 164] = 0
        call address(arg1) with:
             gas gas_remaining wei
            args mem[_120 + 168 len _128 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if not mem[96]:
                mem[_120 + 168] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_120 + 164] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _120 + ceil32(return_data.size) + 164
                require return_data.size >= 32
                if not t:
                    revert with 0, 18
                idx = 0
                u = s
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(nFTContractAddress)
                    staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
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
                        _1452 = mem[64]
                        mem[mem[64] + 36] = address(_1428)
                        mem[mem[64] + 68] = ext_call.return_data[0] / t
                        _1453 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1453 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1453 + 36 len 28]
                        mem[64] = _1452 + 164
                        mem[_1452 + 100] = 32
                        mem[_1452 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(arg1)):
                            revert with 0, 'Address: call to non-contract'
                        _1512 = mem[_1453]
                        s = 0
                        while s < _1512:
                            mem[s + _1452 + 164] = mem[s + _1453 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1512) > _1512:
                            mem[_1512 + _1452 + 164] = 0
                        call address(arg1).mem[_1452 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1452 + 168 len _1512 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1452 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1452 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1452 + 232] = mem[idx + _1452 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1452 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _1452 + ceil32(return_data.size) + 165
                            mem[_1452 + 164] = return_data.size
                            mem[_1452 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1452 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1452 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1452 + ceil32(return_data.size) + 233] = mem[idx + _1452 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1452 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1452 + 196] == bool(mem[_1452 + 196])
                                if not mem[_1452 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _1428
                    continue 
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_120 + 168] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_120 + 164] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _120 + ceil32(return_data.size) + 164
                require return_data.size >= 32
                if not t:
                    revert with 0, 18
                idx = 0
                u = s
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(nFTContractAddress)
                    staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
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
                        _1455 = mem[64]
                        mem[mem[64] + 36] = address(_1429)
                        mem[mem[64] + 68] = ext_call.return_data[0] / t
                        _1456 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1456 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1456 + 36 len 28]
                        mem[64] = _1455 + 164
                        mem[_1455 + 100] = 32
                        mem[_1455 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(arg1)):
                            revert with 0, 'Address: call to non-contract'
                        _1514 = mem[_1456]
                        s = 0
                        while s < _1514:
                            mem[s + _1455 + 164] = mem[s + _1456 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1514) > _1514:
                            mem[_1514 + _1455 + 164] = 0
                        call address(arg1).mem[_1455 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1455 + 168 len _1514 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1455 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1455 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1455 + 232] = mem[idx + _1455 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1455 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _1455 + ceil32(return_data.size) + 165
                            mem[_1455 + 164] = return_data.size
                            mem[_1455 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1455 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1455 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1455 + ceil32(return_data.size) + 233] = mem[idx + _1455 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1455 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1455 + 196] == bool(mem[_1455 + 196])
                                if not mem[_1455 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _1429
                    continue 
        else:
            mem[_120 + 164] = return_data.size
            mem[_120 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                mem[_120 + ceil32(return_data.size) + 169] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_120 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _120 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                require return_data.size >= 32
                if not t:
                    revert with 0, 18
                idx = 0
                u = s
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(nFTContractAddress)
                    staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1414 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1430 = mem[_1414]
                    require mem[_1414] == mem[_1414 + 12 len 20]
                    if uint32(ext_code.size(mem[_1414])):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = mem[_1414]
                        continue 
                    mem[0] = mem[_1414 + 12 len 20]
                    mem[32] = 206
                    if not stor206[mem[0]]:
                        _1458 = mem[64]
                        mem[mem[64] + 36] = address(_1430)
                        mem[mem[64] + 68] = ext_call.return_data[0] / t
                        _1459 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1459 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1459 + 36 len 28]
                        mem[64] = _1458 + 164
                        mem[_1458 + 100] = 32
                        mem[_1458 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(arg1)):
                            revert with 0, 'Address: call to non-contract'
                        _1516 = mem[_1459]
                        s = 0
                        while s < _1516:
                            mem[s + _1458 + 164] = mem[s + _1459 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1516) > _1516:
                            mem[_1516 + _1458 + 164] = 0
                        call address(arg1).mem[_1458 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1458 + 168 len _1516 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1458 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1458 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1458 + 232] = mem[idx + _1458 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1458 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _1458 + ceil32(return_data.size) + 165
                            mem[_1458 + 164] = return_data.size
                            mem[_1458 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1458 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1458 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1458 + ceil32(return_data.size) + 233] = mem[idx + _1458 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1458 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1458 + 196] == bool(mem[_1458 + 196])
                                if not mem[_1458 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _1430
                    continue 
            else:
                require return_data.size >= 32
                require mem[_120 + 196] == bool(mem[_120 + 196])
                if not mem[_120 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_120 + ceil32(return_data.size) + 169] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_120 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _120 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                require return_data.size >= 32
                if not t:
                    revert with 0, 18
                idx = 0
                u = s
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(nFTContractAddress)
                    staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1415 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1431 = mem[_1415]
                    require mem[_1415] == mem[_1415 + 12 len 20]
                    if uint32(ext_code.size(mem[_1415])):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = mem[_1415]
                        continue 
                    mem[0] = mem[_1415 + 12 len 20]
                    mem[32] = 206
                    if not stor206[mem[0]]:
                        _1461 = mem[64]
                        mem[mem[64] + 36] = address(_1431)
                        mem[mem[64] + 68] = ext_call.return_data[0] / t
                        _1462 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1462 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1462 + 36 len 28]
                        mem[64] = _1461 + 164
                        mem[_1461 + 100] = 32
                        mem[_1461 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(arg1)):
                            revert with 0, 'Address: call to non-contract'
                        _1518 = mem[_1462]
                        s = 0
                        while s < _1518:
                            mem[s + _1461 + 164] = mem[s + _1462 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1518) > _1518:
                            mem[_1518 + _1461 + 164] = 0
                        call address(arg1).mem[_1461 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1461 + 168 len _1518 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1461 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1461 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1461 + 232] = mem[idx + _1461 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1461 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _1461 + ceil32(return_data.size) + 165
                            mem[_1461 + 164] = return_data.size
                            mem[_1461 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1461 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1461 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1461 + ceil32(return_data.size) + 233] = mem[idx + _1461 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1461 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1461 + 196] == bool(mem[_1461 + 196])
                                if not mem[_1461 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _1431
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
                    require ext_code.size(nFTContractAddress)
                    staticcall nFTContractAddress.0x18160ddd with:
                            gas gas_remaining wei
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    require ext_code.size(nFTContractAddress)
                    staticcall nFTContractAddress.0x18160ddd with:
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
                        require ext_code.size(nFTContractAddress)
                        staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1523 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1523] == mem[_1523 + 12 len 20]
                        if uint32(ext_code.size(mem[_1523])):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        mem[0] = mem[_1523 + 12 len 20]
                        mem[32] = 206
                        if stor206[mem[0]]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        mem[0] = idx
                        mem[32] = 207
                        if stor207[idx]:
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
                    nFTContractAddress = address(arg1)
                if uint32(call.func_hash) >> 224 != unknown_0xbcb85b24(?????):
                    if unknown_0xe4bc7f98(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return 0
                    require unknown_0xed88c68e(?????) == uint32(call.func_hash) >> 224
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
                _5781 = mem[64]
                mem[mem[64] + 32] = 0x4d697373696e6720726f6c652000000000000000000000000000000000000000
                _5801 = mem[128]
                mem[mem[64] + 45 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                if ceil32(_5801) <= _5801:
                    _6338 = mem[64]
                    mem[mem[64]] = _5801 + 13
                    mem[64] = _5801 + mem[64] + 45
                    mem[_5801 + _5781 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5801 + _5781 + 49] = 32
                    _6344 = mem[_6338]
                    mem[_5801 + _5781 + 81] = mem[_6338]
                    mem[_5801 + _5781 + 113 len ceil32(_6344)] = mem[_6338 + 32 len ceil32(_6344)]
                    if ceil32(_6344) > _6344:
                        mem[_6344 + _5801 + _5781 + 113] = 0
                    revert with 0, 32, mem[_5801 + _5781 + 81 len ceil32(_6344) + 32]
                mem[_5801 + mem[64] + 45] = 0
                _6339 = mem[64]
                mem[mem[64]] = _5801 + 13
                mem[64] = _5801 + mem[64] + 45
                mem[_5801 + _5781 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_5801 + _5781 + 49] = 32
                _6345 = mem[_6339]
                mem[_5801 + _5781 + 81] = mem[_6339]
                mem[_5801 + _5781 + 113 len ceil32(_6345)] = mem[_6339 + 32 len ceil32(_6345)]
                if ceil32(_6345) > _6345:
                    mem[_6345 + _5801 + _5781 + 113] = 0
                revert with 0, 32, mem[_5801 + _5781 + 81 len ceil32(_6345) + 32]
            if unknown_0x862b50c2(?????) <= uint32(call.func_hash) >> 224:
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
                _5779 = mem[64]
                mem[mem[64] + 32] = 0x4d697373696e6720726f6c652000000000000000000000000000000000000000
                _5800 = mem[128]
                mem[mem[64] + 45 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                if ceil32(_5800) <= _5800:
                    _6336 = mem[64]
                    mem[mem[64]] = _5800 + 13
                    mem[64] = _5800 + mem[64] + 45
                    mem[_5800 + _5779 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5800 + _5779 + 49] = 32
                    _6342 = mem[_6336]
                    mem[_5800 + _5779 + 81] = mem[_6336]
                    mem[_5800 + _5779 + 113 len ceil32(_6342)] = mem[_6336 + 32 len ceil32(_6342)]
                    if ceil32(_6342) > _6342:
                        mem[_6342 + _5800 + _5779 + 113] = 0
                    revert with 0, 32, mem[_5800 + _5779 + 81 len ceil32(_6342) + 32]
                mem[_5800 + mem[64] + 45] = 0
                _6337 = mem[64]
                mem[mem[64]] = _5800 + 13
                mem[64] = _5800 + mem[64] + 45
                mem[_5800 + _5779 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_5800 + _5779 + 49] = 32
                _6343 = mem[_6337]
                mem[_5800 + _5779 + 81] = mem[_6337]
                mem[_5800 + _5779 + 113 len ceil32(_6343)] = mem[_6337 + 32 len ceil32(_6343)]
                if ceil32(_6343) > _6343:
                    mem[_6343 + _5800 + _5779 + 113] = 0
                revert with 0, 32, mem[_5800 + _5779 + 81 len ceil32(_6343) + 32]
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
                            _1539 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1539] = stor101[stor102[idx]].field_0
                            mem[_1539 + 32] = stor101[stor102[idx]].field_160
                            mem[_1539 + 64] = bool(stor101[stor102[idx]].field_192)
                            if idx >= mem[128]:
                                revert with 0, 50
                            mem[(32 * idx) + 160] = _1539
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _1480 = mem[64]
                    mem[mem[64]] = 32
                    _1510 = mem[128]
                    mem[mem[64] + 32] = mem[128]
                    idx = 0
                    s = 160
                    t = mem[64] + 64
                    while idx < _1510:
                        _3414 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_3414 + 60 len 4]
                        mem[t + 64] = bool(mem[_3414 + 64])
                        idx = idx + 1
                        s = s + 32
                        t = t + 96
                        continue 
                    return memory
                      from mem[64]
                       len _1480 + (96 * _1510) + -mem[64] + 64
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
                        _3506 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3506] = stor101[stor102[idx]].field_0
                        mem[_3506 + 32] = stor101[stor102[idx]].field_160
                        mem[_3506 + 64] = bool(stor101[stor102[idx]].field_192)
                        if idx >= mem[128]:
                            revert with 0, 50
                        mem[(32 * idx) + 160] = _3506
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _3429 = mem[64]
                mem[mem[64]] = 32
                _3433 = mem[128]
                mem[mem[64] + 32] = mem[128]
                idx = 0
                s = 160
                t = mem[64] + 64
                while idx < _3433:
                    _5022 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_5022 + 60 len 4]
                    mem[t + 64] = bool(mem[_5022 + 64])
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                return memory
                  from mem[64]
                   len _3429 + (96 * _3433) + -mem[64] + 64
            if uint32(call.func_hash) >> 224 != unknown_0x8129fc1c(?????):
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
                    call msg.sender with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require unknown_0x857abbd4(?????) == uint32(call.func_hash) >> 224
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
                    mem[132] = this.address
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 164] = msg.sender
                    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 128] = 68
                    mem[ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 228] = 32
                    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(arg1)):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                    mem[ceil32(return_data.size) + 360] = 0
                    call address(arg1) with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
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
            else:
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
                    sub_9f9ab26f = 0
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
                        sub_9f9ab26f = 0
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
                            sub_9f9ab26f = 0
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
                                sub_9f9ab26f = 0
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
                                    sub_9f9ab26f = 0
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
                                        sub_9f9ab26f = 0
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
                                            sub_9f9ab26f = 0
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
                                                sub_9f9ab26f = 0
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
                                                    sub_9f9ab26f = 0
                                                    uint256(stor205) = msg.sender or Mask(96, 160, uint256(stor205))
                                                else:
                                                    uint16(stor0.field_0) = 257
                                                    stor101[address(msg.sender)].field_0 = msg.sender
                                                    stor101[address(msg.sender)].field_160 = 1000
                                                    stor101[address(msg.sender)].field_176 = 0
                                                    stor101[address(msg.sender)].field_192 = 1
                                                    stor102.length++
                                                    stor4650[stor102.length] = msg.sender
                                                    sub_9f9ab26f = 0
                                                    uint256(stor205) = msg.sender or Mask(96, 160, uint256(stor205))
                                                    uint8(stor0.field_8) = 0
                                                    uint8(stor0.field_8) = 0
        else:
            if unknown_0x3659cfe6(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x52ecfc3d(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x52ecfc3d(?????) == uint32(call.func_hash) >> 224:
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
                        stor207[arg1] = 0
                    else:
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
                    if unknown_0x3659cfe6(?????) == uint32(call.func_hash) >> 224:
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
                        if unknown_0x372500ab(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require ext_code.size(nFTContractAddress)
                            staticcall nFTContractAddress.0x18160ddd with:
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
                                require ext_code.size(nFTContractAddress)
                                staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1503 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1559 = mem[_1503]
                                require mem[_1503] == mem[_1503 + 12 len 20]
                                if uint32(ext_code.size(mem[_1503])):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = mem[_1503]
                                    t = t
                                    continue 
                                mem[0] = mem[_1503 + 12 len 20]
                                mem[32] = 206
                                if stor206[mem[0]]:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = _1559
                                    t = t
                                    continue 
                                mem[0] = idx
                                mem[32] = 207
                                if stor207[idx]:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = _1559
                                    t = t
                                    continue 
                                if t == -1:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1559
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
                                require ext_code.size(nFTContractAddress)
                                staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3432 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3548 = mem[_3432]
                                require mem[_3432] == mem[_3432 + 12 len 20]
                                if uint32(ext_code.size(mem[_3432])):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    u = mem[_3432]
                                    continue 
                                mem[0] = mem[_3432 + 12 len 20]
                                mem[32] = 206
                                if not stor206[mem[0]]:
                                    call address(_3548) with:
                                       value eth.balance(this.address) / t wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _3548
                                continue 
                        else:
                            if unknown_0x41566585(?????) == uint32(call.func_hash) >> 224:
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
                                require unknown_0x4f1ef286(?????) == uint32(call.func_hash) >> 224
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
                                    mem[arg2.length + ceil32(ceil32(arg2.length)) + 129] = 0
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
                if unknown_0x1dede107(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x1dede107(?????) == uint32(call.func_hash) >> 224:
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
                        stor207[arg1] = 1
                    if uint32(call.func_hash) >> 224 != unknown_0x284299b8(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x2c3eafc1(?????):
                            require unknown_0x31c2273b(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return nFTContractAddress
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
                        _5777 = mem[64]
                        mem[mem[64] + 32] = 0x4d697373696e6720726f6c652000000000000000000000000000000000000000
                        _5799 = mem[128]
                        mem[mem[64] + 45 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                        if ceil32(_5799) <= _5799:
                            _6334 = mem[64]
                            mem[mem[64]] = _5799 + 13
                            mem[64] = _5799 + mem[64] + 45
                            mem[_5799 + _5777 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5799 + _5777 + 49] = 32
                            _6340 = mem[_6334]
                            mem[_5799 + _5777 + 81] = mem[_6334]
                            mem[_5799 + _5777 + 113 len ceil32(_6340)] = mem[_6334 + 32 len ceil32(_6340)]
                            if ceil32(_6340) > _6340:
                                mem[_6340 + _5799 + _5777 + 113] = 0
                            revert with 0, 32, mem[_5799 + _5777 + 81 len ceil32(_6340) + 32]
                        mem[_5799 + mem[64] + 45] = 0
                        _6335 = mem[64]
                        mem[mem[64]] = _5799 + 13
                        mem[64] = _5799 + mem[64] + 45
                        mem[_5799 + _5777 + 45] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5799 + _5777 + 49] = 32
                        _6341 = mem[_6335]
                        mem[_5799 + _5777 + 81] = mem[_6335]
                        mem[_5799 + _5777 + 113 len ceil32(_6341)] = mem[_6335 + 32 len ceil32(_6341)]
                        if ceil32(_6341) > _6341:
                            mem[_6341 + _5799 + _5777 + 113] = 0
                        revert with 0, 32, mem[_5799 + _5777 + 81 len ceil32(_6341) + 32]
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    require ext_code.size(nFTContractAddress)
                    staticcall nFTContractAddress.0x18160ddd with:
                            gas gas_remaining wei
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return 0
                    require ext_code.size(nFTContractAddress)
                    staticcall nFTContractAddress.0x18160ddd with:
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
                        require ext_code.size(nFTContractAddress)
                        staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1500 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1500] == mem[_1500 + 12 len 20]
                        if uint32(ext_code.size(mem[_1500])):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        mem[0] = mem[_1500 + 12 len 20]
                        mem[32] = 206
                        if stor206[mem[0]]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        mem[0] = idx
                        mem[32] = 207
                        if stor207[idx]:
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
                    _1499 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1551 = mem[_1499]
                    if mem[_1499] and sub_9f9ab26f > -1 / mem[_1499]:
                        revert with 0, 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1849 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1849] < _1551 * sub_9f9ab26f / 1000:
                        revert with 0, 17
                    if not s:
                        revert with 0, 18
                    mem[mem[64]] = mem[_1849] - (_1551 * sub_9f9ab26f / 1000) / s
                    return memory
                      from mem[64]
                       len 32
                if supportsInterface(bytes4 arg1) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == Mask(32, 224, arg1)
                    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
                if unknown_0x07732927(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return address(sub_07732927Address)
                if uint32(call.func_hash) >> 224 != unknown_0x0d9ac480(?????):
                    require unknown_0x16279055(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return bool(uint32(ext_code.size(arg1)))
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                require ext_code.size(nFTContractAddress)
                staticcall nFTContractAddress.0x18160ddd with:
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
                    require ext_code.size(nFTContractAddress)
                    staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1496 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1550 = mem[_1496]
                    require mem[_1496] == mem[_1496 + 12 len 20]
                    if uint32(ext_code.size(mem[_1496])):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_1496]
                        t = t
                        continue 
                    mem[0] = mem[_1496 + 12 len 20]
                    mem[32] = 206
                    if stor206[mem[0]]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1550
                        t = t
                        continue 
                    mem[0] = idx
                    mem[32] = 207
                    if stor207[idx]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1550
                        t = t
                        continue 
                    if t == -1:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1550
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
                _1495 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1549 = mem[_1495]
                if mem[_1495] and sub_9f9ab26f > -1 / mem[_1495]:
                    revert with 0, 17
                _1771 = mem[64]
                mem[mem[64] + 36] = address(sub_07732927Address)
                mem[mem[64] + 68] = _1549 * sub_9f9ab26f / 1000
                _1772 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1771 + 100] = 32
                mem[_1771 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg1)):
                    revert with 0, 'Address: call to non-contract'
                _2039 = mem[_1772]
                mem[_1771 + 164 len ceil32(mem[_1772])] = mem[_1772 + 32 len ceil32(mem[_1772])]
                if ceil32(_2039) <= _2039:
                    call address(arg1) with:
                         gas gas_remaining wei
                        args mem[_1771 + 168 len _2039 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            mem[_1771 + 168] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[_1771 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1771 + ceil32(return_data.size) + 164
                            require return_data.size >= 32
                            if not t:
                                revert with 0, 18
                            idx = 0
                            u = s
                            while idx < ext_call.return_data[0]:
                                mem[mem[64] + 4] = idx
                                require ext_code.size(nFTContractAddress)
                                staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5039 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5207 = mem[_5039]
                                require mem[_5039] == mem[_5039 + 12 len 20]
                                if uint32(ext_code.size(mem[_5039])):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    u = mem[_5039]
                                    continue 
                                mem[0] = mem[_5039 + 12 len 20]
                                mem[32] = 206
                                if not stor206[mem[0]]:
                                    _5241 = mem[64]
                                    mem[mem[64] + 36] = address(_5207)
                                    mem[mem[64] + 68] = ext_call.return_data[0] / t
                                    _5242 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5242 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5242 + 36 len 28]
                                    mem[64] = _5241 + 164
                                    mem[_5241 + 100] = 32
                                    mem[_5241 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(address(arg1)):
                                        revert with 0, 'Address: call to non-contract'
                                    _5323 = mem[_5242]
                                    s = 0
                                    while s < _5323:
                                        mem[s + _5241 + 164] = mem[s + _5242 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_5323) > _5323:
                                        mem[_5323 + _5241 + 164] = 0
                                    call address(arg1).mem[_5241 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_5241 + 168 len _5323 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_5241 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_5241 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _5241 + 232] = mem[idx + _5241 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_5241 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _5241 + ceil32(return_data.size) + 165
                                        mem[_5241 + 164] = return_data.size
                                        mem[_5241 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_5241 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_5241 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _5241 + ceil32(return_data.size) + 233] = mem[idx + _5241 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_5241 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_5241 + 196] == bool(mem[_5241 + 196])
                                            if not mem[_5241 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _5207
                                continue 
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_1771 + 168] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[_1771 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1771 + ceil32(return_data.size) + 164
                            require return_data.size >= 32
                            if not t:
                                revert with 0, 18
                            idx = 0
                            u = s
                            while idx < ext_call.return_data[0]:
                                mem[mem[64] + 4] = idx
                                require ext_code.size(nFTContractAddress)
                                staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5040 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5208 = mem[_5040]
                                require mem[_5040] == mem[_5040 + 12 len 20]
                                if uint32(ext_code.size(mem[_5040])):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    u = mem[_5040]
                                    continue 
                                mem[0] = mem[_5040 + 12 len 20]
                                mem[32] = 206
                                if not stor206[mem[0]]:
                                    _5244 = mem[64]
                                    mem[mem[64] + 36] = address(_5208)
                                    mem[mem[64] + 68] = ext_call.return_data[0] / t
                                    _5245 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5245 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5245 + 36 len 28]
                                    mem[64] = _5244 + 164
                                    mem[_5244 + 100] = 32
                                    mem[_5244 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(address(arg1)):
                                        revert with 0, 'Address: call to non-contract'
                                    _5325 = mem[_5245]
                                    s = 0
                                    while s < _5325:
                                        mem[s + _5244 + 164] = mem[s + _5245 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_5325) > _5325:
                                        mem[_5325 + _5244 + 164] = 0
                                    call address(arg1).mem[_5244 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_5244 + 168 len _5325 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_5244 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_5244 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _5244 + 232] = mem[idx + _5244 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_5244 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _5244 + ceil32(return_data.size) + 165
                                        mem[_5244 + 164] = return_data.size
                                        mem[_5244 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_5244 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_5244 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _5244 + ceil32(return_data.size) + 233] = mem[idx + _5244 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_5244 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_5244 + 196] == bool(mem[_5244 + 196])
                                            if not mem[_5244 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _5208
                                continue 
                    else:
                        mem[_1771 + 164] = return_data.size
                        mem[_1771 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            mem[_1771 + ceil32(return_data.size) + 169] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[_1771 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1771 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                            require return_data.size >= 32
                            if not t:
                                revert with 0, 18
                            idx = 0
                            u = s
                            while idx < ext_call.return_data[0]:
                                mem[mem[64] + 4] = idx
                                require ext_code.size(nFTContractAddress)
                                staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5041 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5209 = mem[_5041]
                                require mem[_5041] == mem[_5041 + 12 len 20]
                                if uint32(ext_code.size(mem[_5041])):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    u = mem[_5041]
                                    continue 
                                mem[0] = mem[_5041 + 12 len 20]
                                mem[32] = 206
                                if not stor206[mem[0]]:
                                    _5247 = mem[64]
                                    mem[mem[64] + 36] = address(_5209)
                                    mem[mem[64] + 68] = ext_call.return_data[0] / t
                                    _5248 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5248 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5248 + 36 len 28]
                                    mem[64] = _5247 + 164
                                    mem[_5247 + 100] = 32
                                    mem[_5247 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(address(arg1)):
                                        revert with 0, 'Address: call to non-contract'
                                    _5327 = mem[_5248]
                                    s = 0
                                    while s < _5327:
                                        mem[s + _5247 + 164] = mem[s + _5248 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_5327) > _5327:
                                        mem[_5327 + _5247 + 164] = 0
                                    call address(arg1).mem[_5247 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_5247 + 168 len _5327 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_5247 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_5247 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _5247 + 232] = mem[idx + _5247 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_5247 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _5247 + ceil32(return_data.size) + 165
                                        mem[_5247 + 164] = return_data.size
                                        mem[_5247 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_5247 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_5247 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _5247 + ceil32(return_data.size) + 233] = mem[idx + _5247 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_5247 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_5247 + 196] == bool(mem[_5247 + 196])
                                            if not mem[_5247 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _5209
                                continue 
                        else:
                            require return_data.size >= 32
                            require mem[_1771 + 196] == bool(mem[_1771 + 196])
                            if not mem[_1771 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_1771 + ceil32(return_data.size) + 169] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[_1771 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1771 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                            require return_data.size >= 32
                            if not t:
                                revert with 0, 18
                            idx = 0
                            u = s
                            while idx < ext_call.return_data[0]:
                                mem[mem[64] + 4] = idx
                                require ext_code.size(nFTContractAddress)
                                staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5042 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5210 = mem[_5042]
                                require mem[_5042] == mem[_5042 + 12 len 20]
                                if uint32(ext_code.size(mem[_5042])):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    u = mem[_5042]
                                    continue 
                                mem[0] = mem[_5042 + 12 len 20]
                                mem[32] = 206
                                if not stor206[mem[0]]:
                                    _5250 = mem[64]
                                    mem[mem[64] + 36] = address(_5210)
                                    mem[mem[64] + 68] = ext_call.return_data[0] / t
                                    _5251 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5251 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5251 + 36 len 28]
                                    mem[64] = _5250 + 164
                                    mem[_5250 + 100] = 32
                                    mem[_5250 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(address(arg1)):
                                        revert with 0, 'Address: call to non-contract'
                                    _5329 = mem[_5251]
                                    s = 0
                                    while s < _5329:
                                        mem[s + _5250 + 164] = mem[s + _5251 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_5329) > _5329:
                                        mem[_5329 + _5250 + 164] = 0
                                    call address(arg1).mem[_5250 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_5250 + 168 len _5329 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_5250 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_5250 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _5250 + 232] = mem[idx + _5250 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_5250 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _5250 + ceil32(return_data.size) + 165
                                        mem[_5250 + 164] = return_data.size
                                        mem[_5250 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_5250 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_5250 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _5250 + ceil32(return_data.size) + 233] = mem[idx + _5250 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_5250 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_5250 + 196] == bool(mem[_5250 + 196])
                                            if not mem[_5250 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _5210
                                continue 
                else:
                    mem[_2039 + _1771 + 164] = 0
                    call address(arg1) with:
                         gas gas_remaining wei
                        args mem[_1771 + 168 len _2039 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            mem[_1771 + 168] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[_1771 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1771 + ceil32(return_data.size) + 164
                            require return_data.size >= 32
                            if not t:
                                revert with 0, 18
                            idx = 0
                            u = s
                            while idx < ext_call.return_data[0]:
                                mem[mem[64] + 4] = idx
                                require ext_code.size(nFTContractAddress)
                                staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5043 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5211 = mem[_5043]
                                require mem[_5043] == mem[_5043 + 12 len 20]
                                if uint32(ext_code.size(mem[_5043])):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    u = mem[_5043]
                                    continue 
                                mem[0] = mem[_5043 + 12 len 20]
                                mem[32] = 206
                                if not stor206[mem[0]]:
                                    _5253 = mem[64]
                                    mem[mem[64] + 36] = address(_5211)
                                    mem[mem[64] + 68] = ext_call.return_data[0] / t
                                    _5254 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5254 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5254 + 36 len 28]
                                    mem[64] = _5253 + 164
                                    mem[_5253 + 100] = 32
                                    mem[_5253 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(address(arg1)):
                                        revert with 0, 'Address: call to non-contract'
                                    _5331 = mem[_5254]
                                    s = 0
                                    while s < _5331:
                                        mem[s + _5253 + 164] = mem[s + _5254 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_5331) > _5331:
                                        mem[_5331 + _5253 + 164] = 0
                                    call address(arg1).mem[_5253 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_5253 + 168 len _5331 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_5253 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_5253 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _5253 + 232] = mem[idx + _5253 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_5253 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _5253 + ceil32(return_data.size) + 165
                                        mem[_5253 + 164] = return_data.size
                                        mem[_5253 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_5253 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_5253 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _5253 + ceil32(return_data.size) + 233] = mem[idx + _5253 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_5253 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_5253 + 196] == bool(mem[_5253 + 196])
                                            if not mem[_5253 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _5211
                                continue 
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_1771 + 168] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[_1771 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1771 + ceil32(return_data.size) + 164
                            require return_data.size >= 32
                            if not t:
                                revert with 0, 18
                            idx = 0
                            u = s
                            while idx < ext_call.return_data[0]:
                                mem[mem[64] + 4] = idx
                                require ext_code.size(nFTContractAddress)
                                staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5044 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5212 = mem[_5044]
                                require mem[_5044] == mem[_5044 + 12 len 20]
                                if uint32(ext_code.size(mem[_5044])):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    u = mem[_5044]
                                    continue 
                                mem[0] = mem[_5044 + 12 len 20]
                                mem[32] = 206
                                if not stor206[mem[0]]:
                                    _5256 = mem[64]
                                    mem[mem[64] + 36] = address(_5212)
                                    mem[mem[64] + 68] = ext_call.return_data[0] / t
                                    _5257 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5257 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5257 + 36 len 28]
                                    mem[64] = _5256 + 164
                                    mem[_5256 + 100] = 32
                                    mem[_5256 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(address(arg1)):
                                        revert with 0, 'Address: call to non-contract'
                                    _5333 = mem[_5257]
                                    s = 0
                                    while s < _5333:
                                        mem[s + _5256 + 164] = mem[s + _5257 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_5333) > _5333:
                                        mem[_5333 + _5256 + 164] = 0
                                    call address(arg1).mem[_5256 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_5256 + 168 len _5333 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_5256 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_5256 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _5256 + 232] = mem[idx + _5256 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_5256 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _5256 + ceil32(return_data.size) + 165
                                        mem[_5256 + 164] = return_data.size
                                        mem[_5256 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_5256 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_5256 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _5256 + ceil32(return_data.size) + 233] = mem[idx + _5256 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_5256 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_5256 + 196] == bool(mem[_5256 + 196])
                                            if not mem[_5256 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _5212
                                continue 
                    else:
                        mem[_1771 + 164] = return_data.size
                        mem[_1771 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            mem[_1771 + ceil32(return_data.size) + 169] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[_1771 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1771 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                            require return_data.size >= 32
                            if not t:
                                revert with 0, 18
                            idx = 0
                            u = s
                            while idx < ext_call.return_data[0]:
                                mem[mem[64] + 4] = idx
                                require ext_code.size(nFTContractAddress)
                                staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5045 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5213 = mem[_5045]
                                require mem[_5045] == mem[_5045 + 12 len 20]
                                if uint32(ext_code.size(mem[_5045])):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    u = mem[_5045]
                                    continue 
                                mem[0] = mem[_5045 + 12 len 20]
                                mem[32] = 206
                                if not stor206[mem[0]]:
                                    _5259 = mem[64]
                                    mem[mem[64] + 36] = address(_5213)
                                    mem[mem[64] + 68] = ext_call.return_data[0] / t
                                    _5260 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5260 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5260 + 36 len 28]
                                    mem[64] = _5259 + 164
                                    mem[_5259 + 100] = 32
                                    mem[_5259 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(address(arg1)):
                                        revert with 0, 'Address: call to non-contract'
                                    _5335 = mem[_5260]
                                    s = 0
                                    while s < _5335:
                                        mem[s + _5259 + 164] = mem[s + _5260 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_5335) > _5335:
                                        mem[_5335 + _5259 + 164] = 0
                                    call address(arg1).mem[_5259 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_5259 + 168 len _5335 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_5259 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_5259 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _5259 + 232] = mem[idx + _5259 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_5259 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _5259 + ceil32(return_data.size) + 165
                                        mem[_5259 + 164] = return_data.size
                                        mem[_5259 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_5259 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_5259 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _5259 + ceil32(return_data.size) + 233] = mem[idx + _5259 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_5259 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_5259 + 196] == bool(mem[_5259 + 196])
                                            if not mem[_5259 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _5213
                                continue 
                        else:
                            require return_data.size >= 32
                            require mem[_1771 + 196] == bool(mem[_1771 + 196])
                            if not mem[_1771 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_1771 + ceil32(return_data.size) + 169] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[_1771 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1771 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                            require return_data.size >= 32
                            if not t:
                                revert with 0, 18
                            idx = 0
                            u = s
                            while idx < ext_call.return_data[0]:
                                mem[mem[64] + 4] = idx
                                require ext_code.size(nFTContractAddress)
                                staticcall nFTContractAddress.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5046 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5214 = mem[_5046]
                                require mem[_5046] == mem[_5046 + 12 len 20]
                                if uint32(ext_code.size(mem[_5046])):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    u = mem[_5046]
                                    continue 
                                mem[0] = mem[_5046 + 12 len 20]
                                mem[32] = 206
                                if not stor206[mem[0]]:
                                    _5262 = mem[64]
                                    mem[mem[64] + 36] = address(_5214)
                                    mem[mem[64] + 68] = ext_call.return_data[0] / t
                                    _5263 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5263 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5263 + 36 len 28]
                                    mem[64] = _5262 + 164
                                    mem[_5262 + 100] = 32
                                    mem[_5262 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(address(arg1)):
                                        revert with 0, 'Address: call to non-contract'
                                    _5337 = mem[_5263]
                                    s = 0
                                    while s < _5337:
                                        mem[s + _5262 + 164] = mem[s + _5263 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_5337) > _5337:
                                        mem[_5337 + _5262 + 164] = 0
                                    call address(arg1).mem[_5262 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_5262 + 168 len _5337 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_5262 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_5262 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _5262 + 232] = mem[idx + _5262 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_5262 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _5262 + ceil32(return_data.size) + 165
                                        mem[_5262 + 164] = return_data.size
                                        mem[_5262 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_5262 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_5262 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _5262 + ceil32(return_data.size) + 233] = mem[idx + _5262 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_5262 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_5262 + 196] == bool(mem[_5262 + 196])
                                            if not mem[_5262 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _5214
                                continue 
}



}
